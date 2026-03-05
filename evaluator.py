#!/usr/bin/env python3
"""
直接评测脚本 - 只使用JSONL中的测试用例验证汇编代码
"""

import json
import os
import re
import subprocess
import sys
import ast
import tempfile
import time
import csv
from typing import List, Tuple, Optional, Dict, Any

def extract_test_number(task_id: str) -> int:
    """从任务ID中提取数字编号，如 HumanEval/0 -> 0"""
    match = re.search(r'/(\d+)$', task_id)
    return int(match.group(1)) if match else -1

def extract_asm_number(filename: str) -> int:
    """从汇编文件名中提取数字编号，如 problem1.s -> 1"""
    match = re.search(r'problem(\d+)\.s$', filename, re.IGNORECASE)
    return int(match.group(1)) if match else -1

def get_asm_function_name(asm_path: str) -> Optional[str]:
    """从汇编文件中提取函数名"""
    try:
        with open(asm_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # 查找.globl或.global声明的函数
        patterns = [
            r'\.(?:globl|global)\s+([a-zA-Z_][a-zA-Z0-9_]*)',
            r'^\s*([a-zA-Z_][a-zA-Z0-9_]*)\s*:',
        ]
        
        for pattern in patterns:
            matches = re.findall(pattern, content, re.MULTILINE)
            for match in matches:
                if match and not match.startswith(('.', 'L')):
                    return match
        
        return None
    except:
        return None

def parse_test_cases_directly(test_code: str) -> List[Tuple[str, str]]:
    """
    直接从测试代码中解析测试用例
    格式: assert candidate(...) == True/False
    """
    test_cases = []
    
    # 简单粗暴的解析：找到所有 assert candidate(...) == True/False
    pattern = r'assert candidate\s*\((.*?)\)\s*==\s*(True|False)'
    
    for line in test_code.strip().split('\n'):
        line = line.strip()
        if not line.startswith('assert'):
            continue
            
        match = re.search(pattern, line)
        if match:
            args = match.group(1)  # 参数部分
            expected = "1" if match.group(2) == "True" else "0"  # True->1, False->0
            test_cases.append((args, expected))
    
    return test_cases

def python_arg_to_c(arg_str: str) -> Dict[str, Any]:
    """
    将Python参数字符串转换为C代码
    处理简单的数组和数字
    """
    # 尝试解析为Python表达式
    try:
        # 解析为Python列表 [1.0, 2.0, ...]
        if arg_str.strip().startswith('['):
            # 提取数组元素
            elements = []
            # 简单的解析：移除方括号，按逗号分割
            content = arg_str.strip()[1:-1]  # 移除方括号
            for part in content.split(','):
                part = part.strip()
                if part:
                    try:
                        val = float(part)
                        elements.append(str(val))
                    except:
                        elements.append("0.0")
            
            if not elements:
                return {"code": "NULL", "type": "array", "len": 0}
            
            return {
                "code": "{" + ", ".join(elements) + "}",
                "type": "array", 
                "len": len(elements)
            }
        else:
            # 尝试解析为数字
            try:
                val = float(arg_str)
                return {"code": str(val), "type": "number"}
            except:
                return {"code": "0", "type": "unknown"}
    except:
        return {"code": "0", "type": "unknown"}

def generate_simple_test(asm_func: str, test_cases: List[Tuple[str, str]]) -> Optional[str]:
    """生成简单的C测试代码"""
    if not test_cases:
        return None
    
    test_blocks = []
    
    for i, (args_str, expected) in enumerate(test_cases):
        # 解析参数 - 假设格式: [数组], 阈值
        parts = [p.strip() for p in args_str.split(',')]
        
        c_code = []
        setup = []
        
        # 处理第一个参数（数组）
        if parts:
            arr_info = python_arg_to_c(parts[0])
            if arr_info["type"] == "array":
                arr_name = f"arr{i}"
                setup.append(f"    double {arr_name}[] = {arr_info['code']};")
                c_code.append(f"(uintptr_t){arr_name}")
                c_code.append(f"(uintptr_t){arr_info['len']}")
            else:
                c_code.append(f"(uintptr_t){arr_info['code']}")
                c_code.append(f"(uintptr_t)0")
        
        # 处理第二个参数（阈值）
        if len(parts) > 1:
            threshold_info = python_arg_to_c(parts[1])
            c_code.append(f"(uintptr_t){threshold_info['code']}")
        else:
            c_code.append("(uintptr_t)0")
        
        # 补全到8个参数
        while len(c_code) < 8:
            c_code.append("(uintptr_t)0")
        
        setup_code = "\n".join(setup)
        if setup_code:
            setup_code += "\n"
        
        test_block = f"""
    // Test {i}
    {{
{setup_code}    uintptr_t result = {asm_func}({', '.join(c_code)});
        if (result != (uintptr_t){expected}) {{
            printf("Test {i} FAIL: expected %lu, got %lu\\n", 
                   (uintptr_t){expected}, result);
            failures++;
        }}
    }}
        """
        test_blocks.append(test_block.strip())
    
    all_tests = "\n\n".join(test_blocks)
    
    c_code = f"""#include <stdio.h>
#include <stdint.h>
#include <math.h>

extern uintptr_t {asm_func}(
    uintptr_t, uintptr_t, uintptr_t, uintptr_t,
    uintptr_t, uintptr_t, uintptr_t, uintptr_t
);

int main() {{
    int failures = 0;
    
    printf("Testing {asm_func} with {len(test_cases)} test cases\\n");
    
{all_tests}
    
    if (failures == 0) {{
        printf("All tests PASSED\\n");
        return 0;
    }} else {{
        printf("%d tests FAILED\\n", failures);
        return 1;
    }}
}}
"""
    return c_code

def run_single_test(task_num: int, asm_file: str, jsonl_data: Dict[int, Dict]) -> Tuple[str, Optional[str]]:
    """运行单个测试"""
    asm_path = f"./generated_asm/{asm_file}"
    
    print(f"\n{'='*60}")
    print(f"Task {task_num}: {asm_file}")
    print(f"{'='*60}")
    
    # 检查文件
    if not os.path.exists(asm_path):
        print(f"  ❌ File not found: {asm_path}")
        return "file_not_found", None
    
    # 获取函数名
    func_name = get_asm_function_name(asm_path)
    if not func_name:
        print(f"  ❌ No function found in {asm_file}")
        return "no_function", None
    
    print(f"  Function: {func_name}")
    
    # 获取测试用例
    task = jsonl_data.get(task_num)
    if not task:
        print(f"  ❌ No test cases for task {task_num}")
        return "no_tests", func_name
    
    test_cases = parse_test_cases_directly(task.get('test', ''))
    if not test_cases:
        print(f"  ❌ Could not parse test cases")
        return "parse_error", func_name
    
    print(f"  Test cases: {len(test_cases)}")
    
    # 生成测试代码
    c_code = generate_simple_test(func_name, test_cases)
    if not c_code:
        print(f"  ❌ Failed to generate test code")
        return "codegen_error", func_name
    
    # 写入临时文件
    with tempfile.NamedTemporaryFile(mode='w', suffix='.c', delete=False, encoding='utf-8') as f:
        f.write(c_code)
        c_file = f.name
    
    # 编译
    compile_cmd = f"clang -arch arm64 -O0 {c_file} {asm_path} -o tester -lm"
    result = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)
    
    if result.returncode != 0:
        os.unlink(c_file)
        print(f"  🔨 Compile failed:")
        print(f"    {result.stderr[:200]}")
        return "compile_error", func_name
    
    os.unlink(c_file)
    
    # 运行
    try:
        run_result = subprocess.run("./tester", capture_output=True, text=True, timeout=5)
        
        # 显示输出
        if run_result.stdout:
            for line in run_result.stdout.strip().split('\n'):
                if line:
                    print(f"  {line}")
        
        if run_result.returncode == 0:
            print(f"  ✅ PASS")
            return "passed", func_name
        else:
            print(f"  ❌ FAIL (code: {run_result.returncode})")
            return "failed", func_name
            
    except subprocess.TimeoutExpired:
        print(f"  ⏰ Timeout")
        return "timeout", func_name
    except Exception as e:
        print(f"  💥 Crash: {e}")
        return "crash", func_name
    finally:
        if os.path.exists("./tester"):
            os.remove("./tester")

