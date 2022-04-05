#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-03-30 21:57:44
# @Description : 
"""

x = [None] * 8
x[0] = 1096770097
x[1] = 1952395366
x[2] = 1600270708
x[3] = 1601398833
x[4] = 1716808014
x[5] = 1734293296
x[6] = 842413104
x[7] = 1684157793

from libnum import n2s

for i in x:
	print(n2s(i).decode(), end='')
