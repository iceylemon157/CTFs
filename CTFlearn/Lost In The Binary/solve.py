#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-09 13:35:22
# @File Name : solve.py
# @Description : 
"""

from libnum import n2s

main_address = 0x4007d7

print(n2s(0x34775f31).decode())

sth = '7Yq2hrYRn5Y`jga'
key = ''.join(chr(ord(i) ^ 6) for i in sth)
print(key)

from z3 import Int
import z3

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