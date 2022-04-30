#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-23 11:40:42
# @File Name : solve_reverse_me.py
# @Description : 
"""

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