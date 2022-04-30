# Reverse Me

## Description

A simple reverse engineering challenge.

## Solution

The binary is quite simple.
It encrypts our input and shuffle it and check if it match the flag.

So what we have to do is to reverse the encrypt and shuffle function.

### Encrypt

It firstly declare a key. And in the loop we can see that this encryption is doing xor by ```0x01030307deadbeef``` in cycle. Hence it's simple to decrypt.

### Shuffle

This function is simple and can just observe from running the code.
It changes the odd byte and even byte, i.e. swap(enc[0], enc[1]), swap(enc[2], enc[3]).

As the above, we can easily obtain the flag by the following script.

```python
key2 = [0x4257, 0x454b, 0xbbcc, 0xcc81, 0x7a71, 0x6671, 0xbbdf, 0xcd86, 0x6f64, 0x5c6e, 0xadf2, 0xd89a, 0x6f7e]

for val in key2:
    tmp = val & 0xff
    val >>= 0x8
    val += tmp << 0x8

key = 0x01030307deadbeef

key_list = []
while key:
    key_list.insert(0, key & 0xffff)
    key >>= 0x10

from libnum import n2s

flag = b''
for a, b in zip(key2, key_list * 10):
    flag += n2s(a ^ b)

print(flag)
```

## Remark

It took me lots of time 'cause ghidra are giving me wrong decompiled code...

Not after I dynamically reverse the code that I discovered that.

Maybe next time I should do it dynamically before I actually watch the decompiled code gen by ghidra.