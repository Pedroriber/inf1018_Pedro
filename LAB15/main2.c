#include <math.h>
#include <stdio.h>
#define _USE_MATH_DEFINES

double sin(double x);
double cos(double x);

double foo2(float a, float b);

int main() {
    float a = M_PI; 
    float b = M_PI;
    float resultado = foo2(a, b);
    
    printf("Resultado de foo1(%.2f, %.2f) = %.2f\n", a, b, resultado);
    
    return 0;
}