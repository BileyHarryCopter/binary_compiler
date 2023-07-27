#include <stdio.h>

int func0()
{
    printf("func0 was called with no arguments\n");
}

int func1(int arg1)
{
    printf("func1 was called with 1 argument\n");
}

int func2(int arg1, int arg2)
{
    printf("func2 was called with 2 arguments\n");
}

int func3(int arg1, int arg2, int arg3)
{
    printf("func3 was called with 3 arguments\n");
}

int func4(int arg1, int arg2, int arg3, int arg4)
{
    printf("func4 was called with 4 arguments\n");
}

int func5(int arg1, int arg2, int arg3, int arg4, int arg5)
{
    printf("func5 was called with 5 arguments\n");
}

int func6(int arg1, int arg2, int arg3, int arg4, int arg5, int arg6)
{
    printf("func6 was called with 6 arguments\n");
}

int func7(int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7)
{
    printf("func7 was called with 7 arguments\n");
}

int func8(int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8)
{
    printf("func8 was called with 8 arguments\n");
}

int func9(int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9)
{
    printf("func9 was called with 9 arguments\n");
}

int func10(int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10)
{
    printf("func10 was called with 10 arguments\n");
}

int main(char argc, char **argv)
{
    func0();
    func1(1);
    func2(1, 2);
    func3(1, 2, 3);
    func4(1, 2, 3, 4);
    func5(1, 2, 3, 4, 5);
    func6(1, 2, 3, 4, 5, 6);
    func7(1, 2, 3, 4, 5, 6, 7);
    func8(1, 2, 3, 4, 5, 6, 7, 8);
    func9(1, 2, 3, 4, 5, 6, 7, 8, 9);
    func10(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

    return 0;
}