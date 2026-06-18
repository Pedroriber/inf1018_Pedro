/*
double foo2 (float a, float b) {
  return sin(a) + cos(b);
}
*/

.text
.globl foo2
foo2:

    pushq %rbp
    movq  %rsp, %rbp
    subq  $16, %rsp

    movss %xmm1, -4(%rbp)
    call sinf
    movss %xmm0, -8(%rbp)

    movss -4(%rbp), %xmm0
    call cosf
    addss -8(%rbp), %xmm0

    leave
    ret
