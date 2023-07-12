#include <stdio.h>

int main()
{
    FILE *file = fopen("newfile", "r");

    fclose(file);
    return 0;
}