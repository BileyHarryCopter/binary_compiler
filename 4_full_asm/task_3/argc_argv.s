.section .text

.globl	_start
.type   _start, @function
_start:

    mov $0,        %rbx

loop:

    # checking if arg[i] is not a NULL
    mov 8(%rsp, %rbx, 8),  %rsi
    or  %rsi,              %rsi
    je  exit_from_loop

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
    call my_print
    cmp %rax,      %rdx
    jne exit_end

    # write(stdout, " ", 1)
    mov $probel,   %rsi
    mov $1,        %rdx
    call my_print
    cmp %rax,      %rdx
    jne exit_end

    inc %rbx

    jmp loop

exit_from_loop:

    # write(stdout, "\n", 1)
    mov $perenos,  %rsi
    mov $1,        %rdx
    call my_print
    cmp %rax,      %rdx
    jne exit_end

exit_end:

    mov $60,       %rax
    xor %rdi,      %rdi
    syscall

my_print:      #   In Advance: %rsi strores pointer on string, %rdx - it's length

    push           %rdi
    mov $1,        %rax
    mov $1,        %rdi
    syscall
    pop            %rdi
    ret

.size _start, . - _start


.section .rodata
.align  0x1000
probel:
    .asciz " "

perenos:
    .asciz "\n"

.end
