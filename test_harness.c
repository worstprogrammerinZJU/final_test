#include <stdio.h>
#include <stdlib.h>

// 严格匹配汇编：x0=指针, w1=整数, s0=浮点数
extern int func0(float *data, int n, float eps);

int main() {
    // 构造测试数据
    float test_data[5] = {1.1f, 2.2f, 3.3f, 4.4f, 5.5f};
    int n = 5;
    float eps = 0.5f;

    // 直接调用。注意：Mac Clang 会自动把 eps 放入 s0
    int result = func0(test_data, n, eps);

    printf("EXEC_RESULT:%d\n", result);
    return 0;
}