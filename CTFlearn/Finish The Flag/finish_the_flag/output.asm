
output:     file format elf32-i386


Disassembly of section .text:

08048080 <_start>:
 8048080:	ba 0a 00 00 00       	mov    edx,0xa
 8048085:	b9 14 91 04 08       	mov    ecx,0x8049114
 804808a:	bb 01 00 00 00       	mov    ebx,0x1
 804808f:	b8 04 00 00 00       	mov    eax,0x4
 8048094:	cd 80                	int    0x80
 8048096:	31 c0                	xor    eax,eax

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

080480b9 <done>:
 80480b9:	bb 00 00 00 00       	mov    ebx,0x0
 80480be:	b8 01 00 00 00       	mov    eax,0x1
 80480c3:	cd 80                	int    0x80
