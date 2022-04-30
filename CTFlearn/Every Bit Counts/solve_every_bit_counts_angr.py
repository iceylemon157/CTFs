#!/usr/bin/python3
# -*- coding=utf8 -*-
"""
# @Author : iceylemon
# @Created Time : 2022-04-30 18:45:25
# @File Name : solve_every_bit_counts_angr.py
# @Description : 
"""

import angr
import claripy

p = angr.Project('every_bit_counts')
args = claripy.BVS('args', 0x34 * 8)
good = 0x4035d1
bad = [0x4035e0, 0x400401, 0x400456]
state = p.factory.entry_state(args = ['./every_bit_counts', args])
sm = p.factory.simulation_manager(state)
print(sm.explore(find=good, avoid=bad))
result = sm.found[0]
print(f'argv = {result.solver.eval(args, cast_to=bytes)}')




