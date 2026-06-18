#include <math.h>
#include <stdio.h>
#define _USE_MATH_DEFINES

double sin(double x);
double cos(double x);

double foo3(double *a, int b);

int main() {
    double a = M_PI; 
    int b =4 ;
    double resultado = foo3(&a, b);
    
    printf("Resultado de foo3= %.2f\n", resultado);
    
    return 0;
}