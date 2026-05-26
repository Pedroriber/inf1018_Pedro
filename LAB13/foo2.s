/*
int foo (int x) {
  return add(x);
}
*/

.globl foo
foo:
    call add 
    ret