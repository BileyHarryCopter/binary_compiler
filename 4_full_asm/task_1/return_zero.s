.section .text

.globl	_start
.type   _start, @function
_start:

    #   exit (0)
    mov $60, %rax
    xor %rdi, %rdi
    syscall

    .size _start, . - _start
    
.end
