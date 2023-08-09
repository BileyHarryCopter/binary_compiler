.section .text

.globl	_start
.type   _start, @function
_start:

loop:

    # checking if arg[i] is not a NULL
    mov 8(%rsp),   %rsi
    or  %rsi,      %rsi
    je  exit

    # algorithm of finding a length of arg string
    mov %rsi,      %rdi
    sub	%ecx,      %ecx
    sub	%al,       %al
    not	%ecx
    repne scasb    
    not	%ecx       # now the length in ecx  
    dec %ecx
    mov %ecx,      %edx # put the length of string in %edx

    # write(stdout, argv[i], length(argv[i]))
    mov $1,        %rdi
    mov $1,        %eax
    syscall

    # write(stdout, " ", 1)
    mov $1,        %rax
    mov $1,        %rdi
    mov $probel,   %rsi
    mov $1,        %rdx
    syscall

    pop %rsi

    jmp loop

exit:

    # write(stdout, "\n", 1)
    mov $1,        %rax
    mov $1,        %rdi
    mov $perenos,  %rsi
    mov $1,        %rdx
    syscall

    mov $60,   %rax
    xor %rdi,  %rdi
    syscall
.size _start, . - _start

.section .rodata
.align  0x1000
probel:
    .asciz " "

perenos:
    .asciz "\n"
