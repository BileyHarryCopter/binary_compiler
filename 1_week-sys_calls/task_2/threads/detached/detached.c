#include <pthread.h>

void *thread_function(void *thread_arg)
{
    /* Тело потоковой функции... */
}

int main()
{
    pthread_attr_t attr;
    pthread_t thread;

    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    pthread_create(&thread, &attr, &thread_function, NULL);
    pthread_attr_destroy(&attr);
    /* Тело основной программы... */
    /* Дожидаться завершения второго потока нет необходимости. */
    return 0;
}