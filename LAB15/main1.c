#include <math.h>
#include <stdio.h>
#define _USE_MATH_DEFINES

double sin(double x);
double cos(double x);

float foo1(float a, float b);

int main() {
    float a = M_PI/2; 
    float b = 3.5f;
    float resultado = foo1(a, b);
    
    printf("Resultado de foo1(%.2f, %.2f) = %.2f\n", a, b, resultado);
    
    return 0;
}