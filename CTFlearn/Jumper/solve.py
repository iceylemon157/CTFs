#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-09 11:20:34
# @File Name : solve.py
# @Description : 
"""

# fgets only read 4 bytes in this problem, while the last byte must be 0x00 (end of string)
# Thus our input is jum\x00

from pwn import p64
from libnum import s2n
flag = s2n('jum\x00'[::-1])
flag += 40
print(hex(flag))
print(hex(s2n('jump')))



