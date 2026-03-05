#!/usr/bin/env python3
"""
详细评测脚本 - 显示所有测试用例的输入输出
用于测试 generated_asm/problemX.s 汇编文件
"""

import json
import os
import re
import subprocess
import sys
import ast
import tempfile
import time
from collections import defaultdict
from typing import List, Dict, Tuple, Optional, Any

class DetailedEvaluator:
    def __init__(self, jsonl_file: str = "human-eval-v2-20210705.jsonl", 
                 asm_dir: str = "./generated_asm"):
        self.jsonl_file = jsonl_file
        self.asm_dir = asm_dir
        self.tasks = {}
        self.asm_files = []
        self.stats = {
            "total": 0,
            "compile_success": 0,
            "compile_error": 0,
            "passed": 0,
            "failed": 0,
            "timeout": 0,
            "crash": 0
        }
        self.results = []
        
    def load_tasks(self):
        """加载所有任务"""
        print(f"📂 加载任务从 {self.jsonl_file}...")
        
        if not os.path.exists(self.jsonl_file):
            raise FileNotFoundError(f"找不到JSONL文件: {self.jsonl_file}")
        
        with open(self.jsonl_file, 'r', encoding='utf-8') as f:
            for line_num, line in enumerate(f):
                try:
                    task = json.loads(line)
                    task_id = task.get('task_id', '')
                    
                    # 提取任务编号
                    match = re.search(r'/(\d+)$', task_id)
                    if match:
                        task_num = int(match.group(1))
                        self.tasks[task_num] = task
                except json.JSONDecodeError as e:
                    print(f"  ⚠️ JSON解析错误 (行 {line_num+1}): {e}")
                    continue
        
        print(f"  ✅ 加载了 {len(self.tasks)} 个任务")
        return len(self.tasks)
    
    def find_asm_files(self):
        """查找所有汇编文件"""
        print(f"📂 查找汇编文件从 {self.asm_dir}...")
        
        if not os.path.exists(self.asm_dir):
            raise FileNotFoundError(f"找不到汇编文件目录: {self.asm_dir}")
        
        for f in sorted(os.listdir(self.asm_dir)):
            if f.lower().endswith('.s'):
                # 提取文件编号
                match = re.search(r'problem(\d+)\.s$', f, re.IGNORECASE)
                if match:
                    asm_num = int(match.group(1))
                    self.asm_files.append((asm_num, f))
        
        # 按编号排序
        self.asm_files.sort(key=lambda x: x[0])
        
        print(f"  ✅ 找到 {len(self.asm_files)} 个汇编文件")
        return len(self.asm_files)
    
    def extract_func_name(self, asm_path: str) -> Optional[str]:
        """从汇编文件中提取函数名"""
        try:
            with open(asm_path, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()
            
            # 查找 .globl 或 .global 声明的符号
            patterns = [
                r'\.(?:globl|global|export)\s+([a-zA-Z_][a-zA-Z0-9_]*)',
                r'^\s*([a-zA-Z_][a-zA-Z0-9_]*)\s*:',  # 函数标签
            ]
            
            for pattern in patterns:
                matches = re.findall(pattern, content, re.MULTILINE)
                if matches:
                    for match in matches:
                        if not match.startswith(('.', 'L')):
                            return match
            
            return None
        except Exception as e:
            print(f"  ⚠️ 解析汇编文件失败: {e}")
            return None
    
    def parse_args_string(self, args_str: str) -> List[ast.AST]:
        """解析参数字符串为AST节点"""
        try:
            # 尝试解析为函数调用参数
            wrapped = f"func({args_str})"
            tree = ast.parse(wrapped, mode='eval')
            return tree.body.args
        except SyntaxError:
            try:
                # 尝试直接解析
                tree = ast.parse(args_str, mode='eval')
                if isinstance(tree.body, ast.Tuple):
                    return tree.body.elts
                else:
                    return [tree.body]
            except:
                # 最后尝试：作为元组解析
                try:
                    tree = ast.parse(f"({args_str})", mode='eval')
                    return tree.body.elts
                except Exception as e:
                    print(f"  ⚠️ 无法解析参数: {args_str}")
                    print(f"    错误: {e}")
                    return []
    
    def python_value_to_c(self, node: ast.AST) -> Dict[str, Any]:
        """将Python值转换为C代码"""
        if isinstance(node, ast.Constant):
            val = node.value
            if isinstance(val, bool):
                return {"code": "1" if val else "0", "type": "bool"}
            elif isinstance(val, (int, float)):
                return {"code": str(val), "type": "number"}
            elif isinstance(val, str):
                return {"code": f'"{val}"', "type": "string"}
            elif val is None:
                return {"code": "NULL", "type": "null"}
        
        elif isinstance(node, ast.List):
            elements = []
            for elem in node.elts:
                if isinstance(elem, ast.Constant):
                    if isinstance(elem.value, float):
                        val = elem.value
                        if val.is_integer():
                            elements.append(f"{int(val)}.0")
                        else:
                            elements.append(str(val))
                    else:
                        elements.append(str(elem.value))
                else:
                    elements.append("0.0")
            
            if not elements:
                return {"code": "NULL", "len": 0, "type": "array"}
            
            array_content = "{" + ", ".join(elements) + "}"
            return {"code": array_content, "len": len(elements), "type": "array"}
        
        elif isinstance(node, ast.Name):
            if node.id in ["True", "False"]:
                return {"code": "1" if node.id == "True" else "0", "type": "bool"}
        
        return {"code": "0", "type": "unknown"}
    
    def parse_test_cases(self, test_code: str, entry_point: str) -> List[Tuple[str, str]]:
        """解析测试代码中的断言"""
        test_cases = []
        lines = test_code.strip().split('\n')
        
        for line in lines:
            line = line.strip()
            if not line.startswith('assert'):
                continue
            
            # 移除 'assert ' 前缀
            line = line[7:].strip()
            
            # 匹配 candidate(...) == True/False
            pattern = r'candidate\s*\((.*?)\)\s*==\s*(True|False)'
            match = re.search(pattern, line)
            
            if match:
                args_str = match.group(1)
                expected = "1" if match.group(2) == "True" else "0"
                test_cases.append((args_str, expected))
        
        return test_cases
    
    def generate_test_code(self, asm_func_name: str, test_cases: List[Tuple[str, str]], 
                          entry_point: str) -> Optional[str]:
        """生成详细的C测试代码"""
        test_blocks = []
        
        for i, (args_str, expected) in enumerate(test_cases):
            # 解析参数
            args_nodes = self.parse_args_string(args_str)
            if not args_nodes:
                continue
            
            c_args = []
            c_setup = []
            debug_info = []
            
            for arg_idx, arg_node in enumerate(args_nodes):
                arg_info = self.python_value_to_c(arg_node)
                
                if arg_info["type"] == "array":
                    # 数组参数
                    arr_name = f"arr_{i}_{arg_idx}"
                    c_setup.append(f"    double {arr_name}[] = {arg_info['code']};")
                    c_args.append(f"(uintptr_t){arr_name}")
                    c_args.append(f"(uintptr_t){arg_info['len']}")
                    
                    # 调试信息
                    arr_str = arg_info['code']
                    if len(arr_str) > 100:
                        arr_str = arr_str[:97] + "..."
                    debug_info.append(f"数组[{arg_info['len']}]: {arr_str}")
                else:
                    # 普通参数
                    c_args.append(f"(uintptr_t){arg_info['code']}")
                    debug_info.append(f"值: {arg_info['code']}")
            
            # 补全8个参数
            while len(c_args) < 8:
                c_args.append("(uintptr_t)0")
            
            # 生成测试代码块
            setup_code = "\n".join(c_setup)
            if setup_code:
                setup_code += "\n"
            
            # 调试信息字符串
            debug_str = ", ".join(debug_info)
            if len(debug_str) > 120:
                debug_str = debug_str[:117] + "..."
            
            test_block = f"""
    // 测试用例 {i}
    {{
{setup_code}    printf("\\n[测试 {i}] 调用 {entry_point}()\\n");
        printf("  输入: {debug_str}\\n");
        printf("  期望: {expected} ({'True' if expected == '1' else 'False'})\\n");
        
        uintptr_t result = {asm_func_name}({', '.join(c_args)});
        
        printf("  实际: %lu (%s)\\n", 
               result, 
               result == 1 ? "True" : (result == 0 ? "False" : "无效值"));
        
        if (result != (uintptr_t){expected}) {{
            printf("  ❌ 失败: 期望 %lu, 实际 %lu\\n", 
                   (uintptr_t){expected}, result);
            failures++;
        }} else {{
            printf("  ✓ 通过\\n");
        }}
    }}
            """
            test_blocks.append(test_block.strip())
        
        if not test_blocks:
            return None
        
        all_tests = "\n\n".join(test_blocks)
        
        # 完整的C测试程序
        c_code = f"""#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// 声明汇编函数
extern uintptr_t {asm_func_name}(
    uintptr_t, uintptr_t, uintptr_t, uintptr_t,
    uintptr_t, uintptr_t, uintptr_t, uintptr_t
);

int main() {{
    int failures = 0;
    int total_tests = {len(test_cases)};
    
    printf("🧪 开始测试函数: {asm_func_name}\\n");
    printf("📊 总测试用例数: {len(test_cases)}\\n");
    printf("="*70 + "\\n");
    
{all_tests}
    
    printf("\\n" + "="*70 + "\\n");
    printf("📈 测试结果:\\n");
    printf("  通过: %d\\n", total_tests - failures);
    printf("  失败: %d\\n", failures);
    printf("  总计: %d\\n", total_tests);
    
    if (failures == 0) {{
        printf("🎉 所有测试通过!\\n");
        return 0;
    }} else {{
        printf("❌ 有 %d 个测试失败\\n", failures);
        return 1;
    }}
}}
"""
        return c_code
    
    def evaluate_task(self, task_num: int, asm_file: str, verbose: bool = True) -> Tuple[str, Optional[str]]:
        """评估单个任务"""
        asm_path = os.path.join(self.asm_dir, asm_file)
        
        if verbose:
            print(f"\n{'='*80}")
            print(f"🔍 任务 {task_num}: {asm_file}")
            print(f"{'='*80}")
        
        # 获取任务
        task = self.tasks.get(task_num)
        if not task:
            if verbose:
                print(f"  ❌ 找不到任务 HumanEval/{task_num}")
            return "task_not_found", None
        
        entry_point = task.get('entry_point', 'unknown')
        if verbose:
            print(f"  函数: {entry_point}")
        
        # 检查汇编文件
        if not os.path.exists(asm_path):
            if verbose:
                print(f"  ❌ 汇编文件不存在: {asm_path}")
            return "file_not_found", None
        
        file_size = os.path.getsize(asm_path)
        if file_size == 0:
            if verbose:
                print(f"  ❌ 汇编文件为空")
            return "empty_file", None
        
        # 提取函数名
        asm_func_name = self.extract_func_name(asm_path)
        if not asm_func_name:
            if verbose:
                print(f"  ❌ 无法从汇编文件中提取函数名")
            return "no_func_name", None
        
        if verbose:
            print(f"  汇编函数名: {asm_func_name}")
            
            # 检查函数名是否匹配
            if asm_func_name != f"_{entry_point}" and asm_func_name != entry_point:
                print(f"  ⚠️ 函数名不匹配: 汇编={asm_func_name}, 任务={entry_point}")
        
        # 解析测试用例
        test_cases = self.parse_test_cases(task['test'], entry_point)
        if not test_cases:
            if verbose:
                print(f"  ❌ 无法解析测试用例")
            return "no_test_cases", asm_func_name
        
        if verbose:
            print(f"  找到 {len(test_cases)} 个测试用例")
        
        # 生成测试代码
        c_code = self.generate_test_code(asm_func_name, test_cases, entry_point)
        if not c_code:
            if verbose:
                print(f"  ❌ 无法生成测试代码")
            return "codegen_failed", asm_func_name
        
        # 创建临时C文件
        with tempfile.NamedTemporaryFile(mode='w', suffix='.c', delete=False, encoding='utf-8') as f:
            f.write(c_code)
            c_file = f.name
        
        # 编译
        compile_cmd = f"clang -arch arm64 -O0 {c_file} {asm_path} -o detailed_tester -lm"
        compile_result = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)
        
        if compile_result.returncode != 0:
            os.unlink(c_file)
            if verbose:
                print(f"  🔨 编译失败:")
                error_lines = compile_result.stderr.strip().split('\n')
                for line in error_lines[-3:]:
                    if line.strip():
                        print(f"    {line}")
            return "compile_error", asm_func_name
        
        os.unlink(c_file)
        
        # 运行测试
        if verbose:
            print(f"\n  {'─'*60}")
            print(f"  🚀 开始执行测试...")
            print(f"  {'─'*60}\n")
        
        try:
            start_time = time.time()
            run_result = subprocess.run(
                "./detailed_tester",
                capture_output=True,
                text=True,
                timeout=10
            )
            elapsed = time.time() - start_time
            
            # 显示输出
            if verbose and run_result.stdout:
                for line in run_result.stdout.strip().split('\n'):
                    if line.strip():
                        print(f"  {line}")
            
            if verbose and run_result.stderr:
                print(f"\n  ⚠️ 错误输出:")
                for line in run_result.stderr.strip().split('\n'):
                    if line.strip():
                        print(f"    {line}")
            
            if verbose:
                print(f"\n  ⏱️ 执行时间: {elapsed:.3f}秒")
            
            # 判断结果
            if run_result.returncode == 0:
                if verbose:
                    print(f"  ✅ 所有测试通过")
                return "passed", asm_func_name
            else:
                if verbose:
                    print(f"  ❌ 测试失败 (返回码: {run_result.returncode})")
                return "failed", asm_func_name
                
        except subprocess.TimeoutExpired:
            if verbose:
                print(f"  ⏰ 执行超时")
            return "timeout", asm_func_name
        except Exception as e:
            if verbose:
                print(f"  💥 程序崩溃: {e}")
            return "crash", asm_func_name
        finally:
            if os.path.exists("./detailed_tester"):
                try:
                    os.remove("./detailed_tester")
                except:
                    pass
    
    def run_evaluation(self, start: int = 0, end: Optional[int] = None, 
                      specific_tasks: Optional[List[int]] = None, 
                      skip_prompt: bool = False) -> Dict[str, Any]:
        """运行评测"""
        # 加载数据
        self.load_tasks()
        self.find_asm_files()
        
        if not self.tasks or not self.asm_files:
            print("❌ 没有找到任务或汇编文件")
            return {}
        
        # 确定要测试的任务
        tasks_to_test = []
        if specific_tasks:
            tasks_to_test = specific_tasks
        else:
            if end is None:
                end = len(self.asm_files) - 1
            tasks_to_test = list(range(start, end + 1))
        
        print(f"\n🎯 准备测试 {len(tasks_to_test)} 个任务")
        print(f"📁 汇编文件目录: {self.asm_dir}")
        print(f"📄 任务数据文件: {self.jsonl_file}")
        
        if not skip_prompt:
            input("\n按回车键开始评测...")
        
        # 测试每个任务
        for idx, task_num in enumerate(tasks_to_test):
            # 查找对应的汇编文件
            asm_file = None
            for asm_num, f in self.asm_files:
                if asm_num == task_num:
                    asm_file = f
                    break
            
            if not asm_file:
                print(f"\n⚠️ 跳过任务 {task_num}: 找不到对应的汇编文件")
                continue
            
            # 更新统计
            self.stats["total"] += 1
            
            # 评估任务
            result, func_name = self.evaluate_task(task_num, asm_file, verbose=True)
            
            # 更新统计
            if result == "passed":
                self.stats["compile_success"] += 1
                self.stats["passed"] += 1
            elif result == "failed":
                self.stats["compile_success"] += 1
                self.stats["failed"] += 1
            elif result == "compile_error":
                self.stats["compile_error"] += 1
            elif result == "timeout":
                self.stats["compile_success"] += 1
                self.stats["timeout"] += 1
            elif result == "crash":
                self.stats["compile_success"] += 1
                self.stats["crash"] += 1
            elif result in ["task_not_found", "file_not_found", "empty_file", 
                          "no_func_name", "no_test_cases", "codegen_failed"]:
                self.stats["compile_error"] += 1
            
            # 保存结果
            self.results.append({
                "task_num": task_num,
                "asm_file": asm_file,
                "func_name": func_name,
                "status": result
            })
            
            # 询问是否继续
            if idx < len(tasks_to_test) - 1 and not skip_prompt:
                cont = input(f"\n继续测试下一个任务吗? (y/n, 默认y): ").strip().lower()
                if cont == 'n':
                    break
        
        # 输出统计结果
        self.print_summary()
        
        # 保存结果到文件
        self.save_results()
        
        return self.stats
    
    def print_summary(self):
        """输出统计摘要"""
        print(f"\n{'='*80}")
        print("📊 评测结果汇总")
        print(f"{'='*80}")
        
        print(f"\n1. 样本总数:      {self.stats['total']}")
        print(f"2. 编译阶段:      成功 {self.stats['compile_success']} / 失败 {self.stats['compile_error']}")
        print(f"3. 执行阶段:      通过 {self.stats['passed']} / 失败 {self.stats['failed']} / 超时 {self.stats['timeout']} / 崩溃 {self.stats['crash']}")
        
        # 计算比率
        if self.stats['total'] > 0:
            compile_rate = (self.stats['compile_success'] / self.stats['total']) * 100
            
            if self.stats['compile_success'] > 0:
                exec_rate = (self.stats['passed'] / self.stats['compile_success']) * 100
            else:
                exec_rate = 0.0
            
            overall_rate = (self.stats['passed'] / self.stats['total']) * 100
            
            print(f"\n{'─'*80}")
            print("📈 通过率分析:")
            print(f"  编译通过率: {compile_rate:.2f}%")
            print(f"  执行通过率: {exec_rate:.2f}% (基于编译成功的样本)")
            print(f"  总体通过率: {overall_rate:.2f}%")
            
            # 可视化
            print(f"\n  📊 通过率可视化:")
            print(f"  编译成功率 [{compile_rate:5.1f}%]: ", end="")
            print("█" * int(compile_rate / 5))
            
            if self.stats['compile_success'] > 0:
                print(f"  执行通过率 [{exec_rate:5.1f}%]: ", end="")
                print("█" * int(exec_rate / 5))
            
            print(f"  最终通过率 [{overall_rate:5.1f}%]: ", end="")
            print("█" * int(overall_rate / 5))
            
            # 警告检查
            if self.stats.get('passed', 0) == self.stats.get('total', 1) and self.stats['total'] > 0:
                print(f"\n{'!'*80}")
                print("⚠️ 警告: 检测到100%通过率!")
                print("可能的原因:")
                print("  1. 汇编函数没有被正确链接")
                print("  2. 所有汇编代码都返回相同的默认值")
                print("  3. 测试驱动程序有问题")
                print(f"{'!'*80}")
        
        # 失败任务列表
        failed_tasks = [r for r in self.results if r['status'] not in ['passed', 'task_not_found']]
        if failed_tasks:
            print(f"\n{'─'*80}")
            print("❌ 失败任务列表:")
            for task in failed_tasks[:20]:  # 最多显示20个
                status_map = {
                    'failed': '逻辑错误',
                    'compile_error': '编译错误',
                    'timeout': '超时',
                    'crash': '崩溃',
                    'file_not_found': '文件不存在',
                    'empty_file': '空文件',
                    'no_func_name': '无函数名',
                    'no_test_cases': '无测试用例',
                    'codegen_failed': '代码生成失败'
                }
                status_text = status_map.get(task['status'], task['status'])
                print(f"  任务 {task['task_num']:3d}: {task['asm_file']:20} - {status_text}")
            
            if len(failed_tasks) > 20:
                print(f"  ... 还有 {len(failed_tasks) - 20} 个失败任务")
    
    def save_results(self):
        """保存结果到文件"""
        import json
        import time
        
        result_data = {
            "summary": self.stats,
            "results": self.results,
            "timestamp": time.time(),
            "time_str": time.strftime("%Y-%m-%d %H:%M:%S")
        }
        
        output_file = f"evaluation_detailed_{int(time.time())}.json"
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(result_data, f, indent=2, ensure_ascii=False)
        
        print(f"\n💾 详细结果已保存到: {output_file}")
    
    def quick_debug(self, task_num: int):
        """快速调试单个任务"""
        print(f"\n{'='*80}")
        print(f"🔧 调试模式 - 任务 {task_num}")
        print(f"{'='*80}")
        
        # 获取任务
        task = self.tasks.get(task_num)
        if not task:
            print(f"❌ 找不到任务 HumanEval/{task_num}")
            return
        
        print(f"📄 任务ID: {task.get('task_id', 'N/A')}")
        print(f"🔤 函数名: {task.get('entry_point', 'N/A')}")
        
        # 显示问题描述
        prompt = task.get('prompt', '')
        lines = prompt.split('\n')
        print(f"\n📝 问题描述:")
        for i, line in enumerate(lines[:10]):
            if line.strip():
                print(f"  {line}")
        if len(lines) > 10:
            print(f"  ...")
        
        # 查找汇编文件
        asm_file = None
        for asm_num, f in self.asm_files:
            if asm_num == task_num:
                asm_file = f
                break
        
        if not asm_file:
            print(f"\n❌ 找不到对应的汇编文件")
            return
        
        asm_path = os.path.join(self.asm_dir, asm_file)
        print(f"\n📁 汇编文件: {asm_file}")
        
        if not os.path.exists(asm_path):
            print(f"❌ 文件不存在: {asm_path}")
            return
        
        # 显示汇编文件信息
        with open(asm_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        print(f"  📏 文件大小: {len(content)} 字符")
        print(f"  📄 文件行数: {len(content.splitlines())}")
        
        # 提取函数名
        func_name = self.extract_func_name(asm_path)
        print(f"  🔤 检测到的函数名: {func_name}")
        
        # 检查.globl声明
        has_globl = ".globl" in content or ".global" in content
        print(f"  📌 有.globl声明: {has_globl}")
        
        # 检查返回指令
        ret_count = content.count(' ret ') + content.count('\tret')
        print(f"  ↩️ 包含 {ret_count} 个 'ret' 指令")
        
        # 显示汇编文件前40行
        print(f"\n📄 汇编文件前40行:")
        lines = content.split('\n')
        for i, line in enumerate(lines[:40]):
            print(f"  {i+1:3d}: {line.rstrip()}")
        
        # 解析测试用例
        test_cases = self.parse_test_cases(task['test'], task.get('entry_point', ''))
        print(f"\n🧪 测试用例 ({len(test_cases)}个):")
        for i, (args, expected) in enumerate(test_cases[:5]):
            expected_bool = "True" if expected == "1" else "False"
            print(f"  {i+1}. {task.get('entry_point', '')}({args}) == {expected_bool}")
        if len(test_cases) > 5:
            print(f"  ... 还有 {len(test_cases) - 5} 个测试用例")

def main():
    """主函数"""
    print("🔍 HumanEval汇编代码详细评测工具")
    print("="*60)
    
    # 解析命令行参数
    import argparse
    parser = argparse.ArgumentParser(description='详细评测HumanEval汇编代码')
    parser.add_argument('--jsonl', default='human-eval-v2-20210705.jsonl', 
                       help='JSONL文件路径')
    parser.add_argument('--asm-dir', default='./generated_asm', 
                       help='汇编文件目录')
    parser.add_argument('--start', type=int, default=0, 
                       help='起始任务编号')
    parser.add_argument('--end', type=int, 
                       help='结束任务编号')
    parser.add_argument('--task', type=int, 
                       help='测试特定任务')
    parser.add_argument('--debug', type=int, 
                       help='调试特定任务')
    parser.add_argument('--batch', action='store_true',
                       help='批量模式，不询问继续')
    parser.add_argument('--list', action='store_true',
                       help='列出所有任务')
    
    args = parser.parse_args()
    
    # 创建评测器
    evaluator = DetailedEvaluator(args.jsonl, args.asm_dir)
    
    try:
        evaluator.load_tasks()
        evaluator.find_asm_files()
    except FileNotFoundError as e:
        print(f"❌ 错误: {e}")
        return
    
    if args.list:
        # 列出所有任务
        print(f"\n📋 可用任务列表 ({len(evaluator.tasks)}个):")
        for task_num in sorted(evaluator.tasks.keys()):
            task = evaluator.tasks[task_num]
            asm_exists = any(asm_num == task_num for asm_num, _ in evaluator.asm_files)
            asm_status = "✅" if asm_exists else "❌"
            print(f"  {asm_status} 任务 {task_num:3d}: {task.get('entry_point', 'N/A'):20} {asm_status}")
        return
    
    if args.debug is not None:
        # 调试模式
        evaluator.quick_debug(args.debug)
        return
    
    if args.task is not None:
        # 测试特定任务
        specific_tasks = [args.task]
        evaluator.run_evaluation(specific_tasks=specific_tasks, skip_prompt=True)
    else:
        # 运行完整评测
        evaluator.run_evaluation(start=args.start, end=args.end, skip_prompt=args.batch)

if __name__ == "__main__":
    # 清理之前的可执行文件
    for f in ["./detailed_tester", "./tester", "./verbose_tester"]:
        if os.path.exists(f):
            try:
                os.remove(f)
            except:
                pass
    
    main()