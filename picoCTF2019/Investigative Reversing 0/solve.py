secret = b'picoCTK\x80k5zsid6q_3d659f57}'
flag = secret[:6].decode()

for i in range(6, 15):
    flag += chr(secret[i] - 5)

flag += chr(secret[15] + 3)

flag += secret[16:].decode()

print(flag)
