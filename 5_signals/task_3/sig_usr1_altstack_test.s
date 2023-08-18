.section .text

.globl	_start
.type   _start, @function
_start:

#   Printing of rsp in main
    call print_rsp
    mov $perenos,   %rsi
    mov $1,         %rdx
    call my_print

#   Initialization of alternative stack:
    sub  $0x18,         %rsp
    movq $0x0,          (%rsp)
    movq $0x0,          8(%rsp)
    movq $0x0,          16(%rsp)
    movq $ss_sp,        (%rsp)
    movq $SIGSTKSZ,     16(%rsp)
#   Calling sigalstack
    mov  $SIGALTSTACK,  %rax
    mov  %rsp,          %rdi
    mov  $0,            %rsi
    syscall
#   Checking if the sigaltstack was created with error
    cmp  $0,            %rax
    jl end_error_sigaltstack

#   Initialization of sigaction:
    sub  $0x20,         %rsp
    movq $0x0,          (%rsp)
    movq $0x0,          8(%rsp)
    movq $0x0,          16(%rsp)
    movq $0x0,          24(%rsp)
    movq $handler,      (%rsp)
    movq $SA_ONSTACK,   8(%rsp)
    addq $SA_RESTORER,  8(%rsp)
    movq $restorer,     16(%rsp)
#   Calling sigaction
    mov  $SIGACTION,        %rax
    mov  $SIGUSR1,          %rdi
    mov  %rsp,              %rsi
    mov  $0,                %rdx
    mov  $SIGSET_T,         %r10
    syscall
#   Checking if the sigaction was falled
    cmp  $0,            %rax
    jl end_error_sigaction

#   Catching up the SIGUSR1:
mainloop:
    cmpq $1,          (sigusr1_flag)
    jne mainloop

    mov $perenos,   %rsi
    mov $1,         %rdx
    call my_print

    jmp exit_end


end_error_sigaltstack:
    mov $error_sigaltstack,     %rsi
    mov $len_error_sigaltstack, %rdx
    call my_print

    jmp exit_end

end_error_sigaction:
    mov $error_sigaction,       %rsi
    mov $len_error_sigaction,   %rdx
    call my_print

    jmp exit_end

exit_end:                       #   exit (0)
    mov $60,                    %rax
    xor %rdi,                   %rdi
    syscall

.size _start, . - _start


.globl print_hexdigit
.type print_hexdigit, @function   #  In advance %rax stores a decimal number
print_hexdigit:
    mov  $hex_translation,  %rsi

    add  %rax,              %rsi
    mov  $1,                %rdx
    call my_print

    ret


.globl print_rsp
.type print_rsp, @function
print_rsp:
    mov  $hex_format,       %rsi
    mov  $2,                %rdx
    call my_print           #   Printing "0x"

    mov %rsp,  %r8
    mov $60,   %rbx

    printing_loop:
        mov %rbx,  %rcx

        mov %r8,    %r9
        shr %cl,    %r9
        and $0xf,   %r9
        mov %r9,    %rax

        call print_hexdigit

        sub $4,       %rbx
        jge printing_loop

    ret


.globl my_print
.type  my_print, @function      #   In Advance: %rsi strores pointer on string, %rdx - it's length
my_print:
    push                %rdi
    mov $1,             %rax
    mov $1,             %rdi
    syscall
    pop                 %rdi
    ret


# Restorer for sigaction
.globl restorer
.type  restorer, @function
restorer:
    mov $SIGRETURN, %rax
    syscall 
    ret

.globl handler
.type  handler, @function        #   Handler for sigaction
handler:
    call print_rsp
    movq $1,          (sigusr1_flag)
    ret



.section .rodata
.align  0x1000

# --- Rodata for print_rsp function ---    
hex_format:
    .asciz "0x"

perenos:
    .asciz "\n"

error_sigaltstack:
    .asciz "Error with sigalstack\n"
    .equ   len_error_sigaltstack, . - error_sigaltstack

error_sigaction:
    .asciz "Error with sigaction\n"
    .equ   len_error_sigaction, . - error_sigaction


.equ SIGUSR1,           0xa
.equ SIGALTSTACK, 	    0x83
.equ SIGACTION,         0xd
.equ SIGSTKSZ,          0x2000
.equ SA_ONSTACK,        0x08000000


.equ SIGSET_T,          0x8
.equ SIGRETURN,         0x0f
.equ SA_RESTORER,       0x04000000


.section .data
.align 0x1000

.globl sigusr1_flag
sigusr1_flag:
    .quad 0

hex_translation:
    .asciz "0123456789ABCDEF"
    .equ   len_hex_translation, . - hex_translation


.section .bss
.align 0x1000

.lcomm ss_sp, SIGSTKSZ

    
.end
