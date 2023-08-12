#include <stdio.h>

#include <signal.h>
#include <bits/sigaction.h>
#include <unistd.h>
#include <sys/types.h>

volatile sig_atomic_t sigusr1_flag = 0;

void handler(int sig_number)
{
    if (sig_number == SIGUSR1)
        sigusr1_flag = -1;

    return;
}

int main()
{
    pid_t current = getpid();
    printf ("PID of curent process: %d\n", current);

    struct sigaction sa = {};
    sa.sa_handler = &handler;

    for (;;)
    {
        sigaction (SIGUSR1, &sa, NULL);

        if (sigusr1_flag == -1)
            break;
    }

    return 0;
}
