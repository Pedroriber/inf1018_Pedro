#include <stdio.h>
//int main(void) {
//  unsigned int x = 0x87654321;
//  unsigned int y, z;

//  /* o byte menos significativo de x e os outros bits em 0 */
//  y = x & 0x000000FF;

  /* o byte mais significativo com todos os bits em '1' 
     e os outros bytes com o mesmo valor dos bytes de x */
 // z = x & 0x00FFFFFF;

//  printf("%08x %08x\n", y, z);
//}


int odd_ones(unsigned int x) {
    int parity = 0;

    while (x) {
        parity ^= (x & 1);  // pega o último bit e alterna a paridade
        x >>= 1;            // desloca para analisar o próximo bit
    }

    return parity;
}

unsigned char switch_byte(unsigned char x) {
    return (x << 4) | (x >> 4);
}

unsigned char rotate_left(unsigned char x, int n){
    return (x << n) | (x >> (8 - n));
}


int main() {
  printf("%b\n",rotate_left(0b01100001, 2));
  printf("%x\n",switch_byte(0xAB));
  printf("%x tem numero %s de bits\n",0x01010101,odd_ones(0x01010101) ? "impar":"par");
  printf("%x tem numero %s de bits\n",0x01030101,odd_ones(0x01030101) ? "impar":"par");
  return 0;
}
