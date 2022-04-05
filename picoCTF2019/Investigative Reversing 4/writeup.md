# Investigative Reversing 4

Deassemble the code through ghidra.
We can see that the function encodeAll is iterating all the file name by using for loop (from 5 to 1) and encode them.

```cpp=
void encodeAll(void)

{
  ulong Item01.b;
  undefined8 mp\x00;
  undefined4 local_38;
  ulong Item01_c;
  undefined8 p.bmp\x00\x00\x00;
  undefined4 local_18;
  char id;
  
  Item01_c = 0x635f31306d657449;
  p.bmp\x00\x00\x00 = 0x706d622e70;
  local_18 = 0;
  Item01.b = 0x622e31306d657449;
  mp\x00 = 0x706d;
  local_38 = 0;
  for (id = '5'; '0' < id; id = id + -1) {
    Item01.b._0_6_ = CONCAT15(id,(undefined5)I tem01.b);
    Item01.b = Item01.b & 0xffff000000000000 | (u long)(uint6)Item01.b;
    Item01_c._0_6_ = CONCAT15(id,(undefined5) Item01_c);
    Item01_c = Item01_c & 0xffff000000000000 | ( ulong)(uint6)Item01_c;
    encodeDataInFile(&Item01.b,&Item01_c);
  }
  return;
}
```
