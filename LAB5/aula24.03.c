#include <stdio.h>

int main (void) {
    int *pLong;
    pLong= ( int*)0x10000;
    int k=3;
    printf("pLong: %p\n - %p\n", pLong, pLong+k);
    return 0;
}