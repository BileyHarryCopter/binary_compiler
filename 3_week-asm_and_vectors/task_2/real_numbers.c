#include <stdio.h>
#include <stdint.h>

int main()
{
    long double a = 1.6;
    long double b = 1.4;
    long double c = 0.0;

    __asm__
    (
        "faddp  %%st, %%st(1)   \n\t"
        "fstpt           %[c]   \n\t"
        : [c]"=m"(c)
        : [a]"f"(a), [b]"f"(b)
        : "%st", "%st(1)"
    );

    printf ("value of c: %Lf\n", c);

    return 0;
}