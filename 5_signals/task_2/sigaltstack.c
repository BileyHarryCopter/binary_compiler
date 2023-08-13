#include <stdio.h>
#include <stdlib.h>

#include <unistd.h>
#include <sys/types.h>
#include <signal.h>

volatile sig_atomic_t sigusr1_flag = 0;

void handler(int sig_number)
{
    int local = 4;

    if (sig_number == SIGUSR1)
    {
        printf ("%p\n", &local);
        sigusr1_flag = -1;
    }

    return;
}

int main ()
{
    int local = 4;

    pid_t current = getpid();
    printf ("PID of curent process: %d\n\n\n", current);

    printf ("%p\n", &local);

    printf ("Calling sigaltstack\n");

    stack_t new_stack = {};
    new_stack.ss_sp    = calloc (MINSIGSTKSZ, sizeof(int));
    new_stack.ss_flags = 0;
    new_stack.ss_size  = MINSIGSTKSZ;

    if (sigaltstack(&new_stack, NULL) == -1)
    {
        printf ("Creation of alternative stack is failed\n");
        free(new_stack.ss_sp);
        return 0;
    }

    struct sigaction sa = {};
    sa.sa_handler = &handler;

    sigaction (SIGUSR1, &sa, NULL);

    for (;;)
    {
        if (sigusr1_flag == -1)
            break;
    }

    return 0;
}
