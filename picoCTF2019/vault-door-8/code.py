#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-03-30 22:06:16
# @Description : 
"""

secret = [0xF4, 0xC0, 0x97, 0xF0, 0x77, 0x97, 0xC0, 0xE4, 0xF0, 0x77, 0xA4, 0xD0, 0xC5, 0x77, 0xF4, 0x86, 0xD0, 0xA5, 0x45, 0x96, 0x27, 0xB5, 0x77, 0xD2, 0xD0, 0xB4, 0xE1, 0xC1, 0xE0, 0xD0, 0xD0, 0xE0]

def sw(c, p1, p2):
	'''
        /* Move the bit in position p1 to position p2, and move the bit
        that was in position p2 to position p1. Precondition: p1 < p2 */
	'''
	mask1 = (1 << p1);
	mask2 = (1 << p2);
	bit1 = (c & mask1);
	bit2 = (c & mask2);
	rest = (c & ~(mask1 | mask2));
	shift = (p2 - p1);
	result = ((bit1 << shift) | (bit2 >> shift) | rest);
	return result

def scramble(x):
	x = sw(x, 6, 7)
	x = sw(x, 2, 5)
	x = sw(x, 3, 4)
	x = sw(x, 0, 1)
	x = sw(x, 4, 7)
	x = sw(x, 5, 6)
	x = sw(x, 0, 3)
	x = sw(x, 1, 2)
	return x

for i in secret:
	print(chr(scramble(i)), end='')


'''
1 2
0 3
5 6
4 7
0 1
3 4
2 5
6 7
01234567
02134567
32104567
32107654
23107654
23170654
23670154
23670145

'''
