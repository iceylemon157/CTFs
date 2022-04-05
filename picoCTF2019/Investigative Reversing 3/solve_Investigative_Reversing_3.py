#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-04 21:42:19
# @File Name : solve_Investigative_Reversing_3.py
# @Description : 
"""

with open('encoded.bmp', 'rb') as f:
    f.seek(0x2d3)
    flag = ''
    for i in range(100):
        if i % 2 == 1:
            f.read(1)
            continue
        tmp = 0
        for j in range(8):
            tmp += (ord(f.read(1)) & 1) << j
        flag += chr(tmp)
    print(flag)
