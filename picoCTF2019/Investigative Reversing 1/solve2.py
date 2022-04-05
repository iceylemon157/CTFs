#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-04 20:28:30
# @Description : Another solution, this solution use memory map instead of copy by hand
"""
import mmap
import os

def memory_map(filename, access=mmap.ACCESS_READ):
    size = os.path.getsize(filename)
    fd = os.open(filename, os.O_RDONLY)
    return mmap.mmap(fd, size, access=access)

def get_str(name):
    PNG_CRC_LEN = 4
    temp = memory_map(name)
    temp = temp[temp.find(b'IEND') + len(b'IEND') + PNG_CRC_LEN:]
    return temp

m = [get_str('mystery.png')]
m.append(get_str('mystery2.png'))
m.append(get_str('mystery3.png'))

flag = [0] * 0x1a

cnt = [0] * 3

def get(pos, x, add=0):
    x -= 1
    flag[pos] = m[x][cnt[x]] + add
    cnt[x] += 1

get(1, 3)
get(0, 2, -0x15)
get(2, 3)
get(5, 3)
get(4, 1)
get(3, 2, -0x4)
for i in range(6, 10):
    get(i, 1)
for i in range(10, 0xf):
    get(i, 3)
for i in range(0xf, 0x1a):
    get(i, 1)

print(''.join(map(chr, flag)))

