#include <ctype.h>
#include <stdio.h>

int string2num (char *s, int n) {
  int a = 0;
  for (; *s; s++)
    a = a*n + (*s - '0');
  return a;
}

int main (void) {
  printf("==> %d\n", string2num("1234", 10));
  printf("==> %d\n", string2num("1011", 2));
  printf("==> %d\n", string2num("777",2));
  return 0;
}