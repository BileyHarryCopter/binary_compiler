.section .text

.globl	_start
.type   _start, @function
_start:

    # write (1, "Hello, World!\n", 14)
    mov $1,    %rax
    mov $1,    %rdi
    mov $msg,  %rsi
    mov $len,  %rdx
    syscall

    #   exit (0)
    mov $60,   %rax
    xor %rdi,  %rdi
    syscall

    .size _start, . - _start

.section .rodata
.align  0x1000
msg:
    .asciz "Hello_ World!\n"
    .equ   len, . - msg

.end
