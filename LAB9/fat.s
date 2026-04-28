/*
int fat (int n) {
  if (n==0) return 1;
  else return n*fat(n-1);
}
*/

.text
.globl fat

fat:
    pushq %rbp
    movq  %rsp, %rbp
    subq  $16, %rsp
    movq  %rbx, -8(%rbp)

    movl  %edi, %ebx    

    cmpl  $0, %ebx
    jne rec
    movl  $1, %eax
    jmp finalizacao

rec:
    subl  $1, %edi
    call fat
    
    imull  %ebx, %eax

finalizacao:
    movq  -8(%rbp), %rbx
    leave 
    ret
