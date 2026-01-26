import os
import subprocess
import csv
import time

def analyze_signature(asm_content):
    """
    通过扫描汇编代码中的关键指令和寄存器来识别函数指纹
    """
    # 1. 识别 malloc 调用
    if "bl _malloc" in asm_content or "bl malloc" in asm_content:
        return "TYPE_MALLOC"
    
    # 2. 识别浮点指令或浮点寄存器
    # 检查单精度 s0-s7 或双精度 d0-d7
    float_indicators = ["fadd", "fsub", "fmul", "fdiv", "fcmp", "fcvt", "fabs", "s0", "d0"]
    if any(ind in asm_content.lower() for ind in float_indicators):
        return "TYPE_FLOAT"
    
    # 3. 默认为通用类型
    return "TYPE_GENERAL"

def run_evaluation():
    asm_dir = "./generated_asm"
    harness = "test_harness.c"
    output_csv = "detailed_results.csv"
    summary_txt = "quantitative_report.txt"
    
    if not os.path.exists(asm_dir):
        print(f"Error: Folder {asm_dir} not found!")
        return

    files = sorted([f for f in os.listdir(asm_dir) if f.endswith(".s")])
    stats = {"total": len(files), "compile_ok": 0, "run_ok": 0, "timeout": 0, "crash": 0}
    results = []

    print(f"{'FILE':<25} | {'TYPE':<12} | {'COMPILE':<8} | {'RUN':<8}")
    print("-" * 65)

    for filename in files:
        asm_path = os.path.join(asm_dir, filename)
        with open(asm_path, 'r') as f:
            asm_content = f.read()

        # 识别签名
        sig_type = analyze_signature(asm_content)
        exe_name = f"./temp_{filename}.out"
        
        row = {"file": filename, "type": sig_type, "compile": "FAIL", "run": "SKIP", "log": ""}

        # 1. 编译 (针对 macOS ARM64)
        # 加上 -lm 链接数学库
        compile_cmd = f"clang -arch arm64 -O0 -D{sig_type} {harness} {asm_path} -o {exe_name} -lm"
        cp = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)

        if cp.returncode == 0:
            row["compile"] = "OK"
            stats["compile_ok"] += 1
            
            # 2. 执行并监控超时
            try:
                # 1.5秒超时，防止死循环
                rp = subprocess.run(exe_name, shell=True, capture_output=True, text=True, timeout=1.5)
                if rp.returncode == 0:
                    row["run"] = "OK"
                    stats["run_ok"] += 1
                else:
                    row["run"] = f"CRASH({rp.returncode})"
                    stats["crash"] += 1
                    row["log"] = rp.stderr
            except subprocess.TimeoutExpired:
                row["run"] = "TIMEOUT"
                stats["timeout"] += 1
        else:
            row["log"] = cp.stderr

        print(f"{filename:<25} | {sig_type:<12} | {row['compile']:<8} | {row['run']:<8}")
        results.append(row)
        
        # 清理二进制文件
        if os.path.exists(exe_name): os.remove(exe_name)

    # 汇总并保存
    report = f"""
==================================================
        GG EVALUATION QUANTITATIVE REPORT
==================================================
TOTAL FILES      : {stats['total']}
COMPILE SUCCESS  : {stats['compile_ok']} ({(stats['compile_ok']/stats['total'])*100:.1f}%)
EXECUTE SUCCESS  : {stats['run_ok']} ({(stats['run_ok']/stats['total'])*100:.1f}%)
TIMEOUTS         : {stats['timeout']}
CRASHES          : {stats['crash']}
==================================================
    """
    print(report)
    with open(summary_txt, "w") as f: f.write(report)
    
    with open(output_csv, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["file", "type", "compile", "run", "log"])
        writer.writeheader()
        writer.writerows(results)

if __name__ == "__main__":
    run_evaluation()