#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-23 12:34:37
# @File Name : solve_pydis.py
# @Description : 
"""

'''
some other interesting challenge: https://chriswarrick.com/blog/2017/08/03/gynvaels-mission-11-en-python-bytecode-reverse-engineering/
'''

import dis

def func2(c1, c2):
    tmp1 = c2
    tmp2 = c1
    return tmp1 ^ tmp2

def func():
    fp = open('flag.txt').read()
    cipher = ''
    for i in range(len(fp)):
        temp = func2(ord(fp[i]), 170)
        cipher += chr(func2(temp, i))
    print(cipher)
    with open('encrypted_flag.txt', 'w') as f:
        f.write(cipher)

print("Disassembly of func2:")
dis.dis(func2)
print('')

print("Disassembly of func:")
dis.dis(func)
