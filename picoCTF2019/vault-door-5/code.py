#!/usr/bin/python
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-03-30 21:24:26
# @Description : 
"""

import base64
from urllib.parse import unquote

src = b"JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVmJTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2JTM0JTVmJTM4JTM0JTY2JTY0JTM1JTMwJTM5JTM1"

print(base64.b64decode(src))

src_2 = base64.b64decode(src)
src_2 = src_2.decode()

print(unquote(src_2))

