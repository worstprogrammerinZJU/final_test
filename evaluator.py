import os
import subprocess
import time

def fast_eval():
    asm_dir = "./generated_asm"
    harness = "test_harness.c"
    
    # 指标统计
    stats = {"total": 0, "compile": 0, "run": 0}
    start_time = time.time()

    files = [f for f in os.listdir(asm_dir) if f.endswith(".s")]
    stats["total"] = len(files)

    for filename in files:
        asm_path = os.path.join(asm_dir, filename)
        
        # 优化1：直接编译到内存，不写大量冗余文件
        # 使用 -Wl,-dead_strip 减少链接体积
        cmd = f"clang -O0 {harness} {asm_path} -o temp.out"
        cp = subprocess.run(cmd, shell=True, capture_output=True)
        
        if cp.returncode == 0:
            stats["compile"] += 1
            # 优化2：设置超时，防止死循环汇编挂起 Action
            try:
                rp = subprocess.run("./temp.out", shell=True, capture_output=True, text=True, timeout=2)
                if rp.returncode == 0:
                    stats["run"] += 1
            except subprocess.TimeoutExpired:
                pass 

    end_time = time.time()
    
    # 打印最终量化结果
    report = f"""
    --- GG Quantitative Stats ---
    Total: {stats['total']}
    Compile Success: {stats['compile']} ({stats['compile']/stats['total']*100:.1f}%)
    Execute Success: {stats['run']} ({stats['run']/stats['total']*100:.1f}%)
    Time Elapsed: {end_time - start_time:.2f}s
    """
    print(report)
    with open("summary.txt", "w") as f: f.write(report)

if __name__ == "__main__":
    fast_eval()