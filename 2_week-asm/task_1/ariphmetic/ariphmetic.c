#include <stdio.h>
#include <stdint.h>

int main()
{
    int32_t a_32 = 0;
    int32_t b_32 = 0;
    int32_t c_32 = 0;

    int64_t a_64 = 0;
    int64_t b_64 = 0;
    int64_t c_64 = 0;

    //  Addition and subtraction
    c_32 = a_32 + b_32;
    c_64 = a_64 + b_64;

    c_32 = a_32 - b_32;
    c_64 = a_64 - b_64;

    //  and, xor, or
    c_32 = a_32 & b_32;
    c_32 = a_32 | b_32;
    c_32 = a_32 ^ b_32;

    c_64 = a_64 & b_64;
    c_64 = a_64 | b_64;
    c_64 = a_64 ^ b_64;

    return 0;
}