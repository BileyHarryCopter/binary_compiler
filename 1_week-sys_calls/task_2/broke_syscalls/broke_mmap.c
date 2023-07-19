#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <signal.h>
#include <errno.h>
#include <stdio.h>

int main(int argc, char **argv)
{
    if (syscall(SYS_mmap, NULL, 8, PROT_WRITE | PROT_READ, MAP_SHARED, -1, 0) == -1 && errno == EBADF)
        printf("Fd is not a valid file descriptor\n");

    if (syscall(SYS_mmap, NULL, 0, PROT_WRITE | PROT_READ, MAP_ANONYMOUS, 1, 0) == -1 && errno == EINVAL)
        printf("Length was 0\n");

    //  This might work but this was a source of denial-of-service attacks
    // if (syscall(SYS_mmap, NULL, 8, PROT_WRITE, MAP_DENYWRITE, 1, 0) == -1 && errno == ETXTBSY)
    //     printf("MAP_DENYWRITE was set but the object specified by fd is open for writing\n");
}