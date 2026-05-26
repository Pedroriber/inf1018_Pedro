/*
float foo (double a, float b) {
  return (a+b)*(a-b);
}
*/

.text
.globl foo
foo:
    pushq %rbp
    movq %rsp, %rbp
    cvtss2sd %xmm1, %xmm1
    movsd %xmm1, %xmm5

    addsd %xmm0, %xmm1  # b= a+b
    movsd %xmm1, %xmm2  #xmm2= a+b
    subsd %xmm5, %xmm0  # 
    movsd %xmm0, %xmm3
    mulsd %xmm2, %xmm3
    movsd %xmm3, %xmm0
    cvtsd2ss %xmm0, %xmm0

    leave
    ret