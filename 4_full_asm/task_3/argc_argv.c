#include <stdio.h>

int main (char argc, char** argv)
{
    char * symb = *argv;
    while (symb != NULL)
        ++symb;

    return 0;
}