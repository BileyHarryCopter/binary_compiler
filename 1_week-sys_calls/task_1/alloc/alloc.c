#include <stdio.h>
#include <stdlib.h>

int main()
{
    char *buffer = calloc(1240000, sizeof(char));

    free(buffer);
    return 0;
}