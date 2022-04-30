# Every Bit Counts

## Solution

We firstly decompile the code. We can notice that the code is make up of numerous condition.

After a little observation and the hint from the description, we can know that those condition are checking every bit in the flag.

So what we have to do is to fulfill every condition to retrieve our flag.

This can be done easily by the python script below:

```python
with open('disas.asm', 'r') as f:
    data = f.read()
    
    def find_nth(string, substring, n):
        result = string.find(substring)
        while result >= 0 and n > 1:
            result = string.find(substring, result + 1)
            n -= 1
        return result

    data = data[find_nth(data, '400486', 2):data.find('4035c2')]
    data = data.split('\n')

    flag = [0] * 0x34

    pointer = 3
    while pointer <= len(data) + 1:
        # position
        val = 0
        string = data[pointer]
        if 'add    rcx,' in string:
            string = string[string.find('add    rcx,') + len('add    rcx,'):].strip('\n')
            val = int(string, 16)
        else:
            pointer -= 1
        
        # and_value
        pointer += 2
        string = data[pointer]
        string = string[string.find('and    eax,') + len('and    eax,'):].strip('\n')
        and_value = int(string, 16)

        # je/jne
        pointer += 2
        string = data[pointer]
        if 'je' in string:
            flag[val] += and_value

        pointer += 4

    print(''.join(list(map(chr, flag))))
```

Since the code is ugly, using angr sounds better.
There is another solution with angr, there is a python script in the same folder.
