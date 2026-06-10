#include <stdio.h>
#include <sys/mman.h>
#include <unistd.h>

typedef int (*funcp)(int x);

#define PAGE_START(P) ((intptr_t)(P)&~(pagesize-1))
#define PAGE_END(P) (((intptr_t)(P)+pagesize-1)&~(pagesize-1))

int execpage(void *ptr, size_t len) {
    int ret;
    const long pagesize = sysconf(_SC_PAGE_SIZE);
    if (pagesize == -1) return -1;
    ret = mprotect((void *)PAGE_START(ptr),
                   PAGE_END((intptr_t)ptr + len) - PAGE_START(ptr),
                   PROT_READ | PROT_WRITE | PROT_EXEC);
    if (ret == -1) return -1;
    return 0;
}

#undef PAGE_START
#undef PAGE_END

int add(int x) {
    return x + 1;
}
unsigned char codigo[] = {
        0xe8, 0x00, 0x00, 0x00, 0x00,
        0xc3
    };
int main() {
    

    /* Calcula o offset como int (32 bits no x86-64) */
    int offset = (int)((char *)add - ((char *)codigo + 5));

    /* Escreve em little-endian byte a byte */
    codigo[1] = (offset ) & 0xff;
    codigo[2] = (offset >> 8) & 0xff;
    codigo[3] = (offset >> 16) & 0xff;
    codigo[4] = (offset >> 24) & 0xff;

    printf("codigo está em: %p\n", (void *)codigo);
    printf("add está em: %p\n", (void *)add);
    printf("offset calculado: %d\n", offset);

    if (execpage(codigo, sizeof(codigo)) == -1) {
        perror("execpage");
        return 1;
    }

    funcp foo = (funcp)codigo;
    int resultado = foo(10);
    printf("Resultado = %d\n", resultado);
    return 0;
}