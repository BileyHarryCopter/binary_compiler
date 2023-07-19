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
    if (syscall(SYS_open, "../threads/primes/primes.c", O_CREAT | O_EXCL) == -1 && errno == EEXIST)
        printf("File ../threads/primes/primes.c exists\n");

    if (syscall(SYS_open, "../threads/primes/primes.c", O_DIRECTORY) == -1 && errno == ENOTDIR)
        printf("File ../threads/primes/primes.c is not a directory\n");

    if (syscall(SYS_open, "../threads/primes/primes.c", "boba_and_biba") == -1 && errno == EINVAL)
        printf("Invalid value in flags\n");
}