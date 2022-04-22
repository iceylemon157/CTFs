#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-10 23:48:45
# @File Name : Raspberry.py
# @Description : 
"""

flag = [0x2b, 0xcb^0x8d, 0x94-0x22, 0x53+0x22,0x89d//0x15,0x15*5+0xb,0x62>>1,0x32, 0x330>>4]
flag = 'CTFlearn{' + ''.join(map(chr, flag))+ '}'
print(flag)
print(chr(51))


