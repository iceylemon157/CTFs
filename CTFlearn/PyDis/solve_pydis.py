#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-23 13:14:03
# @File Name : solve_pydis.py
# @Description : 
"""

with open('enc.txt', 'r') as f:
    enc_flag = f.read()
    flag = ''
    for i in range(len(enc_flag)):
        tmp = (ord(enc_flag[i]) ^ i) ^ 170
        flag += chr(tmp)
    print(flag)
