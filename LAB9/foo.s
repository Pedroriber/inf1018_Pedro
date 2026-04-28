/*
void foo (int a[], int n) {
  int i;
  int s = 0;
  for (i=0; i<n; i++) {
    s += a[i];
    if (a[i] == 0) {
      a[i] = s;
      s = 0;
    }
  }
}
*/

.text
.globl foo
foo:

  pushq %rbp
  movq  %rsp, %rbp
  subq  $16, %rsp
  movq  %rbx, -8(%rbp)
  movq  %r12, -16(%r12)


  movl  $0, %ebx  /*i = 0*/
  movl  $0, %r12d /*s = 0*/

L1:
  cmpl %esi, %ebx
  jge L2

  movslq  %ebx, %rax
  imulq  $4, %rax
  addq  %rdi, %rax

    # carregar a[i]
  movl   (%rax), %edx

  # s += a[i]
  addl   %edx, %r12d

  # if (a[i] == 0)
  cmpl   $0, %edx
  jne    L3

  # a[i] = s
  movl   %r12d, (%rax)

  # s = 0
  movl   $0, %r12d

L3:
  addl   $1, %ebx       # i++
  jmp    L1

L2:
  /* finalizacao */
  movq  -8(%rbp), %rbx
  movq  -16(%rbp), %r12
  leave
  ret



