# picoCTF2019 ASM4
## Evil Solution
** Just run up the asm file **

1. Run it through x86 environment (e.g. Linux VMWare)
2. Modify the asm code to proper syntax (test1.S)
3. Note that since the asm has jmp command in it, asm need to be separate into blocks
4. Compile and run it w/ the following command

```
gcc -masm=intel -m32 -c test1.S -o test.o
gcc -m32 -c main.c -o main.o
gcc -m32 test.o main.o -o main
./main
```

## Stupid Solution

Try to understand the source code. (To do)