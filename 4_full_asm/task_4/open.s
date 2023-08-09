.section .rodata
.align  0x1000

msg_no_arg:
    .asciz "There is no file in argv\n"
    .equ   len_no_arg, . - msg_no_arg

msg_no_file:
    .asciz "Opening of the file is incorrect\n"
    .equ   len_no_file, . - msg_no_file

BUFSIZE:
    .int 2048


.section .bss
.align  0x1000
.lcomm  buffer, 2048


.section .text

.globl	_start
.type   _start, @function
_start:

    #   checking if argv[1] == NULL
    mov 16(%rsp),       %rsi
    or  %rsi,           %rsi
    je  exit_no_arg

    #   opening the file
    mov $2,             %rax
    mov 16(%rsp),       %rdi
    mov $0,             %rsi
    syscall             #   open (argv[1], 0 [== RDONLY])

    #   checking if the file was opened incorrectly
    cmp $0,             %rax
    jb exit_no_file

#   reading_loop:

    #   reading from file in the buffer
    mov %rax,           %rdi
    mov $0,             %rax
    mov $buffer,        %rsi
    mov $BUFSIZE,       %rdx
    syscall    #   read (3, buffer, BUFSIZE)

    #   writing to stdout
    mov $1,             %rax
    mov $1,             %rdi
    mov $buffer,        %rsi
    mov $BUFSIZE,       %rdx
    syscall    #   write (1, buffer, BUFSIZE)

    #   jmp reading_loop

exit_no_file:  #   write (1, "Opening of the file is incorrect\n", 34)

    mov $1,             %rax
    mov $1,             %rdi
    mov $msg_no_file,   %rsi
    mov $len_no_file,   %rdx
    syscall

    jmp exit

exit_no_arg:   #   write (1, "There is no file in argv\n", 27)

    mov $1,             %rax
    mov $1,             %rdi
    mov $msg_no_arg,    %rsi
    mov $len_no_arg,    %rdx
    syscall

exit:           #   exit (0)

    mov $60,   %rax
    xor %rdi,  %rdi
    syscall

.size _start, . - _start

.end
