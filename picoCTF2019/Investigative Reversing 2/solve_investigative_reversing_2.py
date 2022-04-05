#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-04 21:04:36
# @File Name : solve_investigative_reversing_2.py
# @Description : 
"""

f = open('encoded.bmp', 'rb')
data = f.readline()
f.close()

data = data[2000:]
cnt = 0

flag = ''

for i in range(50):
    tmp = 0
    for j in range(8):
        tmp += (data[cnt] & 1) << j
        cnt += 1
    tmp += 5
    flag += chr(tmp)
print(flag)
