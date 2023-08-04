# Задание

### <p style="text-align: center;"> Intrinsics </p>

Подключим все библиотеки с интринсиками с помощью **#include <immintrin.h>**, так как в данный момент внутри этого хедера находятся хедера всех интринсиков. Также укажем опцию **-march=tigerlake**

Реализации функции поиска минимального элемента в массиве через использование интринсиков и через ассемблерные вставки приведены в файлах **argmin.c** и **argmin_asm.c** соответственно. Единственный пока что непонятный для момент связан с представлением массива 16 битных **int-ов** через 1 указатель на 128-и битный **int**:
```
    // __uint128_t * addr = (__uint128_t *) (array + 8 * i);        ----- works incorrectly
        
    __m128i addr = _mm_loadu_si128((__m128i *) (array + 8 * i));    ----- works appropriate
```


### <p style="text-align: center;"> Ассемблерные вставки </p>

### Функции прошлой недели

Чтобы полагаться на регистры, специально выделяемые компилятором для ассемблерной вставки, в ограничениях на тип **InputOperands** поставим регистры общего назначения c помощью "**r**". При этом **OutputOperand** свяжем по адресу переменной результата:
```
    __asm__
    (
        "add  %[a],  %[c_arg]    \n\t"
        "add  %[b],  %[c_arg]    \n\t"
        : [c_arg]"=m"(c)
        : [a]"r"(a), [b]"r"(b)
        :
    );
```

Практически аналогичным образом поступим для сложения вещественных чисел, с тем лишь исключением, что в этом случае **InputOperands** будут иметь ограничения **f**, т.е. являться регистрами стэка **FPU**:
```
    __asm__
    (
        "faddp  %[b], %[a]   \n\t"
        "fstpt        %[c]   \n\t"
        : [c]"=m"(c)
        : [a]"f"(a), [b]"f"(b)
        :
    );
```