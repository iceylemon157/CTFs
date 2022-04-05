#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-03 13:42:06
# @Description : 
"""

import os

for i in range(999, 2, -1):
	file_name = f'{i}.tar'
	os.system('tar -xf ' + file_name)
	os.system('rm ' + file_name)
