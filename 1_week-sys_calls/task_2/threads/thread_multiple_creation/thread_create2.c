#include <pthread.h>
#include <stdio.h>

struct char_print_parms
{
    char character;
    int count;
};

void *char_print(void *parameters)
{
    struct char_print_parms *p = (struct char_print_parms *)parameters;
    for (int i = 0; i < p->count; ++i)
        fputc(p->character, stderr);

    return NULL;
}

int main()
{
    pthread_t thread1_id;
    pthread_t thread2_id;
    struct char_print_parms thread1_args = {'x', 30000};
    struct char_print_parms thread2_args = {'o', 20000};

    pthread_create(&thread1_id, NULL, &char_print, &thread1_args);
    pthread_create(&thread2_id, NULL, &char_print, &thread2_args);

    //  Checking of finish of threads' work
    pthread_join(thread1_id, NULL);
    pthread_join(thread2_id, NULL);

    return 0;
}