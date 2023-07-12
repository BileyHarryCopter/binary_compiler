#include <pthread.h>
#include <stdio.h>
/* Находим простое число с порядковым номером N, где N -- это
значение, на которое указывает параметр ARG. */
void *compute_prime(void *arg)
{
    int candidate = 2;
    int n = *((int *)arg);
    while (1)
    {
        int is_prime = 1;
        /* Проверка простого числа путем последовательного деления. */
        for (int factor = 2; factor < candidate; ++factor)
            if (candidate % factor == 0)
            {
                is_prime = 0;
                break;
            }
        /* Это то простое число, которое нам нужно? */
        if (is_prime)
        {
            if (--n == 0)
                /* Возвращаем найденное число в программу. */
                return (void *)candidate;
        }
        ++candidate;
    }
    return NULL;
}
int main()
{
    pthread_t thread;
    int which_prime = 5000;
    int prime;

    pthread_create(&thread, NULL, &compute_prime, &which_prime);
    /* Выполняем другие действия. */
    /* Дожидаемся завершения потока и принимаем возвращаемое им
    значение. */
    pthread_join(thread, (void *)&prime);
    /* Отображаем вычисленный результат. */
    printf("The %dth prime number is %d.\n", which_prime, prime);

    return 0;
}