#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-05 00:30:58
# @File Name : solve_investigation_encoded_1.py
# @Description : 
"""



'''
uint getValue(int param_1)

{
  byte bVar1;
  int iVar2;
  
  iVar2 = param_1;
  if (param_1 < 0) {
    iVar2 = param_1 + 7;
  }
  bVar1 = (byte)(param_1 >> 0x37);
  return (int)(uint)(byte)secret[iVar2 >> 3] >> (7 - (((char)param_1 + (bVar1 >> 5) & 7) - (bVar1 >> 5)) & 0x1f) & 1;
}
'''

t_flag = 'Fubuki'.replace('_', ' ')

secret = [
  0x31, 0xed, 0x49, 0x89, 0xd1, 0x5e, 0x48, 0x89, 0xe2, 0x48,
  0x83, 0xe4, 0xf0, 0x50, 0x54, 0x4c, 0x8d, 0x05, 0x6a, 0x05,
  0x00, 0x00, 0x48, 0x8d, 0x0d, 0x03, 0x05, 0x00, 0x00, 0x48,
  0x8d, 0x3d, 0x4f, 0x03, 0x00, 0x00, 0xff
]

matrix = [
  0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x00,
  0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00,
  0x14, 0x00, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x22, 0x00,
  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2c, 0x00, 0x00, 0x00,
  0x0c, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x0c, 0x00,
  0x00, 0x00, 0x3c, 0x00, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x00,
  0x48, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x52, 0x00,
  0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00,
  0x0c, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x0c, 0x00,
  0x00, 0x00, 0x74, 0x00, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x00,
  0x80, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x8a, 0x00,
  0x00, 0x00, 0x0e, 0x00, 0x00, 0x00, 0x92, 0x00, 0x00, 0x00,
  0x0e, 0x00, 0x00, 0x00, 0xa0, 0x00, 0x00, 0x00, 0x10, 0x00,
  0x00, 0x00, 0xae, 0x00, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x00,
  0xbe, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0xc8, 0x00,
  0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0xd0, 0x00, 0x00, 0x00,
  0x0a, 0x00, 0x00, 0x00, 0xd6, 0x00, 0x00, 0x00, 0x0c, 0x00,
  0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x00,
  0xec, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00, 0xf8, 0x00,
  0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x06, 0x01, 0x00, 0x00,
  0x0e, 0x00, 0x00, 0x00, 0x16, 0x01, 0x00, 0x00, 0x04, 0x00,
  0x00, 0x00, 0x24, 0x01, 0x00, 0x00
]


remain = 7
buffChar = 0


def getV(x):
    ret = x
    if x < 0:
        ret = x + 7
    tmp = x >> 0x37
    return (secret[ret >> 3] >> (7 - ((x + (tmp >> 5) & 7) - (tmp >> 5) & 0x1f)) & 1)

flag = b''

def save(x):
    global remain, buffChar, flag
    buffChar |= x
    if not remain:
        remain = 7
        # print(buffChar, end=)
        flag += bytes([buffChar])
        buffChar = 0
    else:
        buffChar *= 2
        remain -= 1

def encode():
    for i in range(len(t_flag)):
        ch = ord(t_flag[i])
        if 0x41 <= ch <= 0x5a:
            ch += 0x20
        a = (ch - 0x61) * 8 + 4
        b = a + (ch - 0x61) * 8
        # print(a, b)
        for i in range(a, b):
            tmp = getV(i)
            save(tmp)

encode()
print(flag)

with open('output', 'rb') as f:
    data = f.readlines()
    print(data)
    
