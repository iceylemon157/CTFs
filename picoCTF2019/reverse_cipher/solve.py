#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-03-30 22:26:57
# @Description : 
"""

with open('rev_this') as f:
	flag = f.readline()
	print(flag[:8], end='')
	for j in range(8, 23):
		i = flag[j]
		if j % 2 == 1:
			print(chr(ord(i) + 2), end='')
		else:
			print(chr(ord(i) - 5), end='')
	print(flag[-1])

