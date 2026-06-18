/*
double foo3 (double *a, int n) {
  int i;
  double r = 0.0;
  for (i=0; i<n; i++) {
    r += sin(*a);
    a++;
  }
  return r;
}
*/
.text
.globl foo3
foo3:
    pushq %rbp
    movq  %rsp, %rbp
    subq  $16, %rsp
    movq $0, %rax
    cvtsi2sd  %rax, %xmm2

while:
    movl $0, %ecx

    cmpl %esi, %ecx
    jge fim

    movsd (%rdi), %xmm0    # carregar *a
    call sin               # sin(double)
    addsd %xmm0, %xmm2     # r += sin(*a)

    addq $8, %rdi          # a++
    incl %ecx              # i++
    jmp while
fim:
    movsd %xmm2, %xmm0
    leave
    ret