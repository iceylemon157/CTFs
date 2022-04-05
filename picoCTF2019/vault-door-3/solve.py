#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-03-30 21:00:13
# @Description : 
"""

enc_flag = "jU5t_a_sna_3lpm12g94c_u_4_m7ra41"
flag = [' '] * 32

for i in range(8):
	flag[i] = enc_flag[i]
for i in range(8, 16):
	flag[23 - i] = enc_flag[i]
for i in range(16, 32, 2):
	flag[46 - i] = enc_flag[i]
for i in range(31, 15, -2):
	flag[i] = enc_flag[i]

print(''.join(flag))

