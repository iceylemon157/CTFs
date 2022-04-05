def asm3(a, b, c):
	ret = 0
	ret = (ret << 0x10)
	print(ret)
	ret = (ret - 0xe3) & 0xff
	print(hex(ret))
	ret = (ret + (0xdd << 8)) & 0xffff
	print(hex(ret))
	ret = (ret ^ 0xbb86)
	print(hex(ret))

asm3(0xba6c5a02,0xd101e3dd,0xbb86a173)

'''

ebp +8 = 0xb
ebp +10= 0xd101e3dd
ebp +0xb = 5a
ebp +0xc = dd
ebp +0xd = e3
ebp + 0x12 =3ddb

'''
