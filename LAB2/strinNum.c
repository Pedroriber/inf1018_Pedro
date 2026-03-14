#include <ctype.h>
#include <stdio.h>

int string2num (char *s, int n) {
  int a = 0;
  for (; *s; s++)
    a = a*n + (*s - '0');
  return a;
}

void num2string (char *s, int num, int base) {
    int i = 0;
    int resto;

    while (num > 0) {
        resto = num % base;

        if (resto < 10)
            s[i++] = '0' + resto;
        else
            s[i++] = 'A' + (resto - 10);

        num /= base;
    }

    s[i] = '\0';

    // inverter a string
    int j = 0;
    int k = i - 1;
    char temp;

    while (j < k) {
        temp = s[j];
        s[j] = s[k];
        s[k] = temp;
        j++;
        k--;
    }
}

int main (void) {
  char buffer[50];
  printf("==> %d\n", string2num("1234", 10));
  printf("==> %d\n", string2num("1011", 2));
  printf("==> %d\n", string2num("0001",2));
  num2string(buffer,11,2);
  printf("==> %s\n", buffer);

  return 0;
}