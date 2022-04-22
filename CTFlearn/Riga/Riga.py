#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-12 15:40:43
# @File Name : Riga.py
# @Description : 
"""

import string
from libnum import n2s

msg0 = [
	0x35, 0x29
]

to_xor = 0x2929292929292929

pickles0_i = [
	0xb69cae9f, 0xebefb9bd, 0xecb99ee6, 0xb9e3b9b3, 0xe389a8bb, 0x96bbefbd, 0x89e3edb9, 0xe4b9,        
  	0x280e5b10, 0x613e3c3a, 0x3c32097b, 0x373d7b3a
]
pickles0 = []
pickles1_i = [
	0xb593ad9e, 0xeaeeb8bc, 0xb8ba90e5, 0xe3edbaeb, 0xbaeebce8, 0xeeb8ebed, 0xfbec, 0x0, 0xb69cae9f, 
	0xebefb9bd, 0xecb99ee6, 0xb9e3b9b3, 0xe389a8bb, 0x96bbefbd, 0x89e3edb9, 0xe4b9, 0x280e5b10,
	0x613e3c3a, 0x3c32097b, 0x373d7b3a, 0x3c3a
]
pickles1 = []
pickles2_i = [
	0xeb92ac9d, 0xe9edbfb3, 0x94b997e4, 0xb9b3e1e8, 0xe1e3bf94, 0xfaffbfb7, 0x0, 0x0, 0xb593ad9e, 
  	0xeaeeb8bc, 0xb8ba90e5, 0xe3edbaeb, 0xbaeebce8, 0xeeb8ebed, 0xfbec, 0x0, 0xb69cae9f, 0xebefb9bd,       
  	0xecb99ee6, 0xb9e3b9b3, 0xe389a8bb
]
pickles2 = []

temp_cnt = 0
while len(pickles0) < 0x1e:
	data = pickles0_i[temp_cnt]
	while data:
		val = data & 0xff
		data >>= 0x8
		pickles0.append(val)
	temp_cnt += 1
pickles0 = pickles0[:0x1e]

temp_cnt = 0
while len(pickles1) < 0x1a:
	data = pickles1_i[temp_cnt]
	while data:
		val = data & 0xff
		data >>= 0x8
		pickles1.append(val)
	temp_cnt += 1
pickles1 = pickles1[:0x1a]

temp_cnt = 0
while len(pickles2) < 0x18:
	data = pickles2_i[temp_cnt]
	while data:
		val = data & 0xff
		data >>= 0x8
		pickles2.append(val)
	temp_cnt += 1
pickles2 = pickles2[:0x18]

flag = 'CTFlearn{flag}'.ljust(0x1e, 'a')

charset = string.ascii_lowercase + string.ascii_uppercase + string.digits + '{}_'
print(charset)

def get_flag0():
	flag = ''
	def check(ch, i):
		val = ord(ch)
		ch = val + 0x11
		if ch < 0x7f:
			if ch < 0x20:
				ch = val + 0x70
			if (ch ^ 0xcb) != pickles0[i]:
				return 0
		elif ((val - 0x4e) ^ 0xcb) != pickles0[i]:
			return 0
		return 1
	for i in range(0x1e):
		for ch in charset:
			if check(ch, i):
				flag += ch
	print(flag, len(flag))

def get_flag1():
	flag = ''
	def check(ch, i):
		val = ord(ch)
		ch = val + 0x12
		if ch < 0x7f:
			if ch < 0x20:
				ch = val + 0x71
			if (ch ^ 0xcb) != pickles1[i]:
				return 0
		elif ((val - 0x4d) ^ 0xcb) != pickles1[i]:
			return 0
		return 1
	for i in range(0x1a):
		for ch in charset:
			if check(ch, i):
				flag += ch
	print(flag, len(flag))

def get_flag2():
	flag = ''
	def check(ch, i):
		val = ord(ch)
		ch = val + 0x13
		if ch < 0x7f:
			if ch < 0x20:
				ch = val + 0x72
			if (ch ^ 0xcb) != pickles2[i]:
				return 0
		elif ((val - 0x4c) ^ 0xcb) != pickles2[i]:
			return 0
		return 1
	for i in range(0x18):
		for ch in charset:
			if check(ch, i):
				flag += ch
	print(flag, len(flag))

get_flag0()
get_flag1()
get_flag2()


