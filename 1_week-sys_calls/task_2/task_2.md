# Задание 2
Код программ приведен в соответствующих директориях.

### Разбор вывода strace листингов 4.1 - 4.5 (treads)

В **листинге 4.1** происходит создание дочернего потока с помощью вызова **clone3**, с помощью которого можно породить не только дочерний процесс, но и множество потоков:
```
NOTES
       One  use of these systems calls is to implement threads: multiple flows of control in a
       program that run concurrently in a shared address space.
```
Причем перед этим происходит обработка пришедшего сигнала на создание нового потока с помощью вызовов **rt_sigaction** и **rt_sigprocmask**.

В **листинге 4.2** происходит создание 2-х потоков способом, аналогичным с примером 4.1. Однако завершение main происходит сразу после создания **thread2_id**. При добавлении вызова функции pthread_join для обоих потоков в **листинге 4.3** происходит вызов **futex**, необходимый для блокировки родительского потока, пока не пройдет нужное кол-во секунд, заданное в качестве аргемента вызова. Мы видим только 1 вызов **futex** для первого потока, потому что вызов для второго потока происходит уже в дочернем потоке по отношению к тому, из которого происходит вызов команды **strace**.

В **листинге 4.4** происходят последовательные вызовы создания потока для вычисления нужного простого числа, ожидания результата, его записи в **stdout**.

В **листинге 4.5**, как и ожидалось, сразу после создания отсоединенного потока происходит выход из main.

### Взлом сисколов

Для каждого из данных системных вызовов номер для вызова через **syscall** определяется как SYS_xxx, где xxx - название системного вызова. В **broke_syscalls** представлены варианты вызвовов **syscall**