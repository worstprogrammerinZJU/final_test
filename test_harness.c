#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

// 保持 8 参数声明，确保寄存器占位
extern uintptr_t func0(uintptr_t x0, uintptr_t x1, uintptr_t x2, uintptr_t x3, 
                       uintptr_t x4, uintptr_t x5, uintptr_t x6, uintptr_t x7);

int main() {
    // 1. 构造浮点数输入数据 (因为汇编里 lsl #2 明确了这是个 float 数组)
    float test_scores[10] = {4.0f, 3.8f, 3.5f, 3.0f, 2.7f, 2.3f, 2.0f, 1.7f, 1.3f, 1.0f};
    
    // 2. 调用函数
    // x0 = 数组指针, x1 = 长度 10
    // 其余寄存器填充 0 即可
    printf("[Harness] Calling _func0 with float array...\n");
    uintptr_t res_ptr = func0((uintptr_t)test_scores, 10, 0, 0, 0, 0, 0, 0);

    // 3. 结果处理
    // 根据汇编 LBB0_40，它返回的是 malloc 出来的指针数组 (char**)
    if (res_ptr != 0) {
        char** results = (char**)res_ptr;
        printf("[Harness] Function returned pointer: %p\n", results);
        for(int i = 0; i < 5; i++) { // 尝试打印前 5 个结果
            if (results[i]) printf("  Score %d Grade: %s\n", i, results[i]);
        }
        // 注意：这里理论上应该 free(results)，但模型生成的代码可能有内存错误，先不 free 防止二次崩溃
    } else {
        printf("[Harness] Function returned NULL\n");
    }

    return 0;
}