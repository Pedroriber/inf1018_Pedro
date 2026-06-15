
#include <stdio.h>
#include <math.h>

#define getsig(x)        ((x)>>31 & 1)
#define getexp(x)        ((x)>>23 & 0xff)
#define getfrac(x)       ((x) & 0x7fffff)
#define makefloat(s,e,f) ((s & 1)<<31 | (((e) & 0xff) << 23) | ((f) & 0x7fffff))

typedef union {
  float f;
  unsigned int i;
} U;

float float2(float f){
    U u;
    u.f = f;
    unsigned int s= getsig(u.i);
    unsigned int e= getexp(u.i);
    unsigned int frac= getfrac(u.i);

    e++;
    u.i = makefloat(s,e,frac);
    return u.f;
}
float int2float(int i){
    U u;

    if(i == 0){
        u.i = 0;
        return u.f;
    }

    unsigned int s = 0;
    unsigned int n;

    if(i < 0){
        s = 1;
        n = -i;
    }
    else{
        n = i;
    }

    int k = 31;
    while(((n >> k) & 1) == 0)
        k--;

    unsigned int exp = k + 127;

    unsigned int frac = n - (1 << k);

    int shift = 23 - k;

    if(shift >= 0)
        frac <<= shift;
    else
        frac >>= (-shift);

    u.i = makefloat(s, exp, frac);

    return u.f;
}

int main() {
    int i;

    printf("\n******** int2float ****************\n");
    i = 0;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = 1;  
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = -1;  
    printf(" %d -> %10.4f\n", i, int2float(i));
    i = 0x7fffffff;  
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = -i;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = 12345;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    i = -12345;
    printf(" %d -> %+10.4f\n", i, int2float(i));
    printf("\n******** float2float ****************\n");
    float f;
    f = 0.0;
    printf(" %f -> %+f\n", f, float2(f));
    f = 1.0;
    printf(" %f -> %+f\n", f, float2(f));
    f = -1.0;
    printf(" %f -> %+f\n", f, float2(f));
    f = 12345.6789;
    printf(" %f -> %+f\n", f, float2(f));
    f = -12345.6789;
    printf(" %f -> %+f\n", f, float2(f));
    return 0;
}