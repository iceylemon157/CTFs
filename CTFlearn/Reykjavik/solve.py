#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-07 14:46:53
# @Description : 
"""

data = [
	0xe8, 0xff, 0xed, 0xc7, 0xce, 0xca, 0xd9, 0xc5, 0xd0, 0xee,
	0xd2, 0xce, 0xf4, 0xe7, 0x9b, 0xdd, 0xce, 0xf4, 0xe2, 0xc8,
	0xce, 0xc7, 0xca, 0xc5, 0xcf, 0xf4, 0xd6
]

print(''.join([chr(i ^ 0xab) for i in data]))