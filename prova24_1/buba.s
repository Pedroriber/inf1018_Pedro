/*
int buba(char *v, int n, char c)
{
    int i, s = 0;
    for (i=0; i<n; i++)
    {
        if (v[i] <= c)
            s += corta(v[i], n);
    }
    return s;
}

*/
.text
.globl buba
buba:
    pushq %rbp
    movq  %rsp, %rbp
    subq  $32, %rsp

    movq  %rbx, -8(%rbp)
    movq  %r12, -16(%rbp)

    movl  $0, %ebx      # i = 0
    movl  $0, %r12d     # s = 0

L1:
    cmpl  %esi, %ebx    # i >= n ?
    jge   L2

    # rax = v + i
    movq  %rdi, %rax
    addq  %rbx, %rax

    movb  (%rax), %al   # al = v[i]

    # if (v[i] <= c)
    cmpb  %dl, %al
    jle    L3
    addl $1,  %ebx          # i++
    jmp   L1


L3:
    # salvar argumentos
    movq  %rdi, -24(%rbp)
    movl  %esi, -28(%rbp)

    # preparar chamada: corta(v[i], n)
    movzbl %al, %edi    # char → int

    call corta

    # restaurar
    movq  -24(%rbp), %rdi
    movl  -28(%rbp), %esi

    addl  %eax, %r12d   # s += retorno

    addl $1,  %ebx          # i++
    jmp   L1

L2:
    movl  %r12d, %eax

    movq  -8(%rbp), %rbx
    movq  -16(%rbp), %r12

    leave
    ret