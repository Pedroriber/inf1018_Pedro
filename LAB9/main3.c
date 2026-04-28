#include <stdio.h>

void foo(int a[], int n);

int main() {
    int a[] = {1, 2, 0, 3, 4, 0, 5};
    int n = 7;

    foo(a, n);

    printf("Resultado:\n");
    for (int i = 0; i < n; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

    return 0;
}