/*
int add (struct X *x) {
  int a = 0;
  for (; x != NULL; x = x->next)
    a += x->val;
  return a;
}
*/

.text
.globl add
add:

  pushq  %rbp
  movq   %rsp, %rbp

  