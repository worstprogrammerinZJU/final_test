import os
import subprocess
import csv
import signal

def analyze_signature(asm_content):
    """
    智能特征提取逻辑 - 严防遗漏
    """
    # 1. 优先识别多参数特征 (寻找 x2, x3 的存储操作)
    # 比如最新的汇编里出现的 stur x2, [x29, #-24] 或 str x3, [sp, #32]
    if ("x2" in asm_content and "x3" in asm_content) or ("[x29, #-24]" in asm_content):
        return "TYPE_MULTIPARAM"
    
    # 2. 识别 malloc 调用
    if "bl _malloc" in asm_content or "bl malloc" in asm_content:
        return "TYPE_MALLOC"
    
    # 3. 识别浮点特征
    float_inds = ["fadd", "fsub", "fcmp", "fcvt", "s0", "d0"]
    if any(ind in asm_content.lower() for ind in float_inds):
        return "TYPE_FLOAT"
    
    # 4. 默认通用
    return "TYPE_GENERAL"

def run_evaluation():
    asm_dir = "./generated_asm"
    harness = "test_harness.c"
    results = []
    
    # 确保保存路径
    if not os.path.exists(asm_dir): return

    files = sorted([f for f in os.listdir(asm_dir) if f.endswith(".s")])
    
    print(f"{'FILE':<25} | {'SIG_TYPE':<15} | {'COMPILE':<8} | {'RUN':<8}")
    print("-" * 70)

    for filename in files:
        asm_path = os.path.join(asm_dir, filename)
        with open(asm_path, 'r') as f:
            content = f.read()

        sig_type = analyze_signature(content)
        exe_name = f"./temp_{filename}.out"
        
        # 编译逻辑：保留 -arch arm64, -O0, -lm 
        compile_cmd = f"clang -arch arm64 -O0 -D{sig_type} {harness} {asm_path} -o {exe_name} -lm"
        cp = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)

        res = {"file": filename, "type": sig_type, "compile": "FAIL", "run": "SKIP", "log": ""}

        if cp.returncode == 0:
            res["compile"] = "OK"
            try:
                # 保留 1.5 秒超时保护，防止死循环卡死 GitHub
                rp = subprocess.run(exe_name, shell=True, capture_output=True, text=True, timeout=1.5)
                res["run"] = "OK" if rp.returncode == 0 else f"CRASH({rp.returncode})"
                res["log"] = rp.stderr
            except subprocess.TimeoutExpired:
                res["run"] = "TIMEOUT"
        else:
            res["log"] = cp.stderr

        print(f"{filename:<25} | {sig_type:<15} | {res['compile']:<8} | {res['run']:<8}")
        results.append(res)
        if os.path.exists(exe_name): os.remove(exe_name)

    # 结果导出逻辑 (CSV + JSON 方便之后分析)
    with open("detailed_report.csv", "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["file", "type", "compile", "run", "log"])
        writer.writeheader()
        writer.writerows(results)

if __name__ == "__main__":
    run_evaluation()