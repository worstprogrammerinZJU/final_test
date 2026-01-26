import os
import subprocess
import csv

def analyze_signature(asm_content):
    """
    静态分析汇编特征：识别 malloc、浮点寄存器等
    """
    # 识别是否调用了 malloc
    if "bl _malloc" in asm_content or "bl malloc" in asm_content:
        return "TYPE_MALLOC"
    
    # 识别是否使用了浮点寄存器 (s0-s7, d0-d7)
    if any(f" {r}" in asm_content for r in ["s0", "s1", "d0", "d1"]):
        return "TYPE_FLOAT"
    
    return "TYPE_GENERAL"

def run_smart_evaluation():
    asm_dir = "./generated_asm"
    harness = "test_harness.c"
    results = []

    files = sorted([f for f in os.listdir(asm_dir) if f.endswith(".s")])
    
    print(f"{'FILE':<25} | {'DETECTED TYPE':<15} | {'COMPILE':<8} | {'RUN':<8}")
    print("-" * 65)

    for filename in files:
        asm_path = os.path.join(asm_dir, filename)
        with open(asm_path, 'r') as f:
            content = f.read()
        
        # 1. 智能识别参数类型
        sig_type = analyze_signature(content)
        
        exe_name = f"./temp_{filename}.out"
        status = {"file": filename, "type": sig_type, "compile": "FAIL", "run": "SKIP"}

        # 2. 编译：通过 -D 传入宏定义，切换 C 驱动的参数库
        # 加入 -lm 处理可能的数学函数
        compile_cmd = f"clang -arch arm64 -O0 -D{sig_type} {harness} {asm_path} -o {exe_name} -lm"
        cp = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)

        if cp.returncode == 0:
            status["compile"] = "OK"
            # 3. 运行探测 (2秒超时)
            try:
                rp = subprocess.run(exe_name, shell=True, capture_output=True, text=True, timeout=2)
                status["run"] = "OK" if rp.returncode == 0 else f"ERR({rp.returncode})"
            except subprocess.TimeoutExpired:
                status["run"] = "TIMEOUT"
        else:
            status.update({"compile": "FAIL", "error": cp.stderr})

        print(f"{filename:<25} | {sig_type:<15} | {status['compile']:<8} | {status['run']:<8}")
        results.append(status)
        if os.path.exists(exe_name): os.remove(exe_name)

    # 保存报告
    with open("detailed_report.csv", "w") as f:
        writer = csv.DictWriter(f, fieldnames=["file", "type", "compile", "run", "error"])
        writer.writeheader()
        writer.writerows(results)

if __name__ == "__main__":
    run_smart_evaluation()