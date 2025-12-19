#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <math.h>
#include <stdlib.h>

int isPrime(int x) {
    if (x < 2) return 0;
    for (int i = 2; i <= sqrt(x); i++)
        if (x % i == 0) return 0;
    return 1;
}

int main() {
    int n = 10;
    int fd[2];
    pid_t pid;

    pipe(fd);
    pid = fork();

    if (pid == 0) {
        close(fd[0]);

        int fib[n];
        fib[0] = 0;
        fib[1] = 1;

        for (int i = 2; i < n; i++)
            fib[i] = fib[i - 1] + fib[i - 2];

        write(fd[1], fib, sizeof(fib));
        close(fd[1]);

        printf("Child Process (PID=%d): Fibonacci generated\n", getpid());
        exit(0);
    } 
    else {
        wait(NULL);
        close(fd[1]);

        int fib[n];
        read(fd[0], fib, sizeof(fib));
        close(fd[0]);

        printf("\nParent Process (PID=%d): Fibonacci Series:\n", getpid());
        for (int i = 0; i < n; i++)
            printf("%d ", fib[i]);

        printf("\n\nPrime Fibonacci Numbers with Positions:\n");
        for (int i = 0; i < n; i++)
            if (isPrime(fib[i]))
                printf("Prime Fibonacci Number %d found at position %d\n", fib[i], i);
    }
    return 0;
}

