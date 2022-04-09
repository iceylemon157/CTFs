#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-09 10:52:04
# @File Name : solve.py
# @Description : 
"""

buffer = 0x80041c0

main_address_wsl = 0x8001100
main_address_ghidra = 0x00101100
call_msg3_address = 0x00101155
print(hex(main_address_wsl + call_msg3_address - main_address_ghidra))

print('a' * 0x1e)
# print()
