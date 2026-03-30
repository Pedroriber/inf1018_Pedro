.data
nums:  .int  10, -21, -30, 45
Sf:  .string "%d\n"

.text
.globl  main
main:

/********************************************************/
/* mantenha este trecho aqui e nao mexa - prologo !!!   */
  pushq   %rbp
  movq    %rsp, %rbp
  subq    $16, %rsp
  movq    %rbx, -8(%rbp)
  movq    %r12, -16(%rbp)
/********************************************************/

  movl  $0, %ebx    /* i = 0 */
  movq  $nums, %r12 /* p = nums */
  movl  $0, %eax    /* sum = 0  (IMPORTANTE) */

L1:
  cmpl  $4, %ebx
  je    L2

  movl  (%r12), %edx   /* edx = *p */

  addl  %edx, %eax     /* sum += *p */

  addl  $1, %ebx       /* i++ */
  addq  $4, %r12       /* p++ */
  jmp   L1

L2:

/*************************************************************/
/* imprime o valor de %eax (sum) */
  movq    $Sf, %rdi
  movl    %eax, %esi
  call    printf
/*************************************************************/

/***************************************************************/
/* mantenha este trecho aqui e nao mexa - finalizacao!!!!      */
  movq  $0, %rax
  movq  -8(%rbp), %rbx
  movq  -16(%rbp), %r12
  leave
  ret      
/***************************************************************/