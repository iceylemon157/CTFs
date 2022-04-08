#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-07 15:31:08
# @Description : 
"""

secret = 'E10a23t9090t9ae0140'
print(len(secret))
flag1, flag2 = '', ''

for i in range(len(secret)):
    if i % 3 == 0:
        flag2 += secret[i]
    else:
        flag1 += secret[i]
print(flag1, flag2)

flag = flag1[::-1][:8] + '3'
print(flag)