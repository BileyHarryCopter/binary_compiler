#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <limits.h> //  for INT_MAX

#include <immintrin.h>

#define M8_ALLONES 0xFFu

int slow_argmin(uint16_t *array, int n) //  naive realisation
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

int fast_argmin(uint16_t *array, int n) //  intrinsic's power
{
    if (n < 8)
        return slow_argmin(array, n);

    int pos = 0;
    uint16_t min = (uint16_t) INT_MAX;
    uint16_t res_arr[8] = {0};

    int mainsz = (n / 8);
    for (int i = 0; i < mainsz; ++i)
    {
        __m128i needle = _mm_loadu_si128((__m128i *) (array + 8 * i));
        needle = _mm_minpos_epu16(needle);

        _mm_storeu_si128((__m128i *) res_arr, needle);


        uint16_t min_cur = res_arr[0];
        int cur_pos      = res_arr[1];

        if (min_cur < min)
        {
            min = min_cur;
            pos = cur_pos + 8 * i;
        }
    }

    for (int i = 8 * mainsz; i < n; ++i)
    {
        if (array[i] < min)
            pos = i;
    }

    return pos;
}

int main()
{
    uint16_t arr[27] = {34, 8, 5, 2, 21, 3, 2, 65, 81, 92, 120, 9, 19, 49, 74, 8,
                        65, 81, 92, 120, 15, 876, 3, 45, 92, 1, 27};

    // printf("slow_argmin: %d\n", slow_argmin(arr, 16));
    printf("fast_argmin: %d\n", fast_argmin(arr, 27));

    return 0;
}
