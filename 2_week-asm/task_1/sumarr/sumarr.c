#include "sumarr.h"

//  Функция сложения двух массивов поэлементно с помещением результата в первый массив
int sumarr(int *arr_1, int *arr_2, unsigned size)
{
    if (size == 0)
        return -1;

    for (int i = 0; i < size; ++i)
        arr_1[i] += arr_2[i];

    return 0;
}