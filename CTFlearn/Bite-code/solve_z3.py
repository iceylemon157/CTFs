#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-08 14:02:53
# @File Name : solve_z3.py
# @Description : 
"""

from z3 import *
import numpy as np

x = BitVec('x', 32)
solve((x << 3) ^ (x ^ 525024598) == -889275714)
flag = np.int32(2942112424)
print(flag)

