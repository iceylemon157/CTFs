#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-03 12:11:27
# @Description : 
"""

with open('mystery', 'rb') as f:
	data = f.read()
	print(data[:4])
	magic = b'\x89\x50\x4e\x47'
	print(magic)
	print([a - b for a, b in zip(data[:4], magic)])



