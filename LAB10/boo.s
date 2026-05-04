/*
int f(int i, int v);

void boo (struct X *px, int n, int val) {
  while (n--) {
    px->val2 = f(px->val1, val);
    px++;
  }
}
*/
#Traduçao


.text
.globl boo
boo:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rbx, -8(%rbp)

    movq    %rdi, %rbx
L1:
    cmpl    $0, %esi
    je  fim

    movl    %esi, -12(%rbp)
    movq    %rdi, -20(%rbp)
    movl    %edx, -28(%rbp)

    movl    (%rbx), %edi
    movl    %edx, %esi

    call f

    movl    -12(%rbp), %esi
    movq    -20(%rbp), %rdi
    movl    -28(%rbp), %edx

    movl    %eax, 4(%rbx)

    addq    $8, %rbx
    subl    $1, %esi

    jmp L1

fim:

    movq    -8(%rbp), %rbx
    leave
    ret


