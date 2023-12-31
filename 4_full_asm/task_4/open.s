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
    syscall         #   open (argv[1], 0 [== RDONLY])

    #   checking if the file was opened incorrectly
    cmp $0,             %rax
    jb exit_no_file

    mov %rax,           %r8

reading_loop:

    #   reading from file in the buffer
    mov $0,             %rax
    mov %r8,            %rdi
    mov $buffer,        %rsi
    mov $BUFSIZE,       %rdx
    syscall         #   read (3, buffer, BUFSIZE)

    #   checking if reading was incorrect
    cmp $0,             %rax
    jb closing_file

    mov %rax,           %r9

    #   writing buffer to stdout
    mov $buffer,        %rsi
    mov $BUFSIZE,       %rdx
    call my_print   #   write (1, buffer, %r9)
    #   checking if reading was incorrect
    cmp %r9,            %rax
    jne closing_file

    #   checking if number of printed symbols are lower than BUFSIZE
    cmp $BUFSIZE,       %rax

    je reading_loop

closing_file:

    #   close (fd)
    mov $3,             %rax
    mov %r8,            %rdi
    syscall

    #   checking if the file was closed incorrectly
    cmp $0,             %rax
    jb exit_end

    #   write(stdout, "\n", 1)
    mov $perenos,       %rsi
    mov $1,             %rdx
    call my_print
    cmp %rax,           %rdx
    jne exit_end

    jmp exit_end

exit_no_arg:        #   write (1, "There is no file in argv\n", 27)

    mov $msg_no_arg,    %rsi
    mov $len_no_arg,    %rdx
    call my_print

    jmp exit_end

exit_no_file:       #   write (1, "Opening of the file is incorrect\n", 34)

    mov $msg_no_file,   %rsi
    mov $len_no_file,   %rdx
    call my_print

    jmp exit_end
    
exit_end:               #   exit (0)

    mov $60,            %rax
    xor %rdi,           %rdi
    syscall

my_print:      #   In Advance: %rsi strores pointer on string, %rdx - it's length

    push                %rdi
    mov $1,             %rax
    mov $1,             %rdi
    syscall
    pop                 %rdi
    ret

.size _start, . - _start


.section .rodata
.align  0x1000

msg_no_arg:
    .asciz "There is no file in argv\n"
    .equ   len_no_arg, . - msg_no_arg

msg_no_file:
    .asciz "Opening of the file is incorrect\n"
    .equ   len_no_file, . - msg_no_file

perenos:
    .asciz "\n"

BUFSIZE:
    .int 2048


.section .bss
.align  0x1000
.lcomm  buffer, 2048


.end
