#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-07 16:12:53
# @Description : 
"""

import numpy as np

# Simple tutorial to Java Bytecode https://dzone.com/articles/introduction-to-java-bytecode
# iload_id: load local variable id(an integer) to stack
# istore_id: pop the top of stack and make it local variable id

def checkNum(iload_0):
    istore_1 = np.int32(iload_0 << 3)
    istore_2 = np.int32(iload_0 ^ 525024598)
    result = np.int32(istore_1 ^ istore_2)
    if result == -889275714:
        print("flag is", iload_0)

tmp = np.uint32(-889275714)
tmp ^= np.uint32(525024598)
bin_data = list(bin(tmp)[2:])
flag = bin_data[-3:][::-1]

for i in range(len(bin_data) - 4, -1, -1):
    bit = bin_data[i]
    bit = int(bit) ^ int(bin_data[i + 3])
    flag += [str(bit)]
    bin_data[i] = str(bit)

flag = flag[::-1]
print('flag is', np.int32(int(''.join(flag), 2)))
