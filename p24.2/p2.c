#include <stdio.h>
void dump (void *p, int n) {
unsigned char *p1 = (unsigned char *) p;
while (n--) {
printf("%p - %02x\n", p1, *p1);
p1++;
}
}
struct X {
char c;
float f;
short s;
double d;
} x = {'L', -1.25, -10, -127.75};
int main (void) {
dump (&x, sizeof(struct X));
return 0;
}
