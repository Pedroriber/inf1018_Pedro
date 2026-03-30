#include <stdio.h>

void dump (void *p, int n) {
  unsigned char *p1 = (unsigned char*) p;
  while (n--) {
    printf("%p - %02x\n", p1, *p1);
    p1++;
  }
}
union U1 {
  int i;
  char c[5];
};

union U2 {
  short s;
  char c[5];
};
int main (void) {
    int i;
    union U1 u1;
    union U2 u2;
    union U1 {
    char c[5];
    };

    u1.i = 0x01020304;
    printf("\nu1 (int)\n");
    dump(&u1, sizeof(u1));
    for (i = 0; i <5; i++)
        u1.c[i] = 0xcc;
    printf("u1 (char)\n");
    dump(&u1, sizeof(u1));

    u2.s = 0x0102;
    printf("\nu2 (short)\n");
    dump(&u2, sizeof(u2));
    for (i = 0; i <5; i++)
        u2.c[i] = 0xcc;
    printf("u2 (char)\n");
    dump(&u2, sizeof(u2));
  return 0;
}