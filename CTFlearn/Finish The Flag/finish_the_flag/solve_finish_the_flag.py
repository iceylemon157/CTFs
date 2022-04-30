#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-29 00:59:09
# @File Name : solve_finish_the_flag.py
# @Description : 
"""

sflag = [0x43, 0x54, 0x46, 0x6c, 0x65, 0x61, 0x72, 0x6e, 0x7b, 0x0a]
print(''.join([chr(i) for i in sflag]).strip('\n'), end='')
eflag = [0x46, 0x45, 0x48, 0x61, 0x24, 0x27, 0x6a]
print(''.join([chr(i ^ 0x17) for i in eflag]))