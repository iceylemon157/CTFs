# CTF 6502

## Description

Implement the missing opcode in the OPCODE_0x49-method and fix the machine code in the program-variable.

When you're done you should be able to read the flag in the memory dump at memory address 0x0040.

## Solution

With Google we can see that OPCODE 0x49 in MOS6502 means exclusive or.
So we can easily fix the function to the following:

```c#
public static byte OPCODE_0x49(byte value, byte accumulator) {
    return (byte)(value ^ accumulator);
}
```

After fixing this, we have to fix the program.
Since we know that the flag was encrypted by xor, and we know the flag starts with CTFlearn
We can get that the value to xor is ```ord('K') ^ ord('C')=8```
Hence we can easily fix the program to:

```c#
static readonly byte[] program = {
    0xa2, 0x00,                 // LDX #$00
    0xb5, 0x00,                 // LDA $00,X
    0x49, 0x08,
    0x95, 0x40,                 // STA $40,X
    0xe8,                       // INX
    0xe0, (byte)flag.Length,    // CPX #${flag.Length}
    0xd0, 0xf5,                 // BNE $0604
    0xa9, 0xff                  // LDA #$ff
};
```

Execute the code and we can get our flag!