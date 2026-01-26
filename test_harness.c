#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * 参数库全能适配：
 * TYPE_MALLOC:   int* func0(int n)
 * TYPE_FLOAT:    int  func0(float*, int, float)
 * TYPE_MULTIPARAM: void func0(int*, int, int**, int*) <- 针对你最新的复杂汇编
 * TYPE_GENERAL:  int  func0(void*, int)
 */

#ifdef TYPE_MULTIPARAM
    extern void func0(int* input, int n, int** output_ptr, int* count_ptr);
#elif defined(TYPE_MALLOC)
    extern int* func0(int n);
#elif defined(TYPE_FLOAT)
    extern int func0(float* arr, int n, float threshold);
#else
    extern int func0(void* buf, int n);
#endif

int main() {
    printf("[Harness] Start...\n");

#ifdef TYPE_MULTIPARAM
    int input_data[5] = {10, 20, 30, 40, 50};
    int* out_ptr = NULL;
    int count = 0;
    // 这种模式最容易死循环，给一个小一点的 n
    func0(input_data, 5, &out_ptr, &count);
    printf("[Harness] Multi-Param Success, Count: %d\n", count);
    if (out_ptr) free(out_ptr);

#elif defined(TYPE_MALLOC)
    int n = 20; 
    int* res = func0(n);
    if (res) { printf("[Harness] Malloc OK\n"); free(res); }

#elif defined(TYPE_FLOAT)
    float fdata[5] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
    func0(fdata, 5, 0.5f);
    printf("[Harness] Float OK\n");

#else
    void* buffer = calloc(1024 * 1024, 1); // 之前保留的 1MB 安全缓冲区
    func0(buffer, 10);
    printf("[Harness] General OK\n");
    free(buffer);
#endif

    printf("[Harness] End.\n");
    return 0;
}