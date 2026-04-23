  .data
  s1: .string "ls -ls"

  .text
  .globl main
  main:
  /* prologo */
    pushq %rbp
    movq  %rsp, %rbp

  /* coloque seu codigo aqui */
  /* chamada de system("ls -ls") */
    movq  $s1, %rdi   # coloca endereço da string em rdi pois system recebe ponteiro 64 bits
    call  system      # chama a função
  /* finalizacao */
    leave
    ret