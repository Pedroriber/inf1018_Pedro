#include <stdio.h>

char S2[] = {65, 108, 111, 32, 123, 103, 97, 108, 101, 114, 97, 125, 33, 0};

int main (void) {
    char *pc = S2;
    while (*pc){
        if (*pc!= 123 && *pc != 125)
            printf("%c", *pc);
    
        pc++;
    }
    printf("\n");
    
    int a= 1;
    for (int i = 1; i<=10; i++){
        printf("%d \n", i*i);
    }
}



