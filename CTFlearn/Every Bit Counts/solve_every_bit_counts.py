#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-29 16:08:34
# @File Name : solve_every_bit_counts.py
# @Description : 
"""

with open('disas.asm', 'r') as f:
    data = f.read()
    
    def find_nth(string, substring, n):
        result = string.find(substring)
        while result >= 0 and n > 1:
            result = string.find(substring, result + 1)
            n -= 1
        return result

    data = data[find_nth(data, '400486', 2):data.find('4035c2')]
    data = data.split('\n')

    flag = [0] * 0x34

    pointer = 3
    while pointer <= len(data) + 1:
        # position
        val = 0
        string = data[pointer]
        if 'add    rcx,' in string:
            string = string[string.find('add    rcx,') + len('add    rcx,'):].strip('\n')
            val = int(string, 16)
        else:
            pointer -= 1
        
        # and_value
        pointer += 2
        string = data[pointer]
        string = string[string.find('and    eax,') + len('and    eax,'):].strip('\n')
        and_value = int(string, 16)

        # je/jne
        pointer += 2
        string = data[pointer]
        if 'je' in string:
            flag[val] += and_value

        pointer += 4

    print(''.join(list(map(chr, flag))))
