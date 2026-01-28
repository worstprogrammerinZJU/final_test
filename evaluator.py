import json
import os
import re
import subprocess
import ast

# ... [保留你之前的 python_to_c_arg 和 generate_harness 函数不变] ...

def run_evaluation():
    with open("human-eval-v2-20210705.jsonl", 'r') as f:
        tasks = [json.loads(line) for line in f]
    
    asm_dir = "./generated_asm"
    if not os.path.exists(asm_dir):
        print(f"Error: Directory {asm_dir} not found.")
        return

    # 按编号排序 0.s, 1.s ...
    asm_files = sorted([f for f in os.listdir(asm_dir) if f.endswith(".s")], 
                       key=lambda x: int(re.search(r'\d+', x).group()))

    # --- 新增统计计数器 ---
    total_files = len(asm_files)
    passed_count = 0
    fail_count = 0
    crash_count = 0
    compile_error_count = 0

    print(f"开始评测: 共找到 {total_files} 个汇编文件\n" + "-"*50)

    for i, filename in enumerate(asm_files):
        # 确保索引不越界（如果 .s 文件比 json 记录多）
        if i >= len(tasks):
            break
            
        task = tasks[i]
        harness = generate_harness(task['task_id'], task['entry_point'], task['test'])
        
        with open("temp_harness.c", "w") as f:
            f.write(harness)
        
        asm_path = os.path.join(asm_dir, filename)
        compile_cmd = f"clang -arch arm64 temp_harness.c {asm_path} -o tester -lm"
        
        if subprocess.run(compile_cmd, shell=True, capture_output=True).returncode == 0:
            try:
                res = subprocess.run("./tester", capture_output=True, text=True, timeout=2)
                if "SUCCESS" in res.stdout:
                    print(f"Task {i:<3} ({filename:<10}): [OK]")
                    passed_count += 1
                else:
                    print(f"Task {i:<3} ({filename:<10}): [FAIL] at Case {res.returncode}")
                    fail_count += 1
            except subprocess.TimeoutExpired:
                print(f"Task {i:<3} ({filename:<10}): [TIMEOUT]")
                crash_count += 1
            except Exception:
                print(f"Task {i:<3} ({filename:<10}): [CRASH]")
                crash_count += 1
        else:
            print(f"Task {i:<3} ({filename:<10}): [COMPILE ERROR]")
            compile_error_count += 1

    # --- 新增结果统计输出 ---
    print("-" * 50)
    print("评测结束汇总:")
    print(f"总文件数: {total_files}")
    print(f"通过 (OK): {passed_count}")
    print(f"失败 (FAIL): {fail_count}")
    print(f"编译错误: {compile_error_count}")
    print(f"崩溃/超时: {crash_count}")
    
    if total_files > 0:
        pass_rate = (passed_count / total_files) * 100
        print(f"\n总通过率: {pass_rate:.2f}%")
    else:
        print("\n未发现可测试的汇编文件。")
    print("-" * 50)

    # 清理中间文件
    if os.path.exists("tester"): os.remove("tester")
    if os.path.exists("temp_harness.c"): os.remove("temp_harness.c")

if __name__ == "__main__":
    run_evaluation()