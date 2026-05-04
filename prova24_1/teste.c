#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// função em assembly
int buba(char *v, int n, char c);

// versão correta em C (referência)
int buba_ref(char *v, int n, char c) {
    int i, s = 0;
    for (i = 0; i < n; i++) {
        if (v[i] <= c)
            s += v[i] + n;  // equivalente a corta(v[i], n)
    }
    return s;
}

int main() {
    int n = 10;
    char v[10];
    char c = 'm';

    srand(time(NULL));

    // gerar vetor aleatório
    printf("Vetor: ");
    for (int i = 0; i < n; i++) {
        v[i] = 'a' + rand() % 26;
        printf("%c ", v[i]);
    }
    printf("\n");

    int res_asm = buba(v, n, c);
    int res_c   = buba_ref(v, n, c);

    printf("Resultado ASM: %d\n", res_asm);
    printf("Resultado C  : %d\n", res_c);

    if (res_asm == res_c)
        printf("✅ OK: resultados iguais\n");
    else
        printf("❌ ERRO: resultados diferentes\n");

    return 0;
}