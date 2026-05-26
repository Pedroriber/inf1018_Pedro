.text 
.globl foo
foo:
    pushq %rbp
    movq %rsp, %rbp
    movl %edi, %eax

    jmp $1, %eax

    leave 
    ret