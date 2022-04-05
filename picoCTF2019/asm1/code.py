def asm(ptr):
	if ptr > 0x71c:
		if ptr != 0x8be:
			return ptr + 3
		return ptr - 3
	else:
		if ptr != 0x6cf:
			return ptr - 3
		return ptr + 3
print(hex(asm(0x8be)))
