# Задание

### <p style="text-align: center;"> SIGUSR1 </p>

Определим тип глобальой переменной **sigusr1_flag** как **sig_atomic_t** с квалификатором **volatile** для доступа к ней из вне процесса (в данном случае при вызове функции обработчика из ядра). Также определим обработчик, который при получении сигнала **SIGUSR1** изменяет значение глобальной переменной для выхода из цикла. В **main** объявим структуру типа **sigaction** и проинициализируем поле **sa_handler** указателем на обработчик. Далее в цикле вызовем функцию **sigaction** для ловли сигнала **SIGUSR1**.

Также оставим в этой папке дизасемблер этого кода.

### <p style="text-align: center;"> SIGALTSTACK </p>

Создадим 2 файла: **sigaltstack.c** и **sigstack.c** - для проверки адресов локальных переменных при создании альтернативного стэка и без. Для последнего объявим переменную типа **stack_t** и проинициализируем её поля соответствующим образом:
```c
    stack_t new_stack = {};
    new_stack.ss_sp    = calloc (MINSIGSTKSZ, sizeof(int));
    new_stack.ss_flags = 0;
    new_stack.ss_size  = MINSIGSTKSZ;
```

После чего вызовем функцию **sigaltstack** для создания альтернативного стэка:
```c
    if (sigaltstack(&new_stack, NULL) == -1)
    {
        printf ("Creation of alternative stack is failed\n");
        free(new_stack.ss_sp);
        return 0;
    }
```

При запуске программ действительно оказывается, что адреса локальных переменных отличаются больше в случае вызова альтернативного стэка:
```c
    ./sigaltstack:
    PID of curent process: 9760


    0x7ffe8470abc8                  //  &local from main
    Calling sigaltstack
    0x7ffe8470a3a4                  //  &local from handler
```

```c
    ./sigstack:
    PID of curent process: 9939


    0x7ffee2592868                  //  &local from main
    0x7ffee2592064                  //  &local from handler
```

### <p style="text-align: center;"> Тестирование на ассемблере </p>

Проинициализируем струткуру типа **ss_info** как локальную переменную для функции **_start** c выделением места в [стэке](https://dzen.ru/a/YOqZ1nm1lnXxye29). Размер структуры 24 байта, или 0x18 в hex:
```c
#   Initialization of alternative stack.
    sub  $0x18,         %rsp
    movq $0x0,          %rsp       //
    movq $0x0,          8(%rsp)    //   stack_t new_stack = {};
    movq $0x0,          16(%rsp)   //
    movq $ss_mem,       %rsp       //   new_stack.ss_sp    = calloc (SIGSTKSZ, sizeof(int));
    movq $0x0,          8(%rsp)    //   new_stack.ss_flags = 0;
    movq $SIGSTKSZ,     16(%rsp)   //   new_stack.ss_size  = SIGSTKSZ;
```

Аналогичным образом инициализируем переменную типа **struct** **sigaction**:
```c
#   Initialization of sigaction:
    sub  $0x20,         %rsp
    movq $0x0,          %rsp        //  
    movq $0x0,          8(%rsp)     //  
    movq $0x0,          16(%rsp)    //  struct sigaction sa = {};
    movq $0x0,          24(%rsp)    //
    movq $handler,      %rsp        //  sa.sa_handler = &handler;
    movq $SA_ONSTACK,   16(%rsp)    //  sa.sa_flags   = SA_ONSTACK;
```

