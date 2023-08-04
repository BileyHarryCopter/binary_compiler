#include <stdio.h>
#include <stdint.h>

int main()
{
    int64_t a = 1;
    int64_t b = 2;
    int64_t c = 0;

    __asm__
    (
        "mov %[a], %%rdx    \n\t"
        "mov %[b], %%rax    \n\t"
        "add %%rdx,%%rax    \n\t"
        "mov %%rax,   %0    \n\t"
        : "=m"(c)
        : [a]"m"(a), [b]"m"(b)
        : "rax", "rdx"
    );

    printf ("value of c: %ld\n", c);

    return 0;
}