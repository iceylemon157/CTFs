#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-11 00:25:32
# @File Name : Recklinghausen.py
# @Description : 
"""

from libnum import n2s

flag = ''
msg5 = [0x2a3d, 0x1f1b1238, 0x2c05100c, 0x180c160b, 0xd0a0d1b, 0x121b170e, 0x1b38211b, 0x8170a0d, 0x3121f]
for i in msg5:
    val = i
    while val:
        tmp = val & 0xff
        val >>= 0x08
        flag += chr(tmp ^ 0x7e)
print(flag)

