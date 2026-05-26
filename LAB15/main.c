//gcc -Wall -no-pie -o prog add.s main.c

#include <stdio.h>
float foo(double a, float b);

int main() {
    double a = 5.0;
    float b = 3.5;
    float resultado = foo(a, b);
    
    printf("Resultado de foo(%.2f, %.2f) = %.2f\n", a, b, resultado);
    
    return 0;
}