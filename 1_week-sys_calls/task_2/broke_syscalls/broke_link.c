#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <fcntl.h>
#include <signal.h>
#include <errno.h>
#include <stdio.h>

int main(int argc, char **argv)
{
    if (syscall(SYS_link, "../threads/primes/primes.c", "../threads/primes/primes.c") == -1 && errno == EEXIST)
        printf("File ../threads/primes/primes.c exists\n");

    if (syscall(SYS_link, "../threads/pumba", "../threads/primes/primes.c") == -1 && errno == ENOENT)
        printf("A directory component in oldpath or newpath does not exist\n");
}