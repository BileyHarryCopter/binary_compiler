#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>

int main (char argc, char** argv)
{
    char * symb = *argv;
    while (symb != NULL)
        ++symb;

    open("", O_RDONLY);

    return 0;
}