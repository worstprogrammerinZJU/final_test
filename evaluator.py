import os
import subprocess
import csv
import re

def analyze_signature(asm_content):
    """
    通过扫描汇编指令，预测函数类型，以便在日志中标记
    """
    if "malloc" in asm_content.lower():
        return "TYPE_MALLOC_DATA"
    if "l_.str" in asm_content:
        return "TYPE_STRING_LOGIC"
    return "TYPE_GENERAL"

def run_evaluation():
    asm_dir = "./generated_asm"
    harness = "test_harness.c"
    results = []

    if not os.path.exists(asm_dir):
        print(f"Error: {asm_dir} not found.")
        return

    # 获取所有 .s 文件
    files = sorted([f for f in os.listdir(asm_dir) if f.endswith(".s")])

    for filename in files:
        asm_path = os.path.join(asm_dir, filename)
        
        # 探测签名类型
        with open(asm_path, 'r', encoding='utf-8') as f:
            content = f.read()
        sig_type = analyze_signature(content)

        exe_name = f"./test_{filename}.out"
        
        # 编译命令优化：
        # 1. -arch arm64 指定架构
        # 2. -fsanitize=address 开启地址扫描（非常重要，能变 Error 为具体 log）
        # 3. -lc 强制链接 C 标准库（解决 _malloc 找不到的问题）
        compile_cmd = (
            f"clang -arch arm64 -O0 -g "
            f"-fsanitize=address " 
            f"\"{harness}\" \"{asm_path}\" "
            f"-o {exe_name} -lm -lc"
        )
        
        print(f"Compiling {filename}...", end=" ")
        cp = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)

        res = {"file": filename, "type": sig_type, "compile": "FAIL", "run": "SKIP", "error_log": ""}

        if cp.returncode == 0:
            res["compile"] = "OK"
            try:
                # 运行测试，增加超时保护
                rp = subprocess.run(exe_name, shell=True, capture_output=True, text=True, timeout=2.0)
                if rp.returncode == 0:
                    res["run"] = "OK"
                    print("RUN OK")
                else:
                    res["run"] = f"CRASH({rp.returncode})"
                    res["error_log"] = rp.stderr
                    print(f"CRASH: {rp.returncode}")
            except subprocess.TimeoutExpired:
                res["run"] = "TIMEOUT"
                print("TIMEOUT")
        else:
            res["error_log"] = cp.stderr
            print("COMPILE ERROR")

        results.append(res)

        # 清理二进制文件
        if os.path.exists(exe_name):
            os.remove(exe_name)

    # 保存 CSV 报告
    with open("detailed_report.csv", "w", newline="", encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=["file", "type", "compile", "run", "error_log"])
        writer.writeheader()
        writer.writerows(results)

if __name__ == "__main__":
    run_evaluation()