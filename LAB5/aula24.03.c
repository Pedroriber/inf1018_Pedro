#include <stdio.h>

int main (void) {
    int *pLong;
    pLong= ( int*)0x10000;
    int k=2;
    printf("pLong: %p - %p\n", pLong, pLong+k);
    int a[3][2] = {{},{},{}};
    printf("%ld\n", sizeof(a));
    return 0;
    
}