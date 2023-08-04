#include <stdio.h>
#include <stdint.h>

int main()
{
    int64_t a = 1;
    int64_t b = 2;
    int64_t c = 0;

    __asm__
    (
        "add  %[a],  %[c_arg]    \n\t"
        "add  %[b],  %[c_arg]    \n\t"
        : [c_arg]"=m"(c)
        : [a]"r"(a), [b]"r"(b)
        :
    );

    printf ("value of c: %ld\n", c);

    return 0;
}