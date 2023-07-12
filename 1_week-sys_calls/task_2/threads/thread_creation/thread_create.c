#include <stdio.h>
#include <pthread.h>

//  Put 'x' into the stderr in the infinite circle
void *print_xs(void *unseed)
{
    for (int i = 0; i < 1000; i++)
        fputc('x', stderr);
    return NULL;
}

int main()
{
    pthread_t thread_id;

    pthread_create(&thread_id, NULL, &print_xs, NULL);

    for (int i = 0; i < 1000; i++)
        fputc('o', stderr);

    printf("\n");

    return 0;
}