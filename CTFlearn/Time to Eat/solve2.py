#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-07 15:42:36
# @Description : 
"""

import itertools
import eat_solve

dig = '1234567890'
table = 'eat'

iter = itertools.product(dig, dig, dig, table, table, table, dig, dig, dig)

cnt = 0
for eat in iter:
    eat = ''.join(eat)
    eateat = eat_solve.EAt(str(int(eat[:3])*3) + eat[::-1], "Eat9" + eat[::-1][:3])
    if eateat == "E10a23t9090t9ae0140":
        print(eat)
        break


