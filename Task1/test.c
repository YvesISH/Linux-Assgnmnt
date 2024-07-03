// test.c
#include <stdio.h>

extern int add(int a, int b);
extern int subtract(int a, int b);
extern int multiply(int a, int b);
extern float divide(int a, int b);

int main() {
    printf("10 + 5 = %d\n", add(10, 5));
    printf("10 - 5 = %d\n", subtract(10, 5));
    printf("10 * 5 = %d\n", multiply(10, 5));
    printf("10 / 5 = %.2f\n", divide(10, 5));
    return 0;
}