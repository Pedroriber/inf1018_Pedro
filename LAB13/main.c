#include <stdio.h>

typedef int (*funcp)(int);

int add(int x) {
    return x + 1;
}

int main() {

    unsigned char codigo[] = {
        0x48, 0xB8,                    /* movabs ..., %rax */
        0,0,0,0,0,0,0,0,              /* endereço de add */
        0xFF, 0xD0,                    /* call *%rax */
        0xC3                           /* ret */
    };

    unsigned long endereco = (unsigned long)add;

    codigo[2] = (endereco      ) & 0xff;
    codigo[3] = (endereco >>  8) & 0xff;
    codigo[4] = (endereco >> 16) & 0xff;
    codigo[5] = (endereco >> 24) & 0xff;
    codigo[6] = (endereco >> 32) & 0xff;
    codigo[7] = (endereco >> 40) & 0xff;
    codigo[8] = (endereco >> 48) & 0xff;
    codigo[9] = (endereco >> 56) & 0xff;

    funcp f = (funcp)codigo;

    int resultado = f(10);

    printf("Resultado = %d\n", resultado);

    return 0;
}