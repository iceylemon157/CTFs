# Lost In The Binary

## Description

I lost a flag inside this binary, please help me to find it. If you trigger certain anti-debugging techniques, you might get false flags…. flag format: FLAG-(str)

## Solution

In the description we know that there are **anti-debugging techniques** that lead to false flag.
(I didn't understand what this means until I reversed the whole file...)

We can notice that the function ptrace looks strange.
From man page we can see:

```
The  ptrace()  system  call provides a means by which one process (the "tracer") may observe   
and control the execution of another process (the "tracee"),  and  examine  and  change  the   
tracee's  memory  and registers.  It is primarily used to implement breakpoint debugging and   
system call tracing.
```

After some google we can learn that if the code has been control by some debugger(e.g. gdb), then it will return -1.

So we should avoid the part it goto when it returns -1. (Since it would lead to false flag)

Here are 2 methods to bypass it.
1. Since ptrace will pass the result to eax, we can set a breakpoint before it and do ```set $rax=1``` in gdb to bypass it.
2. We can use some reverse engineering toolkit such as Ghidra, IDA or r2 to patch our code.

Then we notice that argc has to be greater then 4, so we have to pass 4 args in it.
(argv[0] is the file path)
```c
if ( a1 > 4 ) // a1 is argc
```
Then from IDA we can see the following code. (The code from ghidra is quite messy)

```c
if ( -24 * qword_602148 - 18 * qword_602150 - 15 * qword_602158 - 12 * qword_602160 == -18393
    && 9 * qword_602158 + 18 * (qword_602150 + qword_602148) - 9 * qword_602160 == 4419
    && 4 * qword_602158 + 16 * qword_602148 + 12 * qword_602150 + 2 * qword_602160 == 7300
    && -6 * (qword_602150 + qword_602148) - 3 * qword_602158 - 11 * qword_602160 == -8613 )
{
    qword_602178 = qword_602158 + qword_602150 * qword_602148 - qword_602160;
    sprintf(byte_602141, "%06x", qword_602178);
    v4 = strlen(byte_602141);
    MD5(byte_602141, v4, byte_602110);
    for ( i = 0; i <= 15; ++i )
    sprintf(&byte_602120[2 * i], "%02x", (unsigned __int8)byte_602110[i]);
    printf(off_602080, byte_602120);
    exit(0);
}
```
It seems like this is an equation to solve.
Using z3 we can solve this easily:
```python
a = Int('a')
b = Int('b')
c = Int('c')
d = Int('d')
s = z3.Solver()
s.add(-24 * a - 18 * b - 15 * c - 12 * d == -18393)
s.add(9 * c + 18 * (a + b) - 9 * d == 4419)
s.add(4 * c + 16 * a + 12 * b + 2 * d == 7300)
s.add(-6 * (a + b) - 3 * c - 11 * d == -8613)
print(s.check())
print(s.model())
# result = [d = 510, a = 227, c = 317, b = 115]
```

After passing these number to the program we can get our flag!

Flag : ```FLAG-21a84f2c7c7fd432edf1686215db05ea```