#include <stdio.h>
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
