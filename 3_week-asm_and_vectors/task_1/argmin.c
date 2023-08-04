#include <stdio.h>
#include <srdlib.h>
#include <stdint.h>

#include <xmmintrin.h>
#include <immintrin.h>

#define M8_ALLONES 0xFFu

int slow_argmin(uint16_t *array, int n)
{
    int k = 0;

    if (n < 0)
        return -1;

    for (int i = 0; i < n; ++i)
    {
        if (array[i] < array[k])
            k = i;
    }
    return k;
}

int fast_argmin(uint16_t *array, int n)
{
    int k = 0;

    if (n < 16)
        return slow_argmin(array, n);

    int mainsz = (n / 16) * 16;
    for (int i = 0; i < n; i += 16)
    {
        __m128i needle = _mm_loadu_si128(array + i);
        needle = _mm_minpos_epu16(needle);
        __builtin_ctz
    }
}

void print_xreg(__m128i reg)
{
    __m128i reg_base = _mm_cvtepi32_epi16(reg);

    printf ("Beach\n");

    uint16_t vals[8];
    _mm_store_epi32(vals, reg);

    // _mm_mask_store_epi32(vals, M8_ALLONES, reg);
    // 0xFFu

    for (int i = 0; i < 8; ++i)
        printf("%5d", vals[i]);
    printf("\n");
}

int main()
{
    uint16_t arr[16] = {34, 8, 55, 21, 12, 7, 65, 81, 92, 120, 2, 19, 49, 74, 32, 8};

    printf("slow_argmin: %d\n", slow_argmin(arr, 16));
    // printf("fast_argmin: %d\n", fast_argmin(arr, 16));

    // __m128i packed = _mm_loadu_si128(arr);
    __m128i packed = _mm_set_epi16(1, 2, 3, 4, 5, 6, 7, 8);
    // _mm_cvtepi32_epi16(packed);

    print_xreg(packed);

    return 0;
}

// // addr shall be 16-byte aligned
// void mask_store_xvalue(void *addr, m8 mask, ri128 val) {
//   _mm_mask_store_epi32(addr, mask, val);
// }

// // addr shall be 16-byte aligned
// void store_xvalue(void *addr, ri128 val) {
// #if defined(__clang__)
//   _mm_store_epi32(addr, val);
// #else
//   mask_store_xvalue(addr, M8_ALLONES, val);
// #endif
// }
// void print_xreg(FILE *f, const char *const pname, ri128 r) {
//   int vals[4] __attribute__((aligned(16)));
//   store_xvalue(vals, r);
//   print_iarray(f, pname, vals, 4);
// }
