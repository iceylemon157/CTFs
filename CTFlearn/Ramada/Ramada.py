#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-10 23:10:19
# @File Name : Ramada.py
# @Description : 
"""

print(0x13693)

from libnum import nroot
print(nroot(0x13693, 3), 43 ** 3)
data = [0x13693, 0x6b2c0, 0x11a9f9, 0x157000, 0x1cb91, 0x1bb528, 0x1bb528, 0xded21, 0x144f38, 0xfb89d, 
0x169b48, 0xd151f, 0x8b98b, 0x17d140, 0xded21, 0x1338c0, 0x1338c0, 0x11a9f9, 0x1b000, 0x144f38, 0x1734eb]

flag = [chr(nroot(i, 3)) for i in data]

print(''.join(flag))

