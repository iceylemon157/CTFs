#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-04 22:04:54
# @File Name : solve_Investigative_Reversing_4.py
# @Description : 
"""

from libnum import n2s
from pwn import *

print(p64(0x635f31306d657449))
print(p64(0x706d622e70))
print(p64(0x622e31306d657449))
print(p64(0x706d))

flag = ''

for id in range(5, 0, -1):
    with open(f'Item0{id}_cp.bmp', 'rb') as f:
        f.seek(0x7e3)
        for i in range(50):
            if i % 5:
                f.read(1)
                continue
            tmp = 0
            for j in range(8):
                tmp += (ord(f.read(1)) & 1) << j
            flag += chr(tmp)
print(flag)
