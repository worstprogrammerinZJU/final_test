import os
import subprocess
import csv

def run_evaluation():
    asm_dir = "./generated_asm"
    harness = "test_harness.c"
    results = []
    
    # 统计计数器
    stats = {
        "total": 0,
        "compile_ok": 0,
        "run_ok": 0,
        "timeout": 0,
        "crash": 0
    }

    if not os.path.exists(asm_dir):
        print(f"Error: {asm_dir} not found.")
        return

    files = sorted([f for f in os.listdir(asm_dir) if f.endswith(".s")])
    stats["total"] = len(files)

    print(f"{'FILENAME':<30} | {'COMPILE':<8} | {'RUN':<8}")
    print("-" * 52)

    for filename in files:
        asm_path = os.path.join(asm_dir, filename)
        exe_name = f"./exe_{filename}.out"
        
        # 极限编译配置：不改动.s，链接标准库，不加ASAN干扰
        compile_cmd = f"clang -arch arm64 -O0 \"{harness}\" \"{asm_path}\" -o {exe_name} -lm -lc"
        
        cp = subprocess.run(compile_cmd, shell=True, capture_output=True)
        
        row = {"file": filename, "compile": "FAIL", "run": "SKIP"}

        if cp.returncode == 0:
            row["compile"] = "OK"
            stats["compile_ok"] += 1
            try:
                # 运行测试，增加容错
                rp = subprocess.run(exe_name, shell=True, capture_output=True, timeout=1.5)
                
                if rp.returncode == 0:
                    row["run"] = "OK"
                    stats["run_ok"] += 1
                else:
                    row["run"] = f"ERR_{rp.returncode}"
                    stats["crash"] += 1
            except subprocess.TimeoutExpired:
                row["run"] = "TIMEOUT"
                stats["timeout"] += 1
        else:
            stats["crash"] += 1 # 编译失败也计入广义未跑通

        print(f"{filename:<30} | {row['compile']:<8} | {row['run']:<8}")
        results.append(row)
        
        if os.path.exists(exe_name):
            os.remove(exe_name)

    # 保存 CSV
    with open("detailed_report.csv", "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["file", "compile", "run"])
        writer.writeheader()
        writer.writerows(results)

    # --- 打印统计摘要 ---
    print("\n" + "="*30)
    print("      EVALUATION SUMMARY")
    print("="*30)
    print(f"Total ASM Files:  {stats['total']}")
    print(f"Compile Success:  {stats['compile_ok']} ({stats['compile_ok']/stats['total']*100:.1f}%)")
    print(f"Execute Success:  {stats['run_ok']} ({stats['run_ok']/stats['total']*100:.1f}%)")
    print(f"Crashes/Other:    {stats['crash']}")
    print(f"Timeouts:         {stats['timeout']}")
    print("="*30)

if __name__ == "__main__":
    run_evaluation()