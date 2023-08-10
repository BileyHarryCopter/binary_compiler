.section .text

.globl	_start
.type   _start, @function
_start:

    mov $0,        %rbx

loop:

    # checking if arg[i] is not a NULL
    mov 8(%rsp, %rbx, 8),   %rsi
    or  %rsi, %rsi
    je  exit

    # algorithm of finding a length of arg string
    mov %rsi, %rdi
    sub	%ecx,             %ecx
    sub	%al,              %al
    not	%ecx
    repne scasb    
    not	%ecx       # now the length in ecx
    dec %ecx
    mov %ecx,      %edx # put the length of string in %edx

    # write(stdout, argv[i], length(argv[i]))
    call my_print

    # write(stdout, " ", 1)
    mov $probel,   %rsi
    mov $1,        %rdx
    call my_print

    inc %rbx

    jmp loop


exit:

    # write(stdout, "\n", 1)
    mov $perenos,  %rsi
    mov $1,        %rdx
    call my_print

    mov $60,   %rax
    xor %rdi,  %rdi
    syscall

my_print:   #   %rax strores pointer on string, %rdi - it's length
    mov $1,    %rax
    mov $1,    %rdi
    syscall
    ret

.size _start, . - _start

.section .rodata
.align  0x1000
probel:
    .asciz " "

perenos:
    .asciz "\n"

.end
