#include <stdio.h> 
/*
 int main(){
    int a[2]= {-1,0};
    unsigned int z= 0;

    if(a[0]< a[1]){
        printf("a[0] é menor que a[1]\n");
    }
    if(a[0]<z){
        printf("a[0] é menor que z\n");
    }
}
*/

#include <stdio.h>

void dump (void *p, int n) {
  unsigned char *p1 = p;
  while (n--) {
    printf("%p - %02x\n", p1, *p1);
    p1++;
  }
}
//1.
/* int main (void) {
  char c = 150;
  short s = -3;
  int i = -151;
  printf("dump de c: \n");
  dump(&c, sizeof(c));
  printf("dump de s: \n");
  dump(&s, sizeof(s));
  printf("dump de i: \n");
  dump(&i, sizeof(i));
  return 0;
}  */
//------------------------------------
// 2.
/* int main (void) {
  short l = -32765;
  unsigned short k = 32771;
  printf("l=%d, k=%u \n", l, k);
  printf("dump de l: \n");
  dump(&l, sizeof(l));
  printf("dump de k: \n");
  dump(&k, sizeof(k));
  return 0;
} */
/* 
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

typedef unsigned packed_t;

int string2num (char *s, int base) {
  int a = 0;
  for (; *s; s++) {
    if(isdigit(*s))
      a = a*base + (*s - '0');
    else if((*s >= 'A') && (*s < (base-10+'A')))
      a = a*base + ((*s - 'A') + 10);
    else if((*s >= 'a') && (*s < (base-10+'a')))
      a = a*base + ((*s - 'a') + 10);
    else {
      printf("pane: numero invalido! \n");
      exit(1);
    }
  }
  return a;
}

int xbyte (packed_t word, int bytenum) {
  // implementar!!! 
    if(bytenum < 0 || bytenum > 3){
          printf("pane: numero de byte invalido! \n");
          exit(1);
     }
     int shift = bytenum * 8;
     int byte = (word >> shift) & 0xFF; // Isola o byte desejado
  return byte;
}

int main (int argc, char **argv) {
  int x;
  if (argc != 3) {
    printf ("uso: %s <word (em hexadecimal)> <bytenum>\n", argv[0]);
    exit(1);
  }

  x = xbyte(string2num(argv[1], 16), atoi(argv[2]));
  printf ("%08x  %d\n", x, x);
  return 0;
}
 */



int main (void) {
  signed char sc = -1;
  unsigned int ui = sc;
  printf("sc = %d, ui = %u\n", sc, ui);
  printf("dump de ui:\n");
  dump(&ui, sizeof(ui));
  return 0;
}
