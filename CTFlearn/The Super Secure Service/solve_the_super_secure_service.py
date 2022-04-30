#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-23 15:17:11
# @File Name : solve_the_super_secure_service.py
# @Description : 
"""

import base64
import itertools
import numpy as np

msg = open('code.dat', 'rb').read()

def xor(str, val):
    ret = b''
    for i in str:
        ret += chr(i ^ val).encode()
    return ret

def xor2(str, str2):
    ret = b''
    for i in range(len(str)):
        ret += chr(str[i] ^ str2[i % len(str2)] & 15).encode()
    return ret

def decode(xored_msg, flag2, val):
    x = val % 2
    y = ord(flag2[(val - x) // 2])
    if not x: y >>= 4
    y &= 15
    return xor(xored_msg, y)
        
def hash(array, ret = 0):
    mask = 4294967295
    for val in array:
        ret = (ret * 31 + ord(val)) & mask
    return ret

dec_msg = b''

xor_value = 11
xored_msg = xor(msg, xor_value)
msg = xored_msg
sign = b'g6Gj<bQ\\w'

flag2 = [0] * 11
value = 0

for i in range(22):
    for i in range(16):
        data = xor(msg, i)
        if b"s.x = s.d" in data:
            
            dec_msg = data
            dec_msg = dec_msg.split(b'\"')

            if value % 2:
                flag2[value // 2] += i
            else:
                flag2[value // 2] += i << 4

            value = dec_msg[2].split(b', ')[2]
            value = int(value[:value.find(b')')])

            msg = base64.b64decode(dec_msg[1])
            sign = xor2(sign, dec_msg[3])
            break

flag3 = sign.decode()
print('flag3', flag3)

flag2 = ''.join([chr(i) for i in flag2])
print('flag2', flag2)

def random(seed):
    mask = 4294967295
    m_z = 1991189455
    m_w = seed
    m_z = 36969 * (m_z & 65535) + (m_z >> 16) & mask
    m_w = 18000 * (m_w & 65535) + (m_w >> 16) & mask
    result = np.int32(m_z << 16) + np.int32(m_w) & np.int32(mask)
    return result

hash_input2 = hash(flag2)
hash_input3 = hash(flag3)

from string import ascii_letters, digits
charset = ascii_letters + digits

for flag0 in range(0xfff):
    g = ~random(flag0) ^ hash_input2 ^ hash_input3
    if g == 1865600952:
        for i in range(10):
            iter = itertools.product(charset, 'R', charset)
            for flag1 in iter:
                flag = 'flag{' + str(i) + str(flag0) + '_' + ''.join(flag1) + '_' + flag2 + '_' + flag3 + '}'
                if hash(flag) == 2298682009:
                    print('flag is', flag)
        break
