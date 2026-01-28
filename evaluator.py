import json
import os
import re
import subprocess
import ast

def python_to_c_arg(node):
    """
    将 Python 的 AST 节点转换为 C 语言代码和对应的寄存器占用数量
    """
    if isinstance(node, ast.Constant):
        val = node.value
        if isinstance(val, str):
            return {"code": f'"{val}"', "type": "ptr", "regs": 1}
        if isinstance(val, bool):
            return {"code": "1" if val else "0", "type": "int", "regs": 1}
        return {"code": str(val), "type": "num", "regs": 1}
    
    if isinstance(node, ast.List):
        # 处理 List[int/float] 为 C 数组
        # 按照汇编惯例：x0 = 数组指针, x1 = 数组长度
        elements = [str(n.value) if isinstance(n, ast.Constant) else "0" for n in node.elts]
        if not elements:
            return {"code": "NULL, 0", "type": "array", "regs": 2}
        array_content = "{" + ", ".join(elements) + "}"
        return {"code": array_content, "len": len(elements), "type": "array", "regs": 2}
    
    return {"code": "0", "type": "unknown", "regs": 1}

def generate_harness(task_id, entry_point, test_code):
    """
    解析 test 字符串，动态生成 C 代码
    """
    # 提取 test 字段中所有的 assert candidate(...) == ...
    # 使用正则匹配 candidate 调用及其预期的结果
    pattern = rf"assert {entry_point}\((.*?)\)\s*==\s*(.*)"
    matches = re.findall(pattern, test_code)
    
    test_cases_c = ""
    for i, (args_raw, expected_raw) in enumerate(matches):
        # 1. 解析参数
        try:
            # 包装成 tuple 进行解析以支持多参数
            parsed_args = ast.parse(f"({args_raw})").body[0].value.elts
        except:
            parsed_args = [ast.parse(args_raw).body[0].value]

        c_setup = f"    // Test Case {i}\n    {{\n"
        call_params = []
        
        for idx, arg_node in enumerate(parsed_args):
            info = python_to_c_arg(arg_node)
            if info["type"] == "array":
                c_setup += f"        double arr_{i}_{idx}[] = {info['code']};\n"
                call_params.append(f"(uintptr_t)arr_{i}_{idx}")
                call_params.append(str(info["len"]))
            else:
                call_params.append(info["code"])

        # 2. 补齐 ARM64 寄存器到 8 个，防止汇编读取越界
        while len(call_params) < 8:
            call_params.append("0")

        expected_val = expected_raw.strip()
        if expected_val == "True": expected_val = "1"
        elif expected_val == "False": expected_val = "0"

        c_test = f"{c_setup}        if (func0({', '.join(call_params)}) != (uintptr_t){expected_val}) return {i+1};\n    }}\n"
        test_cases_c += c_test

    return f"""
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

// 统一函数名 _func0 (C 语言中调用不带下划线，汇编标记带下划线)
extern uintptr_t func0(uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t, uintptr_t);

int main() {{
{test_cases_c}
    printf("SUCCESS\\n");
    return 0;
}}
"""
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