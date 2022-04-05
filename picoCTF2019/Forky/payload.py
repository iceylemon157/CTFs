import numpy as np

eax = np.int32(0x3b9aca00)
add = np.int32(0x499602d2)
print(np.int32(eax + add * 16))