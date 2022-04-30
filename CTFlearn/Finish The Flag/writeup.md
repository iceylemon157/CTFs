# Finish the flag

## Solution

First we can see a qrcode. Read it with zbarimg we can get a message (in output).
From the description we can know that this is an executable.
using ```file output``` we can knew that this is a 32-bit ELF.

Disassemble the code, and we can see this:

```
08048098 <loop>:
 8048098:	3c 07                	cmp    al,0x7
 804809a:	74 1d                	je     80480b9 <done>
 804809c:	8b 90 e4 90 04 08    	mov    edx,DWORD PTR [eax+0x80490e4]
 80480a2:	40                   	inc    eax
 80480a3:	e9 00 00 00 00       	jmp    80480a8 <bite_of_flag>

080480a8 <bite_of_flag>:
 80480a8:	55                   	push   ebp
 80480a9:	89 e5                	mov    ebp,esp
 80480ab:	50                   	push   eax
 80480ac:	80 f2 17             	xor    dl,0x17
 80480af:	88 55 00             	mov    BYTE PTR [ebp+0x0],dl
 80480b2:	58                   	pop    eax
 80480b3:	5d                   	pop    ebp
 80480b4:	e9 df ff ff ff       	jmp    8048098 <loop>
```

Since this is only simple xor, we can easily retrieve the flag.
