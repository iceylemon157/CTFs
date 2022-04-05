def asm2(y, x):
	while y <= 0x63f3:
		x += 1
		y = (y - 0xffffff80) & 0xffffffff
	print(hex(x))
asm2(0xb,0x2e)
