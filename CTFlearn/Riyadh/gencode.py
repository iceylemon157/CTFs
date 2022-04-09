#!/usr/bin/python3

import random


# write an array of unsigned char to the file
def WriteArrayUC(fd, vname, data):
    msg = "unsigned char " + vname + "[" + str(len(data)) + "] = {"
    print(msg)
    fd.write(msg + "\n")

    count = 0
    for x in data:
        if count == 0:
            msg = "  0x{0:02x}".format(x)
        else:
            msg = msg + ", " + "0x{0:02x}".format(x)

        count += 1
        if count > 9 and count % 10 == 0:
            msg = msg + "\n"

    msg += "};\n"

    print(msg)
    fd.write(msg)

# xor a string and write out as an unsigned char array
def WriteString(vname, strdata, fd, xor):
    data = bytearray()
    count = 0
    for c in strdata:
        data.append(ord(c) ^ xor[count])
        count += 1

    data.append(0x00 ^ xor[count])

    print(strdata)
    fd.write("\n// " + strdata + "\n")
    WriteArrayUC(fd, vname, data)

print("Generate Code for Riyadh Reversing Challenge")

random.seed(0xbaadf00d + 0xabcdcafe)

# generate an xor mask used to hide all the strings for this problem
xor = bytearray()
for x in range(0, 64):
    xor.append(random.randint(1, 254))

fd = open("code.txt", "wt")

WriteArrayUC(fd, "xormask", xor)

WriteString("WelcomeMsg", "Welcome to CTFlearn Riyadh Reversing Challenge!", fd, xor)
WriteString("UsageMsg", "Usage: Riyadh flag", fd, xor)
WriteString("FalseFlagMsg", "CTFlearn{Reversing_Is_Easy}", fd, xor)
WriteString("FalseFlagFoundMsg", "You found the false flag!  It's not that easy dude!", fd, xor)

flag = "CTFlearn{Masmak_Fortress_1865}"
print("Flag: {0}, length={1}".format(flag, len(flag)))
WriteString("FlagMsg", flag, fd, xor)
WriteString("BadFlagMsg", "You entered the wrong flag :-(", fd, xor)
WriteString("CongratsMsg", "CONGRATULATIONS!! You found the flag: ", fd, xor);

fd.close()

print("All Done!")
