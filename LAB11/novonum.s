/*
int novonum(void) {
  int minhalocal;
  printf("numero: ");
  scanf("%d",&minhalocal);
  return minhalocal;
}
*/
Sf1: .string "%d"
Sf2: .string "Numero: "
.text
.globl novonum
novonum:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp

    movq %rdi, -8(%rbp)
    movq $Sf2, %rdi
    call printf

    movq 8(%rbp), %rdi

    movq $Sf1, %rdi
    leaq -4(%rbp), %rsi
    call scanf
    movl -4(%rbp), %eax

    leave
    ret