def main():
    """主函数"""
    print("🚀 Simple Assembly Evaluator")
    print("="*60)
    
    # 加载JSONL
    jsonl_file = "human-eval-v2-20210705.jsonl"
    if not os.path.exists(jsonl_file):
        print(f"❌ JSONL file not found: {jsonl_file}")
        return
    
    # 加载所有任务
    tasks_by_number = {}
    with open(jsonl_file, 'r', encoding='utf-8') as f:
        for line in f:
            try:
                task = json.loads(line)
                task_id = task.get('task_id', '')
                task_num = extract_test_number(task_id)
                if task_num >= 0:
                    tasks_by_number[task_num] = task
            except:
                continue
    
    print(f"Loaded {len(tasks_by_number)} tasks from JSONL")
    
    # 查找汇编文件
    asm_dir = "./generated_asm"
    if not os.path.exists(asm_dir):
        print(f"❌ Assembly directory not found: {asm_dir}")
        return
    
    asm_files = []
    for f in sorted(os.listdir(asm_dir)):
        if f.lower().endswith('.s'):
            asm_num = extract_asm_number(f)
            if asm_num >= 0:
                asm_files.append((asm_num, f))
    
    asm_files.sort(key=lambda x: x[0])
    print(f"Found {len(asm_files)} assembly files")
    
    if not asm_files:
        print("❌ No assembly files found")
        return
    
    # 统计
    stats = {
        "total": 0,
        "passed": 0,
        "failed": 0,
        "compile_error": 0,
        "timeout": 0,
        "crash": 0,
        "other_error": 0
    }
    
    results = []
    
    # 测试所有汇编文件
    for asm_num, asm_file in asm_files:
        stats["total"] += 1
        
        result, func_name = run_single_test(asm_num, asm_file, tasks_by_number)
        
        # 更新统计
        if result == "passed":
            stats["passed"] += 1
        elif result == "failed":
            stats["failed"] += 1
        elif result == "compile_error":
            stats["compile_error"] += 1
        elif result == "timeout":
            stats["timeout"] += 1
        elif result == "crash":
            stats["crash"] += 1
        else:
            stats["other_error"] += 1
        
        results.append({
            "task": asm_num,
            "file": asm_file,
            "function": func_name,
            "result": result
        })
    
    # 输出摘要
    print(f"\n{'='*60}")
    print("📊 FINAL RESULTS")
    print(f"{'='*60}")
    
    print(f"\nTotal tests: {stats['total']}")
    print(f"Passed:      {stats['passed']}")
    print(f"Failed:      {stats['failed']}")
    print(f"Compile err: {stats['compile_error']}")
    print(f"Timeout:     {stats['timeout']}")
    print(f"Crash:       {stats['crash']}")
    print(f"Other err:   {stats['other_error']}")
    
    if stats['total'] > 0:
        pass_rate = (stats['passed'] / stats['total']) * 100
        print(f"\nPass rate: {pass_rate:.1f}%")
        
        # 进度条
        bar_length = 40
        filled = int(pass_rate / 100 * bar_length)
        bar = "█" * filled + "░" * (bar_length - filled)
        print(f"[{bar}] {pass_rate:.1f}%")
    
    # 保存CSV报告
    csv_file = "simple_report.csv"
    with open(csv_file, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(["Task", "File", "Function", "Result"])
        for r in results:
            writer.writerow([r["task"], r["file"], r["function"], r["result"]])
    
    print(f"\n📄 Report saved to: {csv_file}")
    
    # 显示失败的任务
    failed = [r for r in results if r["result"] != "passed"]
    if failed:
        print(f"\n❌ Failed tasks ({len(failed)}):")
        for r in failed[:10]:
            print(f"  Task {r['task']:3d}: {r['file']:20} - {r['result']}")
        if len(failed) > 10:
            print(f"  ... and {len(failed)-10} more")
    
    return stats

if __name__ == "__main__":
    # 清理
    for f in ["./tester", "./verbose_tester"]:
        if os.path.exists(f):
            try:
                os.remove(f)
            except:
                pass
    
    main()