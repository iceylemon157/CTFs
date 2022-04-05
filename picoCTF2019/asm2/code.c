int asm2(int x, int y) {
	while(y <= 0x63f3) {
		x += 1;
		y -= 0xffffff80;
	}
	return x;
}
