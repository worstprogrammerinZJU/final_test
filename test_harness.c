#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * 参数库说明：
 * TYPE_MALLOC:  int* func0(int n)      - 适用于需要长度并分配内存的函数
 * TYPE_FLOAT:   int  func0(float*, int, float) - 适用于浮点计算逻辑
 * TYPE_GENERAL: int  func0(void*, int) - 适用于通用数组/字符串处理
 */

#ifdef TYPE_MALLOC
    extern int* func0(int n);
#elif defined(TYPE_FLOAT)
    extern int func0(float* arr, int n, float threshold);
#else
    extern int func0(void* buf, int n);
#endif

int main() {
    printf("[Harness] Execution started...\n");

#ifdef TYPE_MALLOC
    // 针对 malloc 类函数，喂入合理的长度
    int n = 32; 
    printf("[Harness] Mode: MALLOC, Input n: %d\n", n);
    int* res = func0(n);
    if (res != NULL) {
        printf("[Harness] Success. Memory allocated at %p, Data[0]: %d\n", res, res[0]);
        // 注意：这里为了安全不强制 free，防止汇编返回的不是 malloc 的原始地址
    } else {
        printf("[Harness] Failed. Malloc returned NULL.\n");
    }

#elif defined(TYPE_FLOAT)
    // 针对浮点类函数
    float data[10] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f, 10.0f};
    float threshold = 0.5f;
    printf("[Harness] Mode: FLOAT, Threshold: %f\n", threshold);
    int res = func0(data, 10, threshold);
    printf("[Harness] Return Value: %d\n", res);

#else
    // 通用模式：分配足够大的空间防止非法访问
    int buf_size = 1024 * 1024; // 1MB Super Buffer
    void* buffer = calloc(buf_size, 1); 
    printf("[Harness] Mode: GENERAL, Buffer: 1MB\n");
    int res = func0(buffer, 100);
    printf("[Harness] Return Value: %d\n", res);
    free(buffer);
#endif

    printf("[Harness] Execution finished.\n");
    return 0;
}