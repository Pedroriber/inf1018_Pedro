/*
int add (int a, int b, int c) {
  return a+b+c;
}

*/

  .text
  .globl add
  add:
  /* prologo */
     pushq %rbp
     movq  %rsp, %rbp
     

     movl  %edi, %eax
     addl  %esi, %eax
     addl  %edx, %eax

     leave
     ret