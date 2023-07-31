#include <stdio.h>
#include "sumarr.h"

int main()
{
    int arr_1[4] = {10, 9, 8, 7};
    // , 6, 5, 4, 3, 2, 1 };
    int arr_2[4] = {1, 2, 3, 4};
    // , 5, 6, 7, 8, 9, 10 };

    if (sumarr(arr_1, arr_2, 5) == -1)
        printf("Addition was not correct\n");

    printf("Addition was correct\n");

    printf("arr_1: ");
    for (int i = 0; i < 4; ++i)
        printf("%d ", arr_1[i]);
    printf("\n");

    return 0;
}