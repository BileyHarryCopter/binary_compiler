#include <stdio.h>
#include <immintrin.h>

int main()
{
    int have_sse = __builtin_cpu_supports("sse") ? 1 : 0;
    int have_avx512 = __builtin_cpu_supports("avx512f") ? 1 : 0;
    printf("Have SSE: %d\n", have_sse);
    printf("Have AVX512: %d\n", have_avx512);
    return 0;
}