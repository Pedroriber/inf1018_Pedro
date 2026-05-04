/*
int add2 (struct X *x) {
  if (x == NULL) return 0;
  else return x->val + add2(x->next);
}
*/

.text
.globl add3
add3:

    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rbx, -8(%rbp)
L1:
    movq    %rdi, %rbx
    cmpq    $0, %rbx     # x==NULL?
    jne L2

    movl    $0, %eax
    jmp fim

L2:
    movl    (%rbx), %eax
    movq    8(%rbx), %rdi

    call add3

    addl    (%rbx),  %eax

fim:
    movq    -8(%rbp), %rbx
    leave
    ret
