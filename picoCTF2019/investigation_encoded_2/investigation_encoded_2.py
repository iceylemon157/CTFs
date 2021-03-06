#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-06 02:53:36
# @File Name : investigation_encoded_2.py
# @Description : 
"""

from curses.ascii import isdigit
from pwn import *

badchar = 0
dic = {}

indexTable = [
  0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x12, 0x00,
  0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x3c, 0x00, 0x00, 0x00,
  0x52, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x78, 0x00,
  0x00, 0x00, 0x8e, 0x00, 0x00, 0x00, 0x9e, 0x00, 0x00, 0x00,
  0xb4, 0x00, 0x00, 0x00, 0xc8, 0x00, 0x00, 0x00, 0xda, 0x00,
  0x00, 0x00, 0xea, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x00, 0x00,
  0x0e, 0x01, 0x00, 0x00, 0x1e, 0x01, 0x00, 0x00, 0x34, 0x01,
  0x00, 0x00, 0x48, 0x01, 0x00, 0x00, 0x5a, 0x01, 0x00, 0x00,
  0x6a, 0x01, 0x00, 0x00, 0x72, 0x01, 0x00, 0x00, 0x80, 0x01,
  0x00, 0x00, 0x8c, 0x01, 0x00, 0x00, 0x9a, 0x01, 0x00, 0x00,
  0xaa, 0x01, 0x00, 0x00, 0xbc, 0x01, 0x00, 0x00, 0xc8, 0x01,
  0x00, 0x00, 0xd6, 0x01, 0x00, 0x00, 0xe0, 0x01, 0x00, 0x00,
  0xea, 0x01, 0x00, 0x00, 0xf0, 0x01, 0x00, 0x00, 0x00, 0x02,
  0x00, 0x00, 0x0a, 0x02, 0x00, 0x00, 0x16, 0x02, 0x00, 0x00,
  0x22, 0x02, 0x00, 0x00, 0x30, 0x02, 0x00, 0x00, 0x34, 0x02,
  0x00, 0x00
]

secret = [
    0x8b, 0xaa, 0x2e, 0xee, 0xe8, 0xbb, 0xae, 0x8e, 0xbb, 0xae,
    0x3a, 0xee, 0x8e, 0xee, 0xa8, 0xee, 0xae, 0xe3, 0xaa, 0xe3,
    0xae, 0xbb, 0x8b, 0xae, 0xb8, 0xea, 0xae, 0x2e, 0xba, 0x2e,
    0xae, 0x8a, 0xee, 0xa3, 0xab, 0xa3, 0xbb, 0xbb, 0x8b, 0xbb,
    0xb8, 0xae, 0xee, 0x2a, 0xee, 0x2e, 0x2a, 0xb8, 0xaa, 0x8e,
    0xaa, 0x3b, 0xaa, 0x3b, 0xba, 0x8e, 0xa8, 0xeb, 0xa3, 0xa8,
    0xaa, 0x28, 0xbb, 0xb8, 0xae, 0x2a, 0xe2, 0xee, 0x3a, 0xb8,
    0x00
]

def getV(x):
    tmp = x
    if x < 0:
        tmp = x + 7
    bVar1 = x >> 0x37
    return secret[tmp >> 3] >> (7 - ((x + (bVar1 >> 5) & 7) - (bVar1 >> 5)) & 0x1f) & 1

def char_encode(flag_ch):
    global indexTable
    flag_cp = flag_ch
    if flag_ch == 0x20:
        flag_ch = 0x85
    elif isdigit(flag_ch):
        flag_ch += ord('K')
    flag_ch -= 0x61
    ivar2 = 0
    if flag_ch != '$':
        ivar2 = (flag_ch + 0x12) % 0x24
        bvar1 = ivar2 >> 0x1f
        flag_ch = (ivar2 ^ bvar1) - bvar1
    R = sum([indexTable[(flag_ch + 1) * 4 + i] << (8 * i) for i in range(4)])
    L = sum([indexTable[flag_ch * 4 + i] << (8 * i) for i in range(4)])
    ret = ''
    for i in range(L, R):
        tmp = getV(i)
        ret += str(tmp)
    dic[ret] = chr(flag_cp)

for i in range(ord('a'), ord('z') + 1):
    char_encode(i)
for i in range(ord('0'), ord('9') + 1):
    char_encode(i)
char_encode(0x20)

flag = ''

def solve():
    global flag
    with open('image01', 'rb') as f:
        data = f.readline()
        bin_data = bits_str(data)
        while bin_data:
            for i in dic:
                if bin_data.startswith(i):
                    flag += dic[i]
                    bin_data = bin_data[len(i):]
    print(flag)
solve()