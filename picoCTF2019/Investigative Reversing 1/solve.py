m = []
tmp = '43 46 7B 41 6E 31 5F 65 32  36 33 30 37  32 35 7D'.split()
m.append(bytes(map(lambda x: int(x, 16), tmp)))

m2 = '85  73'.split()
m.append(bytes(map(lambda x: int(x, 16), m2)))

m3 =  '69  63 54 30 74  68 61 5F'.split()
m.append(bytes(map(lambda x: int(x, 16), m3)))

print(m)

flag = [0] * 0x1a

cnt = [0] * 3
print(cnt)

def get(pos, x, add=0):
    x -= 1
    flag[pos] = m[x][cnt[x]] + add
    cnt[x] += 1

get(1, 3)
get(0, 2, -0x15)
get(2, 3)
get(5, 3)
get(4, 1)
get(3, 2, -0x4)
for i in range(6, 10):
    get(i, 1)
for i in range(10, 0xf):
    get(i, 3)
for i in range(0xf, 0x1a):
    get(i, 1)

print(cnt)

print(''.join(map(chr, flag)))

