/*
struct X1 {
  int vi;
  float vf;
};

double pack1 (struct X1 *px, int n) {
  double acc = 0;
  int i;
  for (i=0;i<n;i++)
    acc += foo(px[i].vf, px[i].vi);
  return acc;
}
*/

.text
.globl pack1
pack1:
    pushq %rbp
    movq %rsp, %rbp
    subq $??, %rsp

    movq $0, %r12
    cvtsi2sd %r12, %xmm2       #xmm2= acc = 0
    movl $0, %r13d

while:
    cmpl %r13d, %esi
    jge fim

    #salvar reg caller - saved
    movsd %xmm2, -16(%rbp)
    movl %esi, -20(%rbp)
    movq %rdi, -28(%rbp)

    #preparar argumentos de foo 
    movl %r13, %ecx
    imull $8, %ecx

    movq %rdi,%rax
    addq %rcx,%rax   

    movss 4(%rax),%xmm0
    movl (%rax),%edi

    call foo 

    movq -24(%rbp),%rdi
    movl -16(%rbp),%esi
    movsd -8(%rbp),%xmm2

    addsd %xmm0, %xmm2

    incl %r13d
    jmp while

fim:
    movsd %xmm2, %xmm0
    leave
    ret