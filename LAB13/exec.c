#include <stdio.h>
#include <stdint.h>

typedef int (*funcp)(int x);

int add(int x) {
    return x + 1;
}

int main() {

    unsigned char codigo[] = {
        0xe8, 0x00, 0x00, 0x00, 0x00,
        0xc3
    };

    funcp f = (funcp)codigo;

    int32_t *offset = (int32_t *)(codigo + 1);

    *offset = (char *)add - ((char *)codigo + 5);


    int i = (*f)(10);

    printf("Resultado = %d\n", i);

    return 0;
}