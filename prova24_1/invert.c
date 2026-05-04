#include <stdio.h>

unsigned int inverteOrdemBytes(unsigned int i){
    return i >> 24 | 
           (i >> 8 & 0x0000FF00) | 
           (i << 8 & 0x00FF0000) | 
           i << 24;
}
int main() {
  printf("%08x\n", inverteOrdemBytes(0x12345678));
  return 0;
}