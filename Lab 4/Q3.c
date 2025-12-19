#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid;

    pid = fork();
    if (pid == 0) {
        printf("First Child: PID=%d PPID=%d\n", getpid(), getppid());
        execlp("cp", "cp", "file1", "file2", NULL);
        exit(1);
    }
    sleep(1);
    wait(NULL);

    pid = fork();
    if (pid == 0) {
        printf("Second Child: PID=%d PPID=%d\n", getpid(), getppid());
        execlp("cat", "cat", "file2", NULL);
        exit(1);
    }
    sleep(1);
    wait(NULL);

    pid = fork();
    if (pid == 0) {
        printf("Third Child: PID=%d PPID=%d\n", getpid(), getppid());
        execlp("sh", "sh", "-c", "sort file2 | tac", NULL);
        exit(1);
    }
    sleep(1);
    wait(NULL);

    printf("Parent Process Completed: PID=%d\n", getpid());
    return 0;
}

