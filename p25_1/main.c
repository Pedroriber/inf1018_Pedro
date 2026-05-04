#include <stdio.h>

int bitMaisADireita(unsigned int numero){
    if (numero ==0){
        return -1;
    }
    int pos=0;
    while ((numero & 1) == 0){
        numero >>= 1;
        pos++;
    }
    return pos;
}

int main() {
  printf("%08x\n", bitMaisADireita(0x12345678));
  return 0;
}