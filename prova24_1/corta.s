/*
int corta(char c1, int b){
    return c1 + b;
}
*/

.text
.globl corta
corta:
    pushq %rbp
    movq %rsp, %rbp

    addl %edi, %esi
    movl %esi, %eax

    leave
    ret
