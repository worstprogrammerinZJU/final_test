#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 根据编译时定义的 TYPE 来决定函数原型
#ifdef TYPE_MALLOC
    // 针对你刚才那个出错的文件：输入整数，返回指针
    extern int* func0(int n);
#elif defined(TYPE_FLOAT)
    // 针对浮点数计算：指针 + 整数 + 浮点阈值
    extern int func0(float* arr, int n, float threshold);
#else
    // 默认通用型：指针 + 长度
    extern int func0(void* buf, int n);
#endif

int main() {
    printf("--- Execution Start ---\n");

#ifdef TYPE_MALLOC
    int n = 10;
    int* res = func0(n);
    if (res != NULL) {
        printf("Malloc Success, first element address: %p\n", res);
        free(res); // 必须释放，防止泄露
    }
#elif defined(TYPE_FLOAT)
    float data[10] = {1.1, 2.2, 3.3, 4.4, 5.5};
    int res = func0(data, 5, 0.5f);
    printf("Float Func Return: %d\n", res);
#else
    // 通用探测：分配一个大缓冲区防止越界
    void* buffer = malloc(4096);
    int res = func0(buffer, 10);
    printf("General Func Return: %d\n", res);
    free(buffer);
#endif

    printf("--- Execution End ---\n");
    return 0;
}