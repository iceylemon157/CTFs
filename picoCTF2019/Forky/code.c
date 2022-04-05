#include <stdio.h>
#include <unistd.h>
#include <sys/mman.h>

int main() {
    int *var1;
    var1 = (int *)mmap((void *)0x0,4,3,0x21,-1,0);
    *var1 = 0x3b9aca00;
    fork();
    fork();
    fork();
    fork();
    *var1 = *var1 + 0x499602d2;
    printf("%d\n", *var1);
    return 0;
}