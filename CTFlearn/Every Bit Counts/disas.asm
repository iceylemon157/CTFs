
./every_bit_counts:     file format elf64-x86-64


Disassembly of section .text:

00000000004003b0 <main-0x32>:
  4003b0:	31 ed                	xor    ebp,ebp
  4003b2:	49 89 d1             	mov    r9,rdx
  4003b5:	5e                   	pop    rsi
  4003b6:	48 89 e2             	mov    rdx,rsp
  4003b9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4003bd:	50                   	push   rax
  4003be:	54                   	push   rsp
  4003bf:	4c 8b 05 22 35 20 00 	mov    r8,QWORD PTR [rip+0x203522]        # 6038e8 <_init@plt+0x200140>
  4003c6:	48 8b 0d 23 35 20 00 	mov    rcx,QWORD PTR [rip+0x203523]        # 6038f0 <_init@plt+0x200148>
  4003cd:	48 8b 3d 24 35 20 00 	mov    rdi,QWORD PTR [rip+0x203524]        # 6038f8 <_init@plt+0x200150>
  4003d4:	ff 15 26 35 20 00    	call   QWORD PTR [rip+0x203526]        # 603900 <_init@plt+0x200158>
  4003da:	f4                   	hlt    
  4003db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4003e0:	f3 c3                	repz ret 

00000000004003e2 <main>:
  4003e2:	55                   	push   rbp
  4003e3:	48 89 e5             	mov    rbp,rsp
  4003e6:	48 81 ec 30 00 00 00 	sub    rsp,0x30
  4003ed:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4003f1:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4003f5:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  4003f8:	83 f8 02             	cmp    eax,0x2
  4003fb:	0f 84 30 00 00 00    	je     400431 <main+0x4f>
  400401:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400405:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  400409:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40040d:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400410:	48 89 c6             	mov    rsi,rax
  400413:	48 8d 05 a2 33 20 00 	lea    rax,[rip+0x2033a2]        # 6037bc <_init@plt+0x200014>
  40041a:	48 89 c7             	mov    rdi,rax
  40041d:	b8 00 00 00 00       	mov    eax,0x0
  400422:	e8 61 33 00 00       	call   403788 <printf@plt>
  400427:	b8 02 00 00 00       	mov    eax,0x2
  40042c:	e9 c8 31 00 00       	jmp    4035f9 <main+0x3217>
  400431:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10] # main+0x4f
  400435:	48 83 c0 08          	add    rax,0x8
  400439:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  40043d:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400441:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400444:	48 89 c7             	mov    rdi,rax
  400447:	e8 4c 33 00 00       	call   403798 <strlen@plt>
  40044c:	48 83 f8 34          	cmp    rax,0x34
  400450:	0f 84 30 00 00 00    	je     400486 <main+0xa4>
  400456:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40045a:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  40045e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  400462:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400465:	48 89 c6             	mov    rsi,rax
  400468:	48 8d 05 6d 33 20 00 	lea    rax,[rip+0x20336d]        # 6037dc <_init@plt+0x200034>
  40046f:	48 89 c7             	mov    rdi,rax
  400472:	b8 00 00 00 00       	mov    eax,0x0
  400477:	e8 0c 33 00 00       	call   403788 <printf@plt>
  40047c:	b8 02 00 00 00       	mov    eax,0x2
  400481:	e9 73 31 00 00       	jmp    4035f9 <main+0x3217>
  400486:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10] # main+0xa4
  40048a:	48 83 c0 08          	add    rax,0x8
  40048e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400491:	48 83 c1 1c          	add    rcx,0x1c
  400495:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400498:	83 e0 20             	and    eax,0x20
  40049b:	83 f8 00             	cmp    eax,0x0
  40049e:	0f 85 3c 31 00 00    	jne    4035e0 <main+0x31fe>
  4004a4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4004a8:	48 83 c0 08          	add    rax,0x8
  4004ac:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4004af:	48 83 c1 24          	add    rcx,0x24
  4004b3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4004b6:	83 e0 10             	and    eax,0x10
  4004b9:	83 f8 00             	cmp    eax,0x0
  4004bc:	0f 84 1e 31 00 00    	je     4035e0 <main+0x31fe>
  4004c2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4004c6:	48 83 c0 08          	add    rax,0x8
  4004ca:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4004cd:	48 83 c1 2f          	add    rcx,0x2f
  4004d1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4004d4:	83 e0 20             	and    eax,0x20
  4004d7:	83 f8 00             	cmp    eax,0x0
  4004da:	0f 84 00 31 00 00    	je     4035e0 <main+0x31fe>
  4004e0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4004e4:	48 83 c0 08          	add    rax,0x8
  4004e8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4004eb:	48 83 c1 20          	add    rcx,0x20
  4004ef:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4004f2:	83 e0 20             	and    eax,0x20
  4004f5:	83 f8 00             	cmp    eax,0x0
  4004f8:	0f 84 e2 30 00 00    	je     4035e0 <main+0x31fe>
  4004fe:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400502:	48 83 c0 08          	add    rax,0x8
  400506:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400509:	48 83 c1 2b          	add    rcx,0x2b
  40050d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400510:	83 e0 04             	and    eax,0x4
  400513:	83 f8 00             	cmp    eax,0x0
  400516:	0f 84 c4 30 00 00    	je     4035e0 <main+0x31fe>
  40051c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400520:	48 83 c0 08          	add    rax,0x8
  400524:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400527:	48 83 c1 32          	add    rcx,0x32
  40052b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40052e:	81 e0 80 00 00 00    	and    eax,0x80
  400534:	83 f8 00             	cmp    eax,0x0
  400537:	0f 85 a3 30 00 00    	jne    4035e0 <main+0x31fe>
  40053d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400541:	48 83 c0 08          	add    rax,0x8
  400545:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400548:	48 83 c1 08          	add    rcx,0x8
  40054c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40054f:	83 e0 01             	and    eax,0x1
  400552:	83 f8 00             	cmp    eax,0x0
  400555:	0f 84 85 30 00 00    	je     4035e0 <main+0x31fe>
  40055b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40055f:	48 83 c0 08          	add    rax,0x8
  400563:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400566:	48 83 c1 2e          	add    rcx,0x2e
  40056a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40056d:	83 e0 04             	and    eax,0x4
  400570:	83 f8 00             	cmp    eax,0x0
  400573:	0f 84 67 30 00 00    	je     4035e0 <main+0x31fe>
  400579:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40057d:	48 83 c0 08          	add    rax,0x8
  400581:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400584:	48 83 c1 20          	add    rcx,0x20
  400588:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40058b:	81 e0 80 00 00 00    	and    eax,0x80
  400591:	83 f8 00             	cmp    eax,0x0
  400594:	0f 85 46 30 00 00    	jne    4035e0 <main+0x31fe>
  40059a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40059e:	48 83 c0 08          	add    rax,0x8
  4005a2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4005a5:	48 83 c1 08          	add    rcx,0x8
  4005a9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4005ac:	83 e0 04             	and    eax,0x4
  4005af:	83 f8 00             	cmp    eax,0x0
  4005b2:	0f 85 28 30 00 00    	jne    4035e0 <main+0x31fe>
  4005b8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4005bc:	48 83 c0 08          	add    rax,0x8
  4005c0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4005c3:	48 83 c1 30          	add    rcx,0x30
  4005c7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4005ca:	83 e0 10             	and    eax,0x10
  4005cd:	83 f8 00             	cmp    eax,0x0
  4005d0:	0f 84 0a 30 00 00    	je     4035e0 <main+0x31fe>
  4005d6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4005da:	48 83 c0 08          	add    rax,0x8
  4005de:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4005e1:	48 83 c1 10          	add    rcx,0x10
  4005e5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4005e8:	81 e0 80 00 00 00    	and    eax,0x80
  4005ee:	83 f8 00             	cmp    eax,0x0
  4005f1:	0f 85 e9 2f 00 00    	jne    4035e0 <main+0x31fe>
  4005f7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4005fb:	48 83 c0 08          	add    rax,0x8
  4005ff:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400602:	48 83 c1 13          	add    rcx,0x13
  400606:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400609:	83 e0 08             	and    eax,0x8
  40060c:	83 f8 00             	cmp    eax,0x0
  40060f:	0f 85 cb 2f 00 00    	jne    4035e0 <main+0x31fe>
  400615:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400619:	48 83 c0 08          	add    rax,0x8
  40061d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400620:	48 83 c1 08          	add    rcx,0x8
  400624:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400627:	83 e0 40             	and    eax,0x40
  40062a:	83 f8 00             	cmp    eax,0x0
  40062d:	0f 84 ad 2f 00 00    	je     4035e0 <main+0x31fe>
  400633:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400637:	48 83 c0 08          	add    rax,0x8
  40063b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40063e:	48 83 c1 2b          	add    rcx,0x2b
  400642:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400645:	83 e0 10             	and    eax,0x10
  400648:	83 f8 00             	cmp    eax,0x0
  40064b:	0f 84 8f 2f 00 00    	je     4035e0 <main+0x31fe>
  400651:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400655:	48 83 c0 08          	add    rax,0x8
  400659:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40065c:	48 83 c1 0f          	add    rcx,0xf
  400660:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400663:	83 e0 04             	and    eax,0x4
  400666:	83 f8 00             	cmp    eax,0x0
  400669:	0f 84 71 2f 00 00    	je     4035e0 <main+0x31fe>
  40066f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400673:	48 83 c0 08          	add    rax,0x8
  400677:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40067a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40067d:	83 e0 04             	and    eax,0x4
  400680:	83 f8 00             	cmp    eax,0x0
  400683:	0f 85 57 2f 00 00    	jne    4035e0 <main+0x31fe>
  400689:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40068d:	48 83 c0 08          	add    rax,0x8
  400691:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400694:	48 83 c1 2b          	add    rcx,0x2b
  400698:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40069b:	83 e0 08             	and    eax,0x8
  40069e:	83 f8 00             	cmp    eax,0x0
  4006a1:	0f 85 39 2f 00 00    	jne    4035e0 <main+0x31fe>
  4006a7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4006ab:	48 83 c0 08          	add    rax,0x8
  4006af:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4006b2:	48 83 c1 19          	add    rcx,0x19
  4006b6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4006b9:	83 e0 40             	and    eax,0x40
  4006bc:	83 f8 00             	cmp    eax,0x0
  4006bf:	0f 84 1b 2f 00 00    	je     4035e0 <main+0x31fe>
  4006c5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4006c9:	48 83 c0 08          	add    rax,0x8
  4006cd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4006d0:	48 83 c1 04          	add    rcx,0x4
  4006d4:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4006d7:	83 e0 01             	and    eax,0x1
  4006da:	83 f8 00             	cmp    eax,0x0
  4006dd:	0f 84 fd 2e 00 00    	je     4035e0 <main+0x31fe>
  4006e3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4006e7:	48 83 c0 08          	add    rax,0x8
  4006eb:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4006ee:	48 83 c1 2b          	add    rcx,0x2b
  4006f2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4006f5:	81 e0 80 00 00 00    	and    eax,0x80
  4006fb:	83 f8 00             	cmp    eax,0x0
  4006fe:	0f 85 dc 2e 00 00    	jne    4035e0 <main+0x31fe>
  400704:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400708:	48 83 c0 08          	add    rax,0x8
  40070c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40070f:	48 83 c1 2c          	add    rcx,0x2c
  400713:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400716:	83 e0 08             	and    eax,0x8
  400719:	83 f8 00             	cmp    eax,0x0
  40071c:	0f 85 be 2e 00 00    	jne    4035e0 <main+0x31fe>
  400722:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400726:	48 83 c0 08          	add    rax,0x8
  40072a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40072d:	48 83 c1 21          	add    rcx,0x21
  400731:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400734:	83 e0 20             	and    eax,0x20
  400737:	83 f8 00             	cmp    eax,0x0
  40073a:	0f 84 a0 2e 00 00    	je     4035e0 <main+0x31fe>
  400740:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400744:	48 83 c0 08          	add    rax,0x8
  400748:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40074b:	48 83 c1 1d          	add    rcx,0x1d
  40074f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400752:	83 e0 10             	and    eax,0x10
  400755:	83 f8 00             	cmp    eax,0x0
  400758:	0f 85 82 2e 00 00    	jne    4035e0 <main+0x31fe>
  40075e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400762:	48 83 c0 08          	add    rax,0x8
  400766:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400769:	48 83 c1 21          	add    rcx,0x21
  40076d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400770:	83 e0 01             	and    eax,0x1
  400773:	83 f8 00             	cmp    eax,0x0
  400776:	0f 84 64 2e 00 00    	je     4035e0 <main+0x31fe>
  40077c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400780:	48 83 c0 08          	add    rax,0x8
  400784:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400787:	48 83 c1 1c          	add    rcx,0x1c
  40078b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40078e:	83 e0 40             	and    eax,0x40
  400791:	83 f8 00             	cmp    eax,0x0
  400794:	0f 84 46 2e 00 00    	je     4035e0 <main+0x31fe>
  40079a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40079e:	48 83 c0 08          	add    rax,0x8
  4007a2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4007a5:	48 83 c1 17          	add    rcx,0x17
  4007a9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4007ac:	83 e0 40             	and    eax,0x40
  4007af:	83 f8 00             	cmp    eax,0x0
  4007b2:	0f 84 28 2e 00 00    	je     4035e0 <main+0x31fe>
  4007b8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4007bc:	48 83 c0 08          	add    rax,0x8
  4007c0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4007c3:	48 83 c1 18          	add    rcx,0x18
  4007c7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4007ca:	83 e0 01             	and    eax,0x1
  4007cd:	83 f8 00             	cmp    eax,0x0
  4007d0:	0f 84 0a 2e 00 00    	je     4035e0 <main+0x31fe>
  4007d6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4007da:	48 83 c0 08          	add    rax,0x8
  4007de:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4007e1:	48 83 c1 27          	add    rcx,0x27
  4007e5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4007e8:	83 e0 20             	and    eax,0x20
  4007eb:	83 f8 00             	cmp    eax,0x0
  4007ee:	0f 84 ec 2d 00 00    	je     4035e0 <main+0x31fe>
  4007f4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4007f8:	48 83 c0 08          	add    rax,0x8
  4007fc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4007ff:	48 83 c1 25          	add    rcx,0x25
  400803:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400806:	83 e0 04             	and    eax,0x4
  400809:	83 f8 00             	cmp    eax,0x0
  40080c:	0f 85 ce 2d 00 00    	jne    4035e0 <main+0x31fe>
  400812:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400816:	48 83 c0 08          	add    rax,0x8
  40081a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40081d:	48 83 c1 0d          	add    rcx,0xd
  400821:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400824:	81 e0 80 00 00 00    	and    eax,0x80
  40082a:	83 f8 00             	cmp    eax,0x0
  40082d:	0f 85 ad 2d 00 00    	jne    4035e0 <main+0x31fe>
  400833:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400837:	48 83 c0 08          	add    rax,0x8
  40083b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40083e:	48 83 c1 31          	add    rcx,0x31
  400842:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400845:	83 e0 20             	and    eax,0x20
  400848:	83 f8 00             	cmp    eax,0x0
  40084b:	0f 84 8f 2d 00 00    	je     4035e0 <main+0x31fe>
  400851:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400855:	48 83 c0 08          	add    rax,0x8
  400859:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40085c:	48 83 c1 09          	add    rcx,0x9
  400860:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400863:	83 e0 04             	and    eax,0x4
  400866:	83 f8 00             	cmp    eax,0x0
  400869:	0f 84 71 2d 00 00    	je     4035e0 <main+0x31fe>
  40086f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400873:	48 83 c0 08          	add    rax,0x8
  400877:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40087a:	48 83 c1 07          	add    rcx,0x7
  40087e:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400881:	83 e0 20             	and    eax,0x20
  400884:	83 f8 00             	cmp    eax,0x0
  400887:	0f 84 53 2d 00 00    	je     4035e0 <main+0x31fe>
  40088d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400891:	48 83 c0 08          	add    rax,0x8
  400895:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400898:	48 83 c1 30          	add    rcx,0x30
  40089c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40089f:	83 e0 04             	and    eax,0x4
  4008a2:	83 f8 00             	cmp    eax,0x0
  4008a5:	0f 85 35 2d 00 00    	jne    4035e0 <main+0x31fe>
  4008ab:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4008af:	48 83 c0 08          	add    rax,0x8
  4008b3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4008b6:	48 83 c1 12          	add    rcx,0x12
  4008ba:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4008bd:	83 e0 04             	and    eax,0x4
  4008c0:	83 f8 00             	cmp    eax,0x0
  4008c3:	0f 85 17 2d 00 00    	jne    4035e0 <main+0x31fe>
  4008c9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4008cd:	48 83 c0 08          	add    rax,0x8
  4008d1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4008d4:	48 83 c1 2d          	add    rcx,0x2d
  4008d8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4008db:	83 e0 04             	and    eax,0x4
  4008de:	83 f8 00             	cmp    eax,0x0
  4008e1:	0f 85 f9 2c 00 00    	jne    4035e0 <main+0x31fe>
  4008e7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4008eb:	48 83 c0 08          	add    rax,0x8
  4008ef:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4008f2:	48 83 c1 1e          	add    rcx,0x1e
  4008f6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4008f9:	83 e0 10             	and    eax,0x10
  4008fc:	83 f8 00             	cmp    eax,0x0
  4008ff:	0f 84 db 2c 00 00    	je     4035e0 <main+0x31fe>
  400905:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400909:	48 83 c0 08          	add    rax,0x8
  40090d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400910:	48 83 c1 07          	add    rcx,0x7
  400914:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400917:	83 e0 10             	and    eax,0x10
  40091a:	83 f8 00             	cmp    eax,0x0
  40091d:	0f 85 bd 2c 00 00    	jne    4035e0 <main+0x31fe>
  400923:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400927:	48 83 c0 08          	add    rax,0x8
  40092b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40092e:	48 83 c1 31          	add    rcx,0x31
  400932:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400935:	83 e0 40             	and    eax,0x40
  400938:	83 f8 00             	cmp    eax,0x0
  40093b:	0f 84 9f 2c 00 00    	je     4035e0 <main+0x31fe>
  400941:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400945:	48 83 c0 08          	add    rax,0x8
  400949:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40094c:	48 83 c1 02          	add    rcx,0x2
  400950:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400953:	81 e0 80 00 00 00    	and    eax,0x80
  400959:	83 f8 00             	cmp    eax,0x0
  40095c:	0f 85 7e 2c 00 00    	jne    4035e0 <main+0x31fe>
  400962:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400966:	48 83 c0 08          	add    rax,0x8
  40096a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40096d:	48 83 c1 0c          	add    rcx,0xc
  400971:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400974:	83 e0 40             	and    eax,0x40
  400977:	83 f8 00             	cmp    eax,0x0
  40097a:	0f 84 60 2c 00 00    	je     4035e0 <main+0x31fe>
  400980:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400984:	48 83 c0 08          	add    rax,0x8
  400988:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40098b:	48 83 c1 25          	add    rcx,0x25
  40098f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400992:	83 e0 08             	and    eax,0x8
  400995:	83 f8 00             	cmp    eax,0x0
  400998:	0f 85 42 2c 00 00    	jne    4035e0 <main+0x31fe>
  40099e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4009a2:	48 83 c0 08          	add    rax,0x8
  4009a6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4009a9:	48 83 c1 1d          	add    rcx,0x1d
  4009ad:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4009b0:	83 e0 08             	and    eax,0x8
  4009b3:	83 f8 00             	cmp    eax,0x0
  4009b6:	0f 85 24 2c 00 00    	jne    4035e0 <main+0x31fe>
  4009bc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4009c0:	48 83 c0 08          	add    rax,0x8
  4009c4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4009c7:	48 83 c1 1d          	add    rcx,0x1d
  4009cb:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4009ce:	83 e0 20             	and    eax,0x20
  4009d1:	83 f8 00             	cmp    eax,0x0
  4009d4:	0f 84 06 2c 00 00    	je     4035e0 <main+0x31fe>
  4009da:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4009de:	48 83 c0 08          	add    rax,0x8
  4009e2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4009e5:	48 83 c1 32          	add    rcx,0x32
  4009e9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4009ec:	83 e0 02             	and    eax,0x2
  4009ef:	83 f8 00             	cmp    eax,0x0
  4009f2:	0f 84 e8 2b 00 00    	je     4035e0 <main+0x31fe>
  4009f8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4009fc:	48 83 c0 08          	add    rax,0x8
  400a00:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400a03:	48 83 c1 2d          	add    rcx,0x2d
  400a07:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400a0a:	83 e0 01             	and    eax,0x1
  400a0d:	83 f8 00             	cmp    eax,0x0
  400a10:	0f 85 ca 2b 00 00    	jne    4035e0 <main+0x31fe>
  400a16:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a1a:	48 83 c0 08          	add    rax,0x8
  400a1e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400a21:	48 83 c1 0a          	add    rcx,0xa
  400a25:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400a28:	83 e0 10             	and    eax,0x10
  400a2b:	83 f8 00             	cmp    eax,0x0
  400a2e:	0f 84 ac 2b 00 00    	je     4035e0 <main+0x31fe>
  400a34:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a38:	48 83 c0 08          	add    rax,0x8
  400a3c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400a3f:	48 83 c1 28          	add    rcx,0x28
  400a43:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400a46:	81 e0 80 00 00 00    	and    eax,0x80
  400a4c:	83 f8 00             	cmp    eax,0x0
  400a4f:	0f 85 8b 2b 00 00    	jne    4035e0 <main+0x31fe>
  400a55:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a59:	48 83 c0 08          	add    rax,0x8
  400a5d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400a60:	48 83 c1 12          	add    rcx,0x12
  400a64:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400a67:	83 e0 02             	and    eax,0x2
  400a6a:	83 f8 00             	cmp    eax,0x0
  400a6d:	0f 85 6d 2b 00 00    	jne    4035e0 <main+0x31fe>
  400a73:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a77:	48 83 c0 08          	add    rax,0x8
  400a7b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400a7e:	48 83 c1 2b          	add    rcx,0x2b
  400a82:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400a85:	83 e0 01             	and    eax,0x1
  400a88:	83 f8 00             	cmp    eax,0x0
  400a8b:	0f 84 4f 2b 00 00    	je     4035e0 <main+0x31fe>
  400a91:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400a95:	48 83 c0 08          	add    rax,0x8
  400a99:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400a9c:	48 83 c1 1a          	add    rcx,0x1a
  400aa0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400aa3:	81 e0 80 00 00 00    	and    eax,0x80
  400aa9:	83 f8 00             	cmp    eax,0x0
  400aac:	0f 85 2e 2b 00 00    	jne    4035e0 <main+0x31fe>
  400ab2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ab6:	48 83 c0 08          	add    rax,0x8
  400aba:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400abd:	48 83 c1 33          	add    rcx,0x33
  400ac1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400ac4:	81 e0 80 00 00 00    	and    eax,0x80
  400aca:	83 f8 00             	cmp    eax,0x0
  400acd:	0f 85 0d 2b 00 00    	jne    4035e0 <main+0x31fe>
  400ad3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ad7:	48 83 c0 08          	add    rax,0x8
  400adb:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400ade:	48 83 c1 14          	add    rcx,0x14
  400ae2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400ae5:	83 e0 04             	and    eax,0x4
  400ae8:	83 f8 00             	cmp    eax,0x0
  400aeb:	0f 84 ef 2a 00 00    	je     4035e0 <main+0x31fe>
  400af1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400af5:	48 83 c0 08          	add    rax,0x8
  400af9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400afc:	48 83 c1 1e          	add    rcx,0x1e
  400b00:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400b03:	83 e0 08             	and    eax,0x8
  400b06:	83 f8 00             	cmp    eax,0x0
  400b09:	0f 84 d1 2a 00 00    	je     4035e0 <main+0x31fe>
  400b0f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400b13:	48 83 c0 08          	add    rax,0x8
  400b17:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400b1a:	48 83 c1 04          	add    rcx,0x4
  400b1e:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400b21:	83 e0 10             	and    eax,0x10
  400b24:	83 f8 00             	cmp    eax,0x0
  400b27:	0f 85 b3 2a 00 00    	jne    4035e0 <main+0x31fe>
  400b2d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400b31:	48 83 c0 08          	add    rax,0x8
  400b35:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400b38:	48 83 c1 04          	add    rcx,0x4
  400b3c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400b3f:	81 e0 80 00 00 00    	and    eax,0x80
  400b45:	83 f8 00             	cmp    eax,0x0
  400b48:	0f 85 92 2a 00 00    	jne    4035e0 <main+0x31fe>
  400b4e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400b52:	48 83 c0 08          	add    rax,0x8
  400b56:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400b59:	48 83 c1 15          	add    rcx,0x15
  400b5d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400b60:	83 e0 40             	and    eax,0x40
  400b63:	83 f8 00             	cmp    eax,0x0
  400b66:	0f 84 74 2a 00 00    	je     4035e0 <main+0x31fe>
  400b6c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400b70:	48 83 c0 08          	add    rax,0x8
  400b74:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400b77:	48 83 c1 17          	add    rcx,0x17
  400b7b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400b7e:	81 e0 80 00 00 00    	and    eax,0x80
  400b84:	83 f8 00             	cmp    eax,0x0
  400b87:	0f 85 53 2a 00 00    	jne    4035e0 <main+0x31fe>
  400b8d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400b91:	48 83 c0 08          	add    rax,0x8
  400b95:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400b98:	48 83 c1 0c          	add    rcx,0xc
  400b9c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400b9f:	83 e0 10             	and    eax,0x10
  400ba2:	83 f8 00             	cmp    eax,0x0
  400ba5:	0f 84 35 2a 00 00    	je     4035e0 <main+0x31fe>
  400bab:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400baf:	48 83 c0 08          	add    rax,0x8
  400bb3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400bb6:	48 83 c1 29          	add    rcx,0x29
  400bba:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400bbd:	83 e0 01             	and    eax,0x1
  400bc0:	83 f8 00             	cmp    eax,0x0
  400bc3:	0f 84 17 2a 00 00    	je     4035e0 <main+0x31fe>
  400bc9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400bcd:	48 83 c0 08          	add    rax,0x8
  400bd1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400bd4:	48 83 c1 0d          	add    rcx,0xd
  400bd8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400bdb:	83 e0 20             	and    eax,0x20
  400bde:	83 f8 00             	cmp    eax,0x0
  400be1:	0f 84 f9 29 00 00    	je     4035e0 <main+0x31fe>
  400be7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400beb:	48 83 c0 08          	add    rax,0x8
  400bef:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400bf2:	48 83 c1 24          	add    rcx,0x24
  400bf6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400bf9:	83 e0 01             	and    eax,0x1
  400bfc:	83 f8 00             	cmp    eax,0x0
  400bff:	0f 85 db 29 00 00    	jne    4035e0 <main+0x31fe>
  400c05:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c09:	48 83 c0 08          	add    rax,0x8
  400c0d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400c10:	48 83 c1 01          	add    rcx,0x1
  400c14:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400c17:	83 e0 01             	and    eax,0x1
  400c1a:	83 f8 00             	cmp    eax,0x0
  400c1d:	0f 85 bd 29 00 00    	jne    4035e0 <main+0x31fe>
  400c23:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c27:	48 83 c0 08          	add    rax,0x8
  400c2b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400c2e:	48 83 c1 13          	add    rcx,0x13
  400c32:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400c35:	81 e0 80 00 00 00    	and    eax,0x80
  400c3b:	83 f8 00             	cmp    eax,0x0
  400c3e:	0f 85 9c 29 00 00    	jne    4035e0 <main+0x31fe>
  400c44:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c48:	48 83 c0 08          	add    rax,0x8
  400c4c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400c4f:	48 83 c1 05          	add    rcx,0x5
  400c53:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400c56:	81 e0 80 00 00 00    	and    eax,0x80
  400c5c:	83 f8 00             	cmp    eax,0x0
  400c5f:	0f 85 7b 29 00 00    	jne    4035e0 <main+0x31fe>
  400c65:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c69:	48 83 c0 08          	add    rax,0x8
  400c6d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400c70:	48 83 c1 32          	add    rcx,0x32
  400c74:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400c77:	83 e0 40             	and    eax,0x40
  400c7a:	83 f8 00             	cmp    eax,0x0
  400c7d:	0f 85 5d 29 00 00    	jne    4035e0 <main+0x31fe>
  400c83:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400c87:	48 83 c0 08          	add    rax,0x8
  400c8b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400c8e:	48 83 c1 08          	add    rcx,0x8
  400c92:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400c95:	83 e0 10             	and    eax,0x10
  400c98:	83 f8 00             	cmp    eax,0x0
  400c9b:	0f 84 3f 29 00 00    	je     4035e0 <main+0x31fe>
  400ca1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ca5:	48 83 c0 08          	add    rax,0x8
  400ca9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400cac:	48 83 c1 23          	add    rcx,0x23
  400cb0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400cb3:	83 e0 08             	and    eax,0x8
  400cb6:	83 f8 00             	cmp    eax,0x0
  400cb9:	0f 85 21 29 00 00    	jne    4035e0 <main+0x31fe>
  400cbf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400cc3:	48 83 c0 08          	add    rax,0x8
  400cc7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400cca:	48 83 c1 09          	add    rcx,0x9
  400cce:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400cd1:	83 e0 08             	and    eax,0x8
  400cd4:	83 f8 00             	cmp    eax,0x0
  400cd7:	0f 85 03 29 00 00    	jne    4035e0 <main+0x31fe>
  400cdd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ce1:	48 83 c0 08          	add    rax,0x8
  400ce5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400ce8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400ceb:	83 e0 02             	and    eax,0x2
  400cee:	83 f8 00             	cmp    eax,0x0
  400cf1:	0f 84 e9 28 00 00    	je     4035e0 <main+0x31fe>
  400cf7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400cfb:	48 83 c0 08          	add    rax,0x8
  400cff:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400d02:	48 83 c1 15          	add    rcx,0x15
  400d06:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400d09:	81 e0 80 00 00 00    	and    eax,0x80
  400d0f:	83 f8 00             	cmp    eax,0x0
  400d12:	0f 85 c8 28 00 00    	jne    4035e0 <main+0x31fe>
  400d18:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d1c:	48 83 c0 08          	add    rax,0x8
  400d20:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400d23:	48 83 c1 07          	add    rcx,0x7
  400d27:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400d2a:	83 e0 01             	and    eax,0x1
  400d2d:	83 f8 00             	cmp    eax,0x0
  400d30:	0f 85 aa 28 00 00    	jne    4035e0 <main+0x31fe>
  400d36:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d3a:	48 83 c0 08          	add    rax,0x8
  400d3e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400d41:	48 83 c1 29          	add    rcx,0x29
  400d45:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400d48:	83 e0 08             	and    eax,0x8
  400d4b:	83 f8 00             	cmp    eax,0x0
  400d4e:	0f 84 8c 28 00 00    	je     4035e0 <main+0x31fe>
  400d54:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d58:	48 83 c0 08          	add    rax,0x8
  400d5c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400d5f:	48 83 c1 03          	add    rcx,0x3
  400d63:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400d66:	81 e0 80 00 00 00    	and    eax,0x80
  400d6c:	83 f8 00             	cmp    eax,0x0
  400d6f:	0f 85 6b 28 00 00    	jne    4035e0 <main+0x31fe>
  400d75:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d79:	48 83 c0 08          	add    rax,0x8
  400d7d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400d80:	48 83 c1 0e          	add    rcx,0xe
  400d84:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400d87:	83 e0 02             	and    eax,0x2
  400d8a:	83 f8 00             	cmp    eax,0x0
  400d8d:	0f 84 4d 28 00 00    	je     4035e0 <main+0x31fe>
  400d93:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400d97:	48 83 c0 08          	add    rax,0x8
  400d9b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400d9e:	48 83 c1 16          	add    rcx,0x16
  400da2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400da5:	83 e0 02             	and    eax,0x2
  400da8:	83 f8 00             	cmp    eax,0x0
  400dab:	0f 84 2f 28 00 00    	je     4035e0 <main+0x31fe>
  400db1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400db5:	48 83 c0 08          	add    rax,0x8
  400db9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400dbc:	48 83 c1 17          	add    rcx,0x17
  400dc0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400dc3:	83 e0 01             	and    eax,0x1
  400dc6:	83 f8 00             	cmp    eax,0x0
  400dc9:	0f 84 11 28 00 00    	je     4035e0 <main+0x31fe>
  400dcf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400dd3:	48 83 c0 08          	add    rax,0x8
  400dd7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400dda:	48 83 c1 27          	add    rcx,0x27
  400dde:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400de1:	83 e0 02             	and    eax,0x2
  400de4:	83 f8 00             	cmp    eax,0x0
  400de7:	0f 84 f3 27 00 00    	je     4035e0 <main+0x31fe>
  400ded:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400df1:	48 83 c0 08          	add    rax,0x8
  400df5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400df8:	48 83 c1 10          	add    rcx,0x10
  400dfc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400dff:	83 e0 20             	and    eax,0x20
  400e02:	83 f8 00             	cmp    eax,0x0
  400e05:	0f 85 d5 27 00 00    	jne    4035e0 <main+0x31fe>
  400e0b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e0f:	48 83 c0 08          	add    rax,0x8
  400e13:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400e16:	48 83 c1 06          	add    rcx,0x6
  400e1a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400e1d:	83 e0 08             	and    eax,0x8
  400e20:	83 f8 00             	cmp    eax,0x0
  400e23:	0f 85 b7 27 00 00    	jne    4035e0 <main+0x31fe>
  400e29:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e2d:	48 83 c0 08          	add    rax,0x8
  400e31:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400e34:	48 83 c1 1a          	add    rcx,0x1a
  400e38:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400e3b:	83 e0 01             	and    eax,0x1
  400e3e:	83 f8 00             	cmp    eax,0x0
  400e41:	0f 85 99 27 00 00    	jne    4035e0 <main+0x31fe>
  400e47:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e4b:	48 83 c0 08          	add    rax,0x8
  400e4f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400e52:	48 83 c1 1e          	add    rcx,0x1e
  400e56:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400e59:	83 e0 04             	and    eax,0x4
  400e5c:	83 f8 00             	cmp    eax,0x0
  400e5f:	0f 84 7b 27 00 00    	je     4035e0 <main+0x31fe>
  400e65:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e69:	48 83 c0 08          	add    rax,0x8
  400e6d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400e70:	48 83 c1 1a          	add    rcx,0x1a
  400e74:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400e77:	83 e0 02             	and    eax,0x2
  400e7a:	83 f8 00             	cmp    eax,0x0
  400e7d:	0f 84 5d 27 00 00    	je     4035e0 <main+0x31fe>
  400e83:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400e87:	48 83 c0 08          	add    rax,0x8
  400e8b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400e8e:	48 83 c1 1e          	add    rcx,0x1e
  400e92:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400e95:	81 e0 80 00 00 00    	and    eax,0x80
  400e9b:	83 f8 00             	cmp    eax,0x0
  400e9e:	0f 85 3c 27 00 00    	jne    4035e0 <main+0x31fe>
  400ea4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ea8:	48 83 c0 08          	add    rax,0x8
  400eac:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400eaf:	48 83 c1 16          	add    rcx,0x16
  400eb3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400eb6:	81 e0 80 00 00 00    	and    eax,0x80
  400ebc:	83 f8 00             	cmp    eax,0x0
  400ebf:	0f 85 1b 27 00 00    	jne    4035e0 <main+0x31fe>
  400ec5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ec9:	48 83 c0 08          	add    rax,0x8
  400ecd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400ed0:	48 83 c1 23          	add    rcx,0x23
  400ed4:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400ed7:	83 e0 10             	and    eax,0x10
  400eda:	83 f8 00             	cmp    eax,0x0
  400edd:	0f 85 fd 26 00 00    	jne    4035e0 <main+0x31fe>
  400ee3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ee7:	48 83 c0 08          	add    rax,0x8
  400eeb:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400eee:	48 83 c1 30          	add    rcx,0x30
  400ef2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400ef5:	83 e0 01             	and    eax,0x1
  400ef8:	83 f8 00             	cmp    eax,0x0
  400efb:	0f 84 df 26 00 00    	je     4035e0 <main+0x31fe>
  400f01:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f05:	48 83 c0 08          	add    rax,0x8
  400f09:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400f0c:	48 83 c1 21          	add    rcx,0x21
  400f10:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400f13:	83 e0 04             	and    eax,0x4
  400f16:	83 f8 00             	cmp    eax,0x0
  400f19:	0f 84 c1 26 00 00    	je     4035e0 <main+0x31fe>
  400f1f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f23:	48 83 c0 08          	add    rax,0x8
  400f27:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400f2a:	48 83 c1 04          	add    rcx,0x4
  400f2e:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400f31:	83 e0 04             	and    eax,0x4
  400f34:	83 f8 00             	cmp    eax,0x0
  400f37:	0f 84 a3 26 00 00    	je     4035e0 <main+0x31fe>
  400f3d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f41:	48 83 c0 08          	add    rax,0x8
  400f45:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400f48:	48 83 c1 24          	add    rcx,0x24
  400f4c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400f4f:	81 e0 80 00 00 00    	and    eax,0x80
  400f55:	83 f8 00             	cmp    eax,0x0
  400f58:	0f 85 82 26 00 00    	jne    4035e0 <main+0x31fe>
  400f5e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f62:	48 83 c0 08          	add    rax,0x8
  400f66:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400f69:	48 83 c1 1f          	add    rcx,0x1f
  400f6d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400f70:	83 e0 08             	and    eax,0x8
  400f73:	83 f8 00             	cmp    eax,0x0
  400f76:	0f 84 64 26 00 00    	je     4035e0 <main+0x31fe>
  400f7c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f80:	48 83 c0 08          	add    rax,0x8
  400f84:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400f87:	48 83 c1 01          	add    rcx,0x1
  400f8b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400f8e:	83 e0 02             	and    eax,0x2
  400f91:	83 f8 00             	cmp    eax,0x0
  400f94:	0f 85 46 26 00 00    	jne    4035e0 <main+0x31fe>
  400f9a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400f9e:	48 83 c0 08          	add    rax,0x8
  400fa2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400fa5:	48 83 c1 22          	add    rcx,0x22
  400fa9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400fac:	83 e0 04             	and    eax,0x4
  400faf:	83 f8 00             	cmp    eax,0x0
  400fb2:	0f 84 28 26 00 00    	je     4035e0 <main+0x31fe>
  400fb8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400fbc:	48 83 c0 08          	add    rax,0x8
  400fc0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400fc3:	48 83 c1 10          	add    rcx,0x10
  400fc7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400fca:	83 e0 01             	and    eax,0x1
  400fcd:	83 f8 00             	cmp    eax,0x0
  400fd0:	0f 84 0a 26 00 00    	je     4035e0 <main+0x31fe>
  400fd6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400fda:	48 83 c0 08          	add    rax,0x8
  400fde:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400fe1:	48 83 c1 03          	add    rcx,0x3
  400fe5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  400fe8:	83 e0 10             	and    eax,0x10
  400feb:	83 f8 00             	cmp    eax,0x0
  400fee:	0f 85 ec 25 00 00    	jne    4035e0 <main+0x31fe>
  400ff4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  400ff8:	48 83 c0 08          	add    rax,0x8
  400ffc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  400fff:	48 83 c1 16          	add    rcx,0x16
  401003:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401006:	83 e0 10             	and    eax,0x10
  401009:	83 f8 00             	cmp    eax,0x0
  40100c:	0f 84 ce 25 00 00    	je     4035e0 <main+0x31fe>
  401012:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401016:	48 83 c0 08          	add    rax,0x8
  40101a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40101d:	48 83 c1 2a          	add    rcx,0x2a
  401021:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401024:	83 e0 01             	and    eax,0x1
  401027:	83 f8 00             	cmp    eax,0x0
  40102a:	0f 84 b0 25 00 00    	je     4035e0 <main+0x31fe>
  401030:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401034:	48 83 c0 08          	add    rax,0x8
  401038:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40103b:	48 83 c1 0b          	add    rcx,0xb
  40103f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401042:	83 e0 01             	and    eax,0x1
  401045:	83 f8 00             	cmp    eax,0x0
  401048:	0f 84 92 25 00 00    	je     4035e0 <main+0x31fe>
  40104e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401052:	48 83 c0 08          	add    rax,0x8
  401056:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401059:	48 83 c1 01          	add    rcx,0x1
  40105d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401060:	83 e0 10             	and    eax,0x10
  401063:	83 f8 00             	cmp    eax,0x0
  401066:	0f 84 74 25 00 00    	je     4035e0 <main+0x31fe>
  40106c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401070:	48 83 c0 08          	add    rax,0x8
  401074:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401077:	48 83 c1 02          	add    rcx,0x2
  40107b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40107e:	83 e0 04             	and    eax,0x4
  401081:	83 f8 00             	cmp    eax,0x0
  401084:	0f 84 56 25 00 00    	je     4035e0 <main+0x31fe>
  40108a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40108e:	48 83 c0 08          	add    rax,0x8
  401092:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401095:	48 83 c1 0a          	add    rcx,0xa
  401099:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40109c:	83 e0 08             	and    eax,0x8
  40109f:	83 f8 00             	cmp    eax,0x0
  4010a2:	0f 85 38 25 00 00    	jne    4035e0 <main+0x31fe>
  4010a8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4010ac:	48 83 c0 08          	add    rax,0x8
  4010b0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4010b3:	48 83 c1 13          	add    rcx,0x13
  4010b7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4010ba:	83 e0 01             	and    eax,0x1
  4010bd:	83 f8 00             	cmp    eax,0x0
  4010c0:	0f 84 1a 25 00 00    	je     4035e0 <main+0x31fe>
  4010c6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4010ca:	48 83 c0 08          	add    rax,0x8
  4010ce:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4010d1:	48 83 c1 24          	add    rcx,0x24
  4010d5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4010d8:	83 e0 08             	and    eax,0x8
  4010db:	83 f8 00             	cmp    eax,0x0
  4010de:	0f 85 fc 24 00 00    	jne    4035e0 <main+0x31fe>
  4010e4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4010e8:	48 83 c0 08          	add    rax,0x8
  4010ec:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4010ef:	48 83 c1 04          	add    rcx,0x4
  4010f3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4010f6:	83 e0 08             	and    eax,0x8
  4010f9:	83 f8 00             	cmp    eax,0x0
  4010fc:	0f 85 de 24 00 00    	jne    4035e0 <main+0x31fe>
  401102:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401106:	48 83 c0 08          	add    rax,0x8
  40110a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40110d:	48 83 c1 02          	add    rcx,0x2
  401111:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401114:	83 e0 01             	and    eax,0x1
  401117:	83 f8 00             	cmp    eax,0x0
  40111a:	0f 85 c0 24 00 00    	jne    4035e0 <main+0x31fe>
  401120:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401124:	48 83 c0 08          	add    rax,0x8
  401128:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40112b:	48 83 c1 1b          	add    rcx,0x1b
  40112f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401132:	83 e0 10             	and    eax,0x10
  401135:	83 f8 00             	cmp    eax,0x0
  401138:	0f 85 a2 24 00 00    	jne    4035e0 <main+0x31fe>
  40113e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401142:	48 83 c0 08          	add    rax,0x8
  401146:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401149:	48 83 c1 09          	add    rcx,0x9
  40114d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401150:	83 e0 01             	and    eax,0x1
  401153:	83 f8 00             	cmp    eax,0x0
  401156:	0f 84 84 24 00 00    	je     4035e0 <main+0x31fe>
  40115c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401160:	48 83 c0 08          	add    rax,0x8
  401164:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401167:	48 83 c1 0d          	add    rcx,0xd
  40116b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40116e:	83 e0 02             	and    eax,0x2
  401171:	83 f8 00             	cmp    eax,0x0
  401174:	0f 85 66 24 00 00    	jne    4035e0 <main+0x31fe>
  40117a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40117e:	48 83 c0 08          	add    rax,0x8
  401182:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401185:	48 83 c1 05          	add    rcx,0x5
  401189:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40118c:	83 e0 20             	and    eax,0x20
  40118f:	83 f8 00             	cmp    eax,0x0
  401192:	0f 84 48 24 00 00    	je     4035e0 <main+0x31fe>
  401198:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40119c:	48 83 c0 08          	add    rax,0x8
  4011a0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4011a3:	48 83 c1 11          	add    rcx,0x11
  4011a7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4011aa:	83 e0 10             	and    eax,0x10
  4011ad:	83 f8 00             	cmp    eax,0x0
  4011b0:	0f 85 2a 24 00 00    	jne    4035e0 <main+0x31fe>
  4011b6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4011ba:	48 83 c0 08          	add    rax,0x8
  4011be:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4011c1:	48 83 c1 0d          	add    rcx,0xd
  4011c5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4011c8:	83 e0 10             	and    eax,0x10
  4011cb:	83 f8 00             	cmp    eax,0x0
  4011ce:	0f 84 0c 24 00 00    	je     4035e0 <main+0x31fe>
  4011d4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4011d8:	48 83 c0 08          	add    rax,0x8
  4011dc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4011df:	48 83 c1 0d          	add    rcx,0xd
  4011e3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4011e6:	83 e0 40             	and    eax,0x40
  4011e9:	83 f8 00             	cmp    eax,0x0
  4011ec:	0f 84 ee 23 00 00    	je     4035e0 <main+0x31fe>
  4011f2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4011f6:	48 83 c0 08          	add    rax,0x8
  4011fa:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4011fd:	48 83 c1 03          	add    rcx,0x3
  401201:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401204:	83 e0 04             	and    eax,0x4
  401207:	83 f8 00             	cmp    eax,0x0
  40120a:	0f 84 d0 23 00 00    	je     4035e0 <main+0x31fe>
  401210:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401214:	48 83 c0 08          	add    rax,0x8
  401218:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40121b:	48 83 c1 07          	add    rcx,0x7
  40121f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401222:	83 e0 02             	and    eax,0x2
  401225:	83 f8 00             	cmp    eax,0x0
  401228:	0f 84 b2 23 00 00    	je     4035e0 <main+0x31fe>
  40122e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401232:	48 83 c0 08          	add    rax,0x8
  401236:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401239:	48 83 c1 10          	add    rcx,0x10
  40123d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401240:	83 e0 02             	and    eax,0x2
  401243:	83 f8 00             	cmp    eax,0x0
  401246:	0f 84 94 23 00 00    	je     4035e0 <main+0x31fe>
  40124c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401250:	48 83 c0 08          	add    rax,0x8
  401254:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401257:	48 83 c1 20          	add    rcx,0x20
  40125b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40125e:	83 e0 08             	and    eax,0x8
  401261:	83 f8 00             	cmp    eax,0x0
  401264:	0f 85 76 23 00 00    	jne    4035e0 <main+0x31fe>
  40126a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40126e:	48 83 c0 08          	add    rax,0x8
  401272:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401275:	48 83 c1 23          	add    rcx,0x23
  401279:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40127c:	83 e0 02             	and    eax,0x2
  40127f:	83 f8 00             	cmp    eax,0x0
  401282:	0f 85 58 23 00 00    	jne    4035e0 <main+0x31fe>
  401288:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40128c:	48 83 c0 08          	add    rax,0x8
  401290:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401293:	48 83 c1 31          	add    rcx,0x31
  401297:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40129a:	83 e0 08             	and    eax,0x8
  40129d:	83 f8 00             	cmp    eax,0x0
  4012a0:	0f 85 3a 23 00 00    	jne    4035e0 <main+0x31fe>
  4012a6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4012aa:	48 83 c0 08          	add    rax,0x8
  4012ae:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4012b1:	48 83 c1 1b          	add    rcx,0x1b
  4012b5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4012b8:	83 e0 04             	and    eax,0x4
  4012bb:	83 f8 00             	cmp    eax,0x0
  4012be:	0f 84 1c 23 00 00    	je     4035e0 <main+0x31fe>
  4012c4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4012c8:	48 83 c0 08          	add    rax,0x8
  4012cc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4012cf:	48 83 c1 2f          	add    rcx,0x2f
  4012d3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4012d6:	81 e0 80 00 00 00    	and    eax,0x80
  4012dc:	83 f8 00             	cmp    eax,0x0
  4012df:	0f 85 fb 22 00 00    	jne    4035e0 <main+0x31fe>
  4012e5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4012e9:	48 83 c0 08          	add    rax,0x8
  4012ed:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4012f0:	48 83 c1 0d          	add    rcx,0xd
  4012f4:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4012f7:	83 e0 08             	and    eax,0x8
  4012fa:	83 f8 00             	cmp    eax,0x0
  4012fd:	0f 84 dd 22 00 00    	je     4035e0 <main+0x31fe>
  401303:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401307:	48 83 c0 08          	add    rax,0x8
  40130b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40130e:	48 83 c1 01          	add    rcx,0x1
  401312:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401315:	81 e0 80 00 00 00    	and    eax,0x80
  40131b:	83 f8 00             	cmp    eax,0x0
  40131e:	0f 85 bc 22 00 00    	jne    4035e0 <main+0x31fe>
  401324:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401328:	48 83 c0 08          	add    rax,0x8
  40132c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40132f:	48 83 c1 26          	add    rcx,0x26
  401333:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401336:	81 e0 80 00 00 00    	and    eax,0x80
  40133c:	83 f8 00             	cmp    eax,0x0
  40133f:	0f 85 9b 22 00 00    	jne    4035e0 <main+0x31fe>
  401345:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401349:	48 83 c0 08          	add    rax,0x8
  40134d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401350:	48 83 c1 24          	add    rcx,0x24
  401354:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401357:	83 e0 04             	and    eax,0x4
  40135a:	83 f8 00             	cmp    eax,0x0
  40135d:	0f 85 7d 22 00 00    	jne    4035e0 <main+0x31fe>
  401363:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401367:	48 83 c0 08          	add    rax,0x8
  40136b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40136e:	48 83 c1 33          	add    rcx,0x33
  401372:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401375:	83 e0 10             	and    eax,0x10
  401378:	83 f8 00             	cmp    eax,0x0
  40137b:	0f 84 5f 22 00 00    	je     4035e0 <main+0x31fe>
  401381:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401385:	48 83 c0 08          	add    rax,0x8
  401389:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40138c:	48 83 c1 17          	add    rcx,0x17
  401390:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401393:	83 e0 20             	and    eax,0x20
  401396:	83 f8 00             	cmp    eax,0x0
  401399:	0f 85 41 22 00 00    	jne    4035e0 <main+0x31fe>
  40139f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4013a3:	48 83 c0 08          	add    rax,0x8
  4013a7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4013aa:	48 83 c1 06          	add    rcx,0x6
  4013ae:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4013b1:	83 e0 02             	and    eax,0x2
  4013b4:	83 f8 00             	cmp    eax,0x0
  4013b7:	0f 84 23 22 00 00    	je     4035e0 <main+0x31fe>
  4013bd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4013c1:	48 83 c0 08          	add    rax,0x8
  4013c5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4013c8:	48 83 c1 23          	add    rcx,0x23
  4013cc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4013cf:	81 e0 80 00 00 00    	and    eax,0x80
  4013d5:	83 f8 00             	cmp    eax,0x0
  4013d8:	0f 85 02 22 00 00    	jne    4035e0 <main+0x31fe>
  4013de:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4013e2:	48 83 c0 08          	add    rax,0x8
  4013e6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4013e9:	48 83 c1 14          	add    rcx,0x14
  4013ed:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4013f0:	83 e0 20             	and    eax,0x20
  4013f3:	83 f8 00             	cmp    eax,0x0
  4013f6:	0f 84 e4 21 00 00    	je     4035e0 <main+0x31fe>
  4013fc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401400:	48 83 c0 08          	add    rax,0x8
  401404:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401407:	48 83 c1 09          	add    rcx,0x9
  40140b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40140e:	83 e0 20             	and    eax,0x20
  401411:	83 f8 00             	cmp    eax,0x0
  401414:	0f 84 c6 21 00 00    	je     4035e0 <main+0x31fe>
  40141a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40141e:	48 83 c0 08          	add    rax,0x8
  401422:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401425:	48 83 c1 2d          	add    rcx,0x2d
  401429:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40142c:	83 e0 20             	and    eax,0x20
  40142f:	83 f8 00             	cmp    eax,0x0
  401432:	0f 84 a8 21 00 00    	je     4035e0 <main+0x31fe>
  401438:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40143c:	48 83 c0 08          	add    rax,0x8
  401440:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401443:	48 83 c1 0c          	add    rcx,0xc
  401447:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40144a:	83 e0 02             	and    eax,0x2
  40144d:	83 f8 00             	cmp    eax,0x0
  401450:	0f 84 8a 21 00 00    	je     4035e0 <main+0x31fe>
  401456:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40145a:	48 83 c0 08          	add    rax,0x8
  40145e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401461:	48 83 c1 06          	add    rcx,0x6
  401465:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401468:	83 e0 10             	and    eax,0x10
  40146b:	83 f8 00             	cmp    eax,0x0
  40146e:	0f 84 6c 21 00 00    	je     4035e0 <main+0x31fe>
  401474:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401478:	48 83 c0 08          	add    rax,0x8
  40147c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40147f:	48 83 c1 22          	add    rcx,0x22
  401483:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401486:	83 e0 08             	and    eax,0x8
  401489:	83 f8 00             	cmp    eax,0x0
  40148c:	0f 84 4e 21 00 00    	je     4035e0 <main+0x31fe>
  401492:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401496:	48 83 c0 08          	add    rax,0x8
  40149a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40149d:	48 83 c1 1a          	add    rcx,0x1a
  4014a1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4014a4:	83 e0 20             	and    eax,0x20
  4014a7:	83 f8 00             	cmp    eax,0x0
  4014aa:	0f 84 30 21 00 00    	je     4035e0 <main+0x31fe>
  4014b0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4014b4:	48 83 c0 08          	add    rax,0x8
  4014b8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4014bb:	48 83 c1 17          	add    rcx,0x17
  4014bf:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4014c2:	83 e0 02             	and    eax,0x2
  4014c5:	83 f8 00             	cmp    eax,0x0
  4014c8:	0f 85 12 21 00 00    	jne    4035e0 <main+0x31fe>
  4014ce:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4014d2:	48 83 c0 08          	add    rax,0x8
  4014d6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4014d9:	48 83 c1 0e          	add    rcx,0xe
  4014dd:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4014e0:	83 e0 10             	and    eax,0x10
  4014e3:	83 f8 00             	cmp    eax,0x0
  4014e6:	0f 85 f4 20 00 00    	jne    4035e0 <main+0x31fe>
  4014ec:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4014f0:	48 83 c0 08          	add    rax,0x8
  4014f4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4014f7:	48 83 c1 0c          	add    rcx,0xc
  4014fb:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4014fe:	83 e0 08             	and    eax,0x8
  401501:	83 f8 00             	cmp    eax,0x0
  401504:	0f 84 d6 20 00 00    	je     4035e0 <main+0x31fe>
  40150a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40150e:	48 83 c0 08          	add    rax,0x8
  401512:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401515:	48 83 c1 22          	add    rcx,0x22
  401519:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40151c:	81 e0 80 00 00 00    	and    eax,0x80
  401522:	83 f8 00             	cmp    eax,0x0
  401525:	0f 85 b5 20 00 00    	jne    4035e0 <main+0x31fe>
  40152b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40152f:	48 83 c0 08          	add    rax,0x8
  401533:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401536:	48 83 c1 10          	add    rcx,0x10
  40153a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40153d:	83 e0 04             	and    eax,0x4
  401540:	83 f8 00             	cmp    eax,0x0
  401543:	0f 84 97 20 00 00    	je     4035e0 <main+0x31fe>
  401549:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40154d:	48 83 c0 08          	add    rax,0x8
  401551:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401554:	48 83 c1 03          	add    rcx,0x3
  401558:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40155b:	83 e0 02             	and    eax,0x2
  40155e:	83 f8 00             	cmp    eax,0x0
  401561:	0f 85 79 20 00 00    	jne    4035e0 <main+0x31fe>
  401567:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40156b:	48 83 c0 08          	add    rax,0x8
  40156f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401572:	48 83 c1 31          	add    rcx,0x31
  401576:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401579:	83 e0 02             	and    eax,0x2
  40157c:	83 f8 00             	cmp    eax,0x0
  40157f:	0f 84 5b 20 00 00    	je     4035e0 <main+0x31fe>
  401585:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401589:	48 83 c0 08          	add    rax,0x8
  40158d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401590:	48 83 c1 16          	add    rcx,0x16
  401594:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401597:	83 e0 20             	and    eax,0x20
  40159a:	83 f8 00             	cmp    eax,0x0
  40159d:	0f 85 3d 20 00 00    	jne    4035e0 <main+0x31fe>
  4015a3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4015a7:	48 83 c0 08          	add    rax,0x8
  4015ab:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4015ae:	48 83 c1 15          	add    rcx,0x15
  4015b2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4015b5:	83 e0 20             	and    eax,0x20
  4015b8:	83 f8 00             	cmp    eax,0x0
  4015bb:	0f 84 1f 20 00 00    	je     4035e0 <main+0x31fe>
  4015c1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4015c5:	48 83 c0 08          	add    rax,0x8
  4015c9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4015cc:	48 83 c1 29          	add    rcx,0x29
  4015d0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4015d3:	83 e0 20             	and    eax,0x20
  4015d6:	83 f8 00             	cmp    eax,0x0
  4015d9:	0f 85 01 20 00 00    	jne    4035e0 <main+0x31fe>
  4015df:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4015e3:	48 83 c0 08          	add    rax,0x8
  4015e7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4015ea:	48 83 c1 25          	add    rcx,0x25
  4015ee:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4015f1:	83 e0 02             	and    eax,0x2
  4015f4:	83 f8 00             	cmp    eax,0x0
  4015f7:	0f 84 e3 1f 00 00    	je     4035e0 <main+0x31fe>
  4015fd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401601:	48 83 c0 08          	add    rax,0x8
  401605:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401608:	48 83 c1 12          	add    rcx,0x12
  40160c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40160f:	81 e0 80 00 00 00    	and    eax,0x80
  401615:	83 f8 00             	cmp    eax,0x0
  401618:	0f 85 c2 1f 00 00    	jne    4035e0 <main+0x31fe>
  40161e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401622:	48 83 c0 08          	add    rax,0x8
  401626:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401629:	48 83 c1 07          	add    rcx,0x7
  40162d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401630:	83 e0 04             	and    eax,0x4
  401633:	83 f8 00             	cmp    eax,0x0
  401636:	0f 84 a4 1f 00 00    	je     4035e0 <main+0x31fe>
  40163c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401640:	48 83 c0 08          	add    rax,0x8
  401644:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401647:	48 83 c1 2f          	add    rcx,0x2f
  40164b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40164e:	83 e0 04             	and    eax,0x4
  401651:	83 f8 00             	cmp    eax,0x0
  401654:	0f 84 86 1f 00 00    	je     4035e0 <main+0x31fe>
  40165a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40165e:	48 83 c0 08          	add    rax,0x8
  401662:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401665:	48 83 c1 0a          	add    rcx,0xa
  401669:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40166c:	83 e0 02             	and    eax,0x2
  40166f:	83 f8 00             	cmp    eax,0x0
  401672:	0f 85 68 1f 00 00    	jne    4035e0 <main+0x31fe>
  401678:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40167c:	48 83 c0 08          	add    rax,0x8
  401680:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401683:	48 83 c1 0b          	add    rcx,0xb
  401687:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40168a:	81 e0 80 00 00 00    	and    eax,0x80
  401690:	83 f8 00             	cmp    eax,0x0
  401693:	0f 85 47 1f 00 00    	jne    4035e0 <main+0x31fe>
  401699:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40169d:	48 83 c0 08          	add    rax,0x8
  4016a1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4016a4:	48 83 c1 20          	add    rcx,0x20
  4016a8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4016ab:	83 e0 04             	and    eax,0x4
  4016ae:	83 f8 00             	cmp    eax,0x0
  4016b1:	0f 85 29 1f 00 00    	jne    4035e0 <main+0x31fe>
  4016b7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4016bb:	48 83 c0 08          	add    rax,0x8
  4016bf:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4016c2:	48 83 c1 26          	add    rcx,0x26
  4016c6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4016c9:	83 e0 40             	and    eax,0x40
  4016cc:	83 f8 00             	cmp    eax,0x0
  4016cf:	0f 84 0b 1f 00 00    	je     4035e0 <main+0x31fe>
  4016d5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4016d9:	48 83 c0 08          	add    rax,0x8
  4016dd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4016e0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4016e3:	83 e0 10             	and    eax,0x10
  4016e6:	83 f8 00             	cmp    eax,0x0
  4016e9:	0f 85 f1 1e 00 00    	jne    4035e0 <main+0x31fe>
  4016ef:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4016f3:	48 83 c0 08          	add    rax,0x8
  4016f7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4016fa:	48 83 c1 02          	add    rcx,0x2
  4016fe:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401701:	83 e0 40             	and    eax,0x40
  401704:	83 f8 00             	cmp    eax,0x0
  401707:	0f 84 d3 1e 00 00    	je     4035e0 <main+0x31fe>
  40170d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401711:	48 83 c0 08          	add    rax,0x8
  401715:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401718:	48 83 c1 1c          	add    rcx,0x1c
  40171c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40171f:	81 e0 80 00 00 00    	and    eax,0x80
  401725:	83 f8 00             	cmp    eax,0x0
  401728:	0f 85 b2 1e 00 00    	jne    4035e0 <main+0x31fe>
  40172e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401732:	48 83 c0 08          	add    rax,0x8
  401736:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401739:	48 83 c1 2b          	add    rcx,0x2b
  40173d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401740:	83 e0 40             	and    eax,0x40
  401743:	83 f8 00             	cmp    eax,0x0
  401746:	0f 84 94 1e 00 00    	je     4035e0 <main+0x31fe>
  40174c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401750:	48 83 c0 08          	add    rax,0x8
  401754:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401757:	48 83 c1 2f          	add    rcx,0x2f
  40175b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40175e:	83 e0 08             	and    eax,0x8
  401761:	83 f8 00             	cmp    eax,0x0
  401764:	0f 84 76 1e 00 00    	je     4035e0 <main+0x31fe>
  40176a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40176e:	48 83 c0 08          	add    rax,0x8
  401772:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401775:	48 83 c1 2c          	add    rcx,0x2c
  401779:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40177c:	83 e0 20             	and    eax,0x20
  40177f:	83 f8 00             	cmp    eax,0x0
  401782:	0f 84 58 1e 00 00    	je     4035e0 <main+0x31fe>
  401788:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40178c:	48 83 c0 08          	add    rax,0x8
  401790:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401793:	48 83 c1 18          	add    rcx,0x18
  401797:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40179a:	83 e0 20             	and    eax,0x20
  40179d:	83 f8 00             	cmp    eax,0x0
  4017a0:	0f 84 3a 1e 00 00    	je     4035e0 <main+0x31fe>
  4017a6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4017aa:	48 83 c0 08          	add    rax,0x8
  4017ae:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4017b1:	48 83 c1 09          	add    rcx,0x9
  4017b5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4017b8:	83 e0 02             	and    eax,0x2
  4017bb:	83 f8 00             	cmp    eax,0x0
  4017be:	0f 84 1c 1e 00 00    	je     4035e0 <main+0x31fe>
  4017c4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4017c8:	48 83 c0 08          	add    rax,0x8
  4017cc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4017cf:	48 83 c1 06          	add    rcx,0x6
  4017d3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4017d6:	83 e0 04             	and    eax,0x4
  4017d9:	83 f8 00             	cmp    eax,0x0
  4017dc:	0f 85 fe 1d 00 00    	jne    4035e0 <main+0x31fe>
  4017e2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4017e6:	48 83 c0 08          	add    rax,0x8
  4017ea:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4017ed:	48 83 c1 31          	add    rcx,0x31
  4017f1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4017f4:	83 e0 04             	and    eax,0x4
  4017f7:	83 f8 00             	cmp    eax,0x0
  4017fa:	0f 85 e0 1d 00 00    	jne    4035e0 <main+0x31fe>
  401800:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401804:	48 83 c0 08          	add    rax,0x8
  401808:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40180b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40180e:	83 e0 08             	and    eax,0x8
  401811:	83 f8 00             	cmp    eax,0x0
  401814:	0f 85 c6 1d 00 00    	jne    4035e0 <main+0x31fe>
  40181a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40181e:	48 83 c0 08          	add    rax,0x8
  401822:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401825:	48 83 c1 0b          	add    rcx,0xb
  401829:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40182c:	83 e0 40             	and    eax,0x40
  40182f:	83 f8 00             	cmp    eax,0x0
  401832:	0f 84 a8 1d 00 00    	je     4035e0 <main+0x31fe>
  401838:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40183c:	48 83 c0 08          	add    rax,0x8
  401840:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401843:	48 83 c1 05          	add    rcx,0x5
  401847:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40184a:	83 e0 01             	and    eax,0x1
  40184d:	83 f8 00             	cmp    eax,0x0
  401850:	0f 84 8a 1d 00 00    	je     4035e0 <main+0x31fe>
  401856:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40185a:	48 83 c0 08          	add    rax,0x8
  40185e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401861:	48 83 c1 14          	add    rcx,0x14
  401865:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401868:	83 e0 08             	and    eax,0x8
  40186b:	83 f8 00             	cmp    eax,0x0
  40186e:	0f 84 6c 1d 00 00    	je     4035e0 <main+0x31fe>
  401874:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401878:	48 83 c0 08          	add    rax,0x8
  40187c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40187f:	48 83 c1 2f          	add    rcx,0x2f
  401883:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401886:	83 e0 40             	and    eax,0x40
  401889:	83 f8 00             	cmp    eax,0x0
  40188c:	0f 84 4e 1d 00 00    	je     4035e0 <main+0x31fe>
  401892:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401896:	48 83 c0 08          	add    rax,0x8
  40189a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40189d:	48 83 c1 26          	add    rcx,0x26
  4018a1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4018a4:	83 e0 08             	and    eax,0x8
  4018a7:	83 f8 00             	cmp    eax,0x0
  4018aa:	0f 84 30 1d 00 00    	je     4035e0 <main+0x31fe>
  4018b0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4018b4:	48 83 c0 08          	add    rax,0x8
  4018b8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4018bb:	48 83 c1 19          	add    rcx,0x19
  4018bf:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4018c2:	83 e0 04             	and    eax,0x4
  4018c5:	83 f8 00             	cmp    eax,0x0
  4018c8:	0f 84 12 1d 00 00    	je     4035e0 <main+0x31fe>
  4018ce:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4018d2:	48 83 c0 08          	add    rax,0x8
  4018d6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4018d9:	48 83 c1 21          	add    rcx,0x21
  4018dd:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4018e0:	81 e0 80 00 00 00    	and    eax,0x80
  4018e6:	83 f8 00             	cmp    eax,0x0
  4018e9:	0f 85 f1 1c 00 00    	jne    4035e0 <main+0x31fe>
  4018ef:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4018f3:	48 83 c0 08          	add    rax,0x8
  4018f7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4018fa:	48 83 c1 05          	add    rcx,0x5
  4018fe:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401901:	83 e0 08             	and    eax,0x8
  401904:	83 f8 00             	cmp    eax,0x0
  401907:	0f 85 d3 1c 00 00    	jne    4035e0 <main+0x31fe>
  40190d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401911:	48 83 c0 08          	add    rax,0x8
  401915:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401918:	48 83 c1 28          	add    rcx,0x28
  40191c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40191f:	83 e0 10             	and    eax,0x10
  401922:	83 f8 00             	cmp    eax,0x0
  401925:	0f 85 b5 1c 00 00    	jne    4035e0 <main+0x31fe>
  40192b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40192f:	48 83 c0 08          	add    rax,0x8
  401933:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401936:	48 83 c1 19          	add    rcx,0x19
  40193a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40193d:	83 e0 10             	and    eax,0x10
  401940:	83 f8 00             	cmp    eax,0x0
  401943:	0f 84 97 1c 00 00    	je     4035e0 <main+0x31fe>
  401949:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40194d:	48 83 c0 08          	add    rax,0x8
  401951:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401954:	48 83 c1 25          	add    rcx,0x25
  401958:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40195b:	83 e0 01             	and    eax,0x1
  40195e:	83 f8 00             	cmp    eax,0x0
  401961:	0f 84 79 1c 00 00    	je     4035e0 <main+0x31fe>
  401967:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40196b:	48 83 c0 08          	add    rax,0x8
  40196f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401972:	48 83 c1 02          	add    rcx,0x2
  401976:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401979:	83 e0 08             	and    eax,0x8
  40197c:	83 f8 00             	cmp    eax,0x0
  40197f:	0f 85 5b 1c 00 00    	jne    4035e0 <main+0x31fe>
  401985:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401989:	48 83 c0 08          	add    rax,0x8
  40198d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401990:	48 83 c1 2a          	add    rcx,0x2a
  401994:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401997:	83 e0 40             	and    eax,0x40
  40199a:	83 f8 00             	cmp    eax,0x0
  40199d:	0f 84 3d 1c 00 00    	je     4035e0 <main+0x31fe>
  4019a3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4019a7:	48 83 c0 08          	add    rax,0x8
  4019ab:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4019ae:	48 83 c1 09          	add    rcx,0x9
  4019b2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4019b5:	83 e0 10             	and    eax,0x10
  4019b8:	83 f8 00             	cmp    eax,0x0
  4019bb:	0f 84 1f 1c 00 00    	je     4035e0 <main+0x31fe>
  4019c1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4019c5:	48 83 c0 08          	add    rax,0x8
  4019c9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4019cc:	48 83 c1 2e          	add    rcx,0x2e
  4019d0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4019d3:	81 e0 80 00 00 00    	and    eax,0x80
  4019d9:	83 f8 00             	cmp    eax,0x0
  4019dc:	0f 85 fe 1b 00 00    	jne    4035e0 <main+0x31fe>
  4019e2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4019e6:	48 83 c0 08          	add    rax,0x8
  4019ea:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4019ed:	48 83 c1 29          	add    rcx,0x29
  4019f1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4019f4:	83 e0 04             	and    eax,0x4
  4019f7:	83 f8 00             	cmp    eax,0x0
  4019fa:	0f 84 e0 1b 00 00    	je     4035e0 <main+0x31fe>
  401a00:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a04:	48 83 c0 08          	add    rax,0x8
  401a08:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401a0b:	48 83 c1 29          	add    rcx,0x29
  401a0f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401a12:	83 e0 10             	and    eax,0x10
  401a15:	83 f8 00             	cmp    eax,0x0
  401a18:	0f 84 c2 1b 00 00    	je     4035e0 <main+0x31fe>
  401a1e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a22:	48 83 c0 08          	add    rax,0x8
  401a26:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401a29:	48 83 c1 1d          	add    rcx,0x1d
  401a2d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401a30:	81 e0 80 00 00 00    	and    eax,0x80
  401a36:	83 f8 00             	cmp    eax,0x0
  401a39:	0f 85 a1 1b 00 00    	jne    4035e0 <main+0x31fe>
  401a3f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a43:	48 83 c0 08          	add    rax,0x8
  401a47:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401a4a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401a4d:	83 e0 20             	and    eax,0x20
  401a50:	83 f8 00             	cmp    eax,0x0
  401a53:	0f 85 87 1b 00 00    	jne    4035e0 <main+0x31fe>
  401a59:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a5d:	48 83 c0 08          	add    rax,0x8
  401a61:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401a64:	48 83 c1 25          	add    rcx,0x25
  401a68:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401a6b:	83 e0 40             	and    eax,0x40
  401a6e:	83 f8 00             	cmp    eax,0x0
  401a71:	0f 85 69 1b 00 00    	jne    4035e0 <main+0x31fe>
  401a77:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a7b:	48 83 c0 08          	add    rax,0x8
  401a7f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401a82:	48 83 c1 19          	add    rcx,0x19
  401a86:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401a89:	81 e0 80 00 00 00    	and    eax,0x80
  401a8f:	83 f8 00             	cmp    eax,0x0
  401a92:	0f 85 48 1b 00 00    	jne    4035e0 <main+0x31fe>
  401a98:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401a9c:	48 83 c0 08          	add    rax,0x8
  401aa0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401aa3:	48 83 c1 17          	add    rcx,0x17
  401aa7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401aaa:	83 e0 10             	and    eax,0x10
  401aad:	83 f8 00             	cmp    eax,0x0
  401ab0:	0f 85 2a 1b 00 00    	jne    4035e0 <main+0x31fe>
  401ab6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401aba:	48 83 c0 08          	add    rax,0x8
  401abe:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401ac1:	48 83 c1 1b          	add    rcx,0x1b
  401ac5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401ac8:	83 e0 01             	and    eax,0x1
  401acb:	83 f8 00             	cmp    eax,0x0
  401ace:	0f 85 0c 1b 00 00    	jne    4035e0 <main+0x31fe>
  401ad4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401ad8:	48 83 c0 08          	add    rax,0x8
  401adc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401adf:	48 83 c1 0f          	add    rcx,0xf
  401ae3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401ae6:	83 e0 10             	and    eax,0x10
  401ae9:	83 f8 00             	cmp    eax,0x0
  401aec:	0f 84 ee 1a 00 00    	je     4035e0 <main+0x31fe>
  401af2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401af6:	48 83 c0 08          	add    rax,0x8
  401afa:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401afd:	48 83 c1 1f          	add    rcx,0x1f
  401b01:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401b04:	83 e0 40             	and    eax,0x40
  401b07:	83 f8 00             	cmp    eax,0x0
  401b0a:	0f 84 d0 1a 00 00    	je     4035e0 <main+0x31fe>
  401b10:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401b14:	48 83 c0 08          	add    rax,0x8
  401b18:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401b1b:	48 83 c1 2a          	add    rcx,0x2a
  401b1f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401b22:	83 e0 10             	and    eax,0x10
  401b25:	83 f8 00             	cmp    eax,0x0
  401b28:	0f 85 b2 1a 00 00    	jne    4035e0 <main+0x31fe>
  401b2e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401b32:	48 83 c0 08          	add    rax,0x8
  401b36:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401b39:	48 83 c1 0a          	add    rcx,0xa
  401b3d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401b40:	83 e0 20             	and    eax,0x20
  401b43:	83 f8 00             	cmp    eax,0x0
  401b46:	0f 84 94 1a 00 00    	je     4035e0 <main+0x31fe>
  401b4c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401b50:	48 83 c0 08          	add    rax,0x8
  401b54:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401b57:	48 83 c1 30          	add    rcx,0x30
  401b5b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401b5e:	83 e0 40             	and    eax,0x40
  401b61:	83 f8 00             	cmp    eax,0x0
  401b64:	0f 85 76 1a 00 00    	jne    4035e0 <main+0x31fe>
  401b6a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401b6e:	48 83 c0 08          	add    rax,0x8
  401b72:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401b75:	48 83 c1 0f          	add    rcx,0xf
  401b79:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401b7c:	81 e0 80 00 00 00    	and    eax,0x80
  401b82:	83 f8 00             	cmp    eax,0x0
  401b85:	0f 85 55 1a 00 00    	jne    4035e0 <main+0x31fe>
  401b8b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401b8f:	48 83 c0 08          	add    rax,0x8
  401b93:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401b96:	48 83 c1 1c          	add    rcx,0x1c
  401b9a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401b9d:	83 e0 08             	and    eax,0x8
  401ba0:	83 f8 00             	cmp    eax,0x0
  401ba3:	0f 85 37 1a 00 00    	jne    4035e0 <main+0x31fe>
  401ba9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401bad:	48 83 c0 08          	add    rax,0x8
  401bb1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401bb4:	48 83 c1 27          	add    rcx,0x27
  401bb8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401bbb:	83 e0 01             	and    eax,0x1
  401bbe:	83 f8 00             	cmp    eax,0x0
  401bc1:	0f 84 19 1a 00 00    	je     4035e0 <main+0x31fe>
  401bc7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401bcb:	48 83 c0 08          	add    rax,0x8
  401bcf:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401bd2:	48 83 c1 28          	add    rcx,0x28
  401bd6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401bd9:	83 e0 02             	and    eax,0x2
  401bdc:	83 f8 00             	cmp    eax,0x0
  401bdf:	0f 84 fb 19 00 00    	je     4035e0 <main+0x31fe>
  401be5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401be9:	48 83 c0 08          	add    rax,0x8
  401bed:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401bf0:	48 83 c1 32          	add    rcx,0x32
  401bf4:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401bf7:	83 e0 04             	and    eax,0x4
  401bfa:	83 f8 00             	cmp    eax,0x0
  401bfd:	0f 85 dd 19 00 00    	jne    4035e0 <main+0x31fe>
  401c03:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401c07:	48 83 c0 08          	add    rax,0x8
  401c0b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401c0e:	48 83 c1 27          	add    rcx,0x27
  401c12:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401c15:	83 e0 10             	and    eax,0x10
  401c18:	83 f8 00             	cmp    eax,0x0
  401c1b:	0f 84 bf 19 00 00    	je     4035e0 <main+0x31fe>
  401c21:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401c25:	48 83 c0 08          	add    rax,0x8
  401c29:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401c2c:	48 83 c1 2a          	add    rcx,0x2a
  401c30:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401c33:	83 e0 04             	and    eax,0x4
  401c36:	83 f8 00             	cmp    eax,0x0
  401c39:	0f 84 a1 19 00 00    	je     4035e0 <main+0x31fe>
  401c3f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401c43:	48 83 c0 08          	add    rax,0x8
  401c47:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401c4a:	48 83 c1 2d          	add    rcx,0x2d
  401c4e:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401c51:	83 e0 08             	and    eax,0x8
  401c54:	83 f8 00             	cmp    eax,0x0
  401c57:	0f 84 83 19 00 00    	je     4035e0 <main+0x31fe>
  401c5d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401c61:	48 83 c0 08          	add    rax,0x8
  401c65:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401c68:	48 83 c1 0d          	add    rcx,0xd
  401c6c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401c6f:	83 e0 04             	and    eax,0x4
  401c72:	83 f8 00             	cmp    eax,0x0
  401c75:	0f 85 65 19 00 00    	jne    4035e0 <main+0x31fe>
  401c7b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401c7f:	48 83 c0 08          	add    rax,0x8
  401c83:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401c86:	48 83 c1 33          	add    rcx,0x33
  401c8a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401c8d:	83 e0 20             	and    eax,0x20
  401c90:	83 f8 00             	cmp    eax,0x0
  401c93:	0f 84 47 19 00 00    	je     4035e0 <main+0x31fe>
  401c99:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401c9d:	48 83 c0 08          	add    rax,0x8
  401ca1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401ca4:	48 83 c1 15          	add    rcx,0x15
  401ca8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401cab:	83 e0 08             	and    eax,0x8
  401cae:	83 f8 00             	cmp    eax,0x0
  401cb1:	0f 85 29 19 00 00    	jne    4035e0 <main+0x31fe>
  401cb7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401cbb:	48 83 c0 08          	add    rax,0x8
  401cbf:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401cc2:	48 83 c1 20          	add    rcx,0x20
  401cc6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401cc9:	83 e0 02             	and    eax,0x2
  401ccc:	83 f8 00             	cmp    eax,0x0
  401ccf:	0f 85 0b 19 00 00    	jne    4035e0 <main+0x31fe>
  401cd5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401cd9:	48 83 c0 08          	add    rax,0x8
  401cdd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401ce0:	48 83 c1 1d          	add    rcx,0x1d
  401ce4:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401ce7:	83 e0 04             	and    eax,0x4
  401cea:	83 f8 00             	cmp    eax,0x0
  401ced:	0f 84 ed 18 00 00    	je     4035e0 <main+0x31fe>
  401cf3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401cf7:	48 83 c0 08          	add    rax,0x8
  401cfb:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401cfe:	48 83 c1 1e          	add    rcx,0x1e
  401d02:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401d05:	83 e0 01             	and    eax,0x1
  401d08:	83 f8 00             	cmp    eax,0x0
  401d0b:	0f 84 cf 18 00 00    	je     4035e0 <main+0x31fe>
  401d11:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401d15:	48 83 c0 08          	add    rax,0x8
  401d19:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401d1c:	48 83 c1 2c          	add    rcx,0x2c
  401d20:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401d23:	83 e0 02             	and    eax,0x2
  401d26:	83 f8 00             	cmp    eax,0x0
  401d29:	0f 84 b1 18 00 00    	je     4035e0 <main+0x31fe>
  401d2f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401d33:	48 83 c0 08          	add    rax,0x8
  401d37:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401d3a:	48 83 c1 03          	add    rcx,0x3
  401d3e:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401d41:	83 e0 08             	and    eax,0x8
  401d44:	83 f8 00             	cmp    eax,0x0
  401d47:	0f 84 93 18 00 00    	je     4035e0 <main+0x31fe>
  401d4d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401d51:	48 83 c0 08          	add    rax,0x8
  401d55:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401d58:	48 83 c1 0a          	add    rcx,0xa
  401d5c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401d5f:	81 e0 80 00 00 00    	and    eax,0x80
  401d65:	83 f8 00             	cmp    eax,0x0
  401d68:	0f 85 72 18 00 00    	jne    4035e0 <main+0x31fe>
  401d6e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401d72:	48 83 c0 08          	add    rax,0x8
  401d76:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401d79:	48 83 c1 33          	add    rcx,0x33
  401d7d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401d80:	83 e0 02             	and    eax,0x2
  401d83:	83 f8 00             	cmp    eax,0x0
  401d86:	0f 85 54 18 00 00    	jne    4035e0 <main+0x31fe>
  401d8c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401d90:	48 83 c0 08          	add    rax,0x8
  401d94:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401d97:	48 83 c1 26          	add    rcx,0x26
  401d9b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401d9e:	83 e0 01             	and    eax,0x1
  401da1:	83 f8 00             	cmp    eax,0x0
  401da4:	0f 84 36 18 00 00    	je     4035e0 <main+0x31fe>
  401daa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401dae:	48 83 c0 08          	add    rax,0x8
  401db2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401db5:	48 83 c1 13          	add    rcx,0x13
  401db9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401dbc:	83 e0 40             	and    eax,0x40
  401dbf:	83 f8 00             	cmp    eax,0x0
  401dc2:	0f 84 18 18 00 00    	je     4035e0 <main+0x31fe>
  401dc8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401dcc:	48 83 c0 08          	add    rax,0x8
  401dd0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401dd3:	48 83 c1 27          	add    rcx,0x27
  401dd7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401dda:	83 e0 40             	and    eax,0x40
  401ddd:	83 f8 00             	cmp    eax,0x0
  401de0:	0f 84 fa 17 00 00    	je     4035e0 <main+0x31fe>
  401de6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401dea:	48 83 c0 08          	add    rax,0x8
  401dee:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401df1:	48 83 c1 1b          	add    rcx,0x1b
  401df5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401df8:	83 e0 20             	and    eax,0x20
  401dfb:	83 f8 00             	cmp    eax,0x0
  401dfe:	0f 84 dc 17 00 00    	je     4035e0 <main+0x31fe>
  401e04:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401e08:	48 83 c0 08          	add    rax,0x8
  401e0c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401e0f:	48 83 c1 2d          	add    rcx,0x2d
  401e13:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401e16:	83 e0 40             	and    eax,0x40
  401e19:	83 f8 00             	cmp    eax,0x0
  401e1c:	0f 84 be 17 00 00    	je     4035e0 <main+0x31fe>
  401e22:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401e26:	48 83 c0 08          	add    rax,0x8
  401e2a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401e2d:	48 83 c1 02          	add    rcx,0x2
  401e31:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401e34:	83 e0 02             	and    eax,0x2
  401e37:	83 f8 00             	cmp    eax,0x0
  401e3a:	0f 84 a0 17 00 00    	je     4035e0 <main+0x31fe>
  401e40:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401e44:	48 83 c0 08          	add    rax,0x8
  401e48:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401e4b:	48 83 c1 1b          	add    rcx,0x1b
  401e4f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401e52:	83 e0 08             	and    eax,0x8
  401e55:	83 f8 00             	cmp    eax,0x0
  401e58:	0f 84 82 17 00 00    	je     4035e0 <main+0x31fe>
  401e5e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401e62:	48 83 c0 08          	add    rax,0x8
  401e66:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401e69:	48 83 c1 0b          	add    rcx,0xb
  401e6d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401e70:	83 e0 10             	and    eax,0x10
  401e73:	83 f8 00             	cmp    eax,0x0
  401e76:	0f 84 64 17 00 00    	je     4035e0 <main+0x31fe>
  401e7c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401e80:	48 83 c0 08          	add    rax,0x8
  401e84:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401e87:	48 83 c1 18          	add    rcx,0x18
  401e8b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401e8e:	83 e0 40             	and    eax,0x40
  401e91:	83 f8 00             	cmp    eax,0x0
  401e94:	0f 84 46 17 00 00    	je     4035e0 <main+0x31fe>
  401e9a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401e9e:	48 83 c0 08          	add    rax,0x8
  401ea2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401ea5:	48 83 c1 05          	add    rcx,0x5
  401ea9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401eac:	83 e0 02             	and    eax,0x2
  401eaf:	83 f8 00             	cmp    eax,0x0
  401eb2:	0f 85 28 17 00 00    	jne    4035e0 <main+0x31fe>
  401eb8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401ebc:	48 83 c0 08          	add    rax,0x8
  401ec0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401ec3:	48 83 c1 19          	add    rcx,0x19
  401ec7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401eca:	83 e0 02             	and    eax,0x2
  401ecd:	83 f8 00             	cmp    eax,0x0
  401ed0:	0f 84 0a 17 00 00    	je     4035e0 <main+0x31fe>
  401ed6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401eda:	48 83 c0 08          	add    rax,0x8
  401ede:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401ee1:	48 83 c1 1a          	add    rcx,0x1a
  401ee5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401ee8:	83 e0 40             	and    eax,0x40
  401eeb:	83 f8 00             	cmp    eax,0x0
  401eee:	0f 84 ec 16 00 00    	je     4035e0 <main+0x31fe>
  401ef4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401ef8:	48 83 c0 08          	add    rax,0x8
  401efc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401eff:	48 83 c1 18          	add    rcx,0x18
  401f03:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401f06:	83 e0 04             	and    eax,0x4
  401f09:	83 f8 00             	cmp    eax,0x0
  401f0c:	0f 85 ce 16 00 00    	jne    4035e0 <main+0x31fe>
  401f12:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401f16:	48 83 c0 08          	add    rax,0x8
  401f1a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401f1d:	48 83 c1 04          	add    rcx,0x4
  401f21:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401f24:	83 e0 40             	and    eax,0x40
  401f27:	83 f8 00             	cmp    eax,0x0
  401f2a:	0f 84 b0 16 00 00    	je     4035e0 <main+0x31fe>
  401f30:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401f34:	48 83 c0 08          	add    rax,0x8
  401f38:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401f3b:	48 83 c1 2f          	add    rcx,0x2f
  401f3f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401f42:	83 e0 10             	and    eax,0x10
  401f45:	83 f8 00             	cmp    eax,0x0
  401f48:	0f 85 92 16 00 00    	jne    4035e0 <main+0x31fe>
  401f4e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401f52:	48 83 c0 08          	add    rax,0x8
  401f56:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401f59:	48 83 c1 29          	add    rcx,0x29
  401f5d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401f60:	83 e0 40             	and    eax,0x40
  401f63:	83 f8 00             	cmp    eax,0x0
  401f66:	0f 84 74 16 00 00    	je     4035e0 <main+0x31fe>
  401f6c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401f70:	48 83 c0 08          	add    rax,0x8
  401f74:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401f77:	48 83 c1 22          	add    rcx,0x22
  401f7b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401f7e:	83 e0 10             	and    eax,0x10
  401f81:	83 f8 00             	cmp    eax,0x0
  401f84:	0f 84 56 16 00 00    	je     4035e0 <main+0x31fe>
  401f8a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401f8e:	48 83 c0 08          	add    rax,0x8
  401f92:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401f95:	48 83 c1 23          	add    rcx,0x23
  401f99:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401f9c:	83 e0 40             	and    eax,0x40
  401f9f:	83 f8 00             	cmp    eax,0x0
  401fa2:	0f 84 38 16 00 00    	je     4035e0 <main+0x31fe>
  401fa8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401fac:	48 83 c0 08          	add    rax,0x8
  401fb0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401fb3:	48 83 c1 05          	add    rcx,0x5
  401fb7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401fba:	83 e0 04             	and    eax,0x4
  401fbd:	83 f8 00             	cmp    eax,0x0
  401fc0:	0f 85 1a 16 00 00    	jne    4035e0 <main+0x31fe>
  401fc6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401fca:	48 83 c0 08          	add    rax,0x8
  401fce:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401fd1:	48 83 c1 15          	add    rcx,0x15
  401fd5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401fd8:	83 e0 02             	and    eax,0x2
  401fdb:	83 f8 00             	cmp    eax,0x0
  401fde:	0f 85 fc 15 00 00    	jne    4035e0 <main+0x31fe>
  401fe4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401fe8:	48 83 c0 08          	add    rax,0x8
  401fec:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  401fef:	48 83 c1 2d          	add    rcx,0x2d
  401ff3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  401ff6:	83 e0 10             	and    eax,0x10
  401ff9:	83 f8 00             	cmp    eax,0x0
  401ffc:	0f 85 de 15 00 00    	jne    4035e0 <main+0x31fe>
  402002:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402006:	48 83 c0 08          	add    rax,0x8
  40200a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40200d:	48 83 c1 24          	add    rcx,0x24
  402011:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402014:	83 e0 02             	and    eax,0x2
  402017:	83 f8 00             	cmp    eax,0x0
  40201a:	0f 84 c0 15 00 00    	je     4035e0 <main+0x31fe>
  402020:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402024:	48 83 c0 08          	add    rax,0x8
  402028:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40202b:	48 83 c1 28          	add    rcx,0x28
  40202f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402032:	83 e0 40             	and    eax,0x40
  402035:	83 f8 00             	cmp    eax,0x0
  402038:	0f 84 a2 15 00 00    	je     4035e0 <main+0x31fe>
  40203e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402042:	48 83 c0 08          	add    rax,0x8
  402046:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402049:	48 83 c1 15          	add    rcx,0x15
  40204d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402050:	83 e0 04             	and    eax,0x4
  402053:	83 f8 00             	cmp    eax,0x0
  402056:	0f 84 84 15 00 00    	je     4035e0 <main+0x31fe>
  40205c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402060:	48 83 c0 08          	add    rax,0x8
  402064:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402067:	48 83 c1 13          	add    rcx,0x13
  40206b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40206e:	83 e0 04             	and    eax,0x4
  402071:	83 f8 00             	cmp    eax,0x0
  402074:	0f 84 66 15 00 00    	je     4035e0 <main+0x31fe>
  40207a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40207e:	48 83 c0 08          	add    rax,0x8
  402082:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402085:	48 83 c1 0c          	add    rcx,0xc
  402089:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40208c:	81 e0 80 00 00 00    	and    eax,0x80
  402092:	83 f8 00             	cmp    eax,0x0
  402095:	0f 85 45 15 00 00    	jne    4035e0 <main+0x31fe>
  40209b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40209f:	48 83 c0 08          	add    rax,0x8
  4020a3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4020a6:	48 83 c1 2a          	add    rcx,0x2a
  4020aa:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4020ad:	83 e0 02             	and    eax,0x2
  4020b0:	83 f8 00             	cmp    eax,0x0
  4020b3:	0f 85 27 15 00 00    	jne    4035e0 <main+0x31fe>
  4020b9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4020bd:	48 83 c0 08          	add    rax,0x8
  4020c1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4020c4:	48 83 c1 01          	add    rcx,0x1
  4020c8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4020cb:	83 e0 08             	and    eax,0x8
  4020ce:	83 f8 00             	cmp    eax,0x0
  4020d1:	0f 85 09 15 00 00    	jne    4035e0 <main+0x31fe>
  4020d7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4020db:	48 83 c0 08          	add    rax,0x8
  4020df:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4020e2:	48 83 c1 10          	add    rcx,0x10
  4020e6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4020e9:	83 e0 10             	and    eax,0x10
  4020ec:	83 f8 00             	cmp    eax,0x0
  4020ef:	0f 84 eb 14 00 00    	je     4035e0 <main+0x31fe>
  4020f5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4020f9:	48 83 c0 08          	add    rax,0x8
  4020fd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402100:	48 83 c1 23          	add    rcx,0x23
  402104:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402107:	83 e0 04             	and    eax,0x4
  40210a:	83 f8 00             	cmp    eax,0x0
  40210d:	0f 85 cd 14 00 00    	jne    4035e0 <main+0x31fe>
  402113:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402117:	48 83 c0 08          	add    rax,0x8
  40211b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40211e:	48 83 c1 0d          	add    rcx,0xd
  402122:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402125:	83 e0 01             	and    eax,0x1
  402128:	83 f8 00             	cmp    eax,0x0
  40212b:	0f 84 af 14 00 00    	je     4035e0 <main+0x31fe>
  402131:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402135:	48 83 c0 08          	add    rax,0x8
  402139:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40213c:	48 83 c1 01          	add    rcx,0x1
  402140:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402143:	83 e0 40             	and    eax,0x40
  402146:	83 f8 00             	cmp    eax,0x0
  402149:	0f 84 91 14 00 00    	je     4035e0 <main+0x31fe>
  40214f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402153:	48 83 c0 08          	add    rax,0x8
  402157:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40215a:	48 83 c1 2e          	add    rcx,0x2e
  40215e:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402161:	83 e0 01             	and    eax,0x1
  402164:	83 f8 00             	cmp    eax,0x0
  402167:	0f 84 73 14 00 00    	je     4035e0 <main+0x31fe>
  40216d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402171:	48 83 c0 08          	add    rax,0x8
  402175:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402178:	48 83 c1 1f          	add    rcx,0x1f
  40217c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40217f:	83 e0 10             	and    eax,0x10
  402182:	83 f8 00             	cmp    eax,0x0
  402185:	0f 84 55 14 00 00    	je     4035e0 <main+0x31fe>
  40218b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40218f:	48 83 c0 08          	add    rax,0x8
  402193:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402196:	48 83 c1 26          	add    rcx,0x26
  40219a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40219d:	83 e0 04             	and    eax,0x4
  4021a0:	83 f8 00             	cmp    eax,0x0
  4021a3:	0f 84 37 14 00 00    	je     4035e0 <main+0x31fe>
  4021a9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4021ad:	48 83 c0 08          	add    rax,0x8
  4021b1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4021b4:	48 83 c1 2f          	add    rcx,0x2f
  4021b8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4021bb:	83 e0 02             	and    eax,0x2
  4021be:	83 f8 00             	cmp    eax,0x0
  4021c1:	0f 84 19 14 00 00    	je     4035e0 <main+0x31fe>
  4021c7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4021cb:	48 83 c0 08          	add    rax,0x8
  4021cf:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4021d2:	48 83 c1 26          	add    rcx,0x26
  4021d6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4021d9:	83 e0 02             	and    eax,0x2
  4021dc:	83 f8 00             	cmp    eax,0x0
  4021df:	0f 84 fb 13 00 00    	je     4035e0 <main+0x31fe>
  4021e5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4021e9:	48 83 c0 08          	add    rax,0x8
  4021ed:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4021f0:	48 83 c1 25          	add    rcx,0x25
  4021f4:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4021f7:	81 e0 80 00 00 00    	and    eax,0x80
  4021fd:	83 f8 00             	cmp    eax,0x0
  402200:	0f 85 da 13 00 00    	jne    4035e0 <main+0x31fe>
  402206:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40220a:	48 83 c0 08          	add    rax,0x8
  40220e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402211:	48 83 c1 1c          	add    rcx,0x1c
  402215:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402218:	83 e0 02             	and    eax,0x2
  40221b:	83 f8 00             	cmp    eax,0x0
  40221e:	0f 85 bc 13 00 00    	jne    4035e0 <main+0x31fe>
  402224:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402228:	48 83 c0 08          	add    rax,0x8
  40222c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40222f:	48 83 c1 0a          	add    rcx,0xa
  402233:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402236:	83 e0 40             	and    eax,0x40
  402239:	83 f8 00             	cmp    eax,0x0
  40223c:	0f 85 9e 13 00 00    	jne    4035e0 <main+0x31fe>
  402242:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402246:	48 83 c0 08          	add    rax,0x8
  40224a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40224d:	48 83 c1 2e          	add    rcx,0x2e
  402251:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402254:	83 e0 10             	and    eax,0x10
  402257:	83 f8 00             	cmp    eax,0x0
  40225a:	0f 84 80 13 00 00    	je     4035e0 <main+0x31fe>
  402260:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402264:	48 83 c0 08          	add    rax,0x8
  402268:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40226b:	48 83 c1 27          	add    rcx,0x27
  40226f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402272:	81 e0 80 00 00 00    	and    eax,0x80
  402278:	83 f8 00             	cmp    eax,0x0
  40227b:	0f 85 5f 13 00 00    	jne    4035e0 <main+0x31fe>
  402281:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402285:	48 83 c0 08          	add    rax,0x8
  402289:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40228c:	48 83 c1 2e          	add    rcx,0x2e
  402290:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402293:	83 e0 20             	and    eax,0x20
  402296:	83 f8 00             	cmp    eax,0x0
  402299:	0f 85 41 13 00 00    	jne    4035e0 <main+0x31fe>
  40229f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4022a3:	48 83 c0 08          	add    rax,0x8
  4022a7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4022aa:	48 83 c1 1f          	add    rcx,0x1f
  4022ae:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4022b1:	83 e0 01             	and    eax,0x1
  4022b4:	83 f8 00             	cmp    eax,0x0
  4022b7:	0f 84 23 13 00 00    	je     4035e0 <main+0x31fe>
  4022bd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4022c1:	48 83 c0 08          	add    rax,0x8
  4022c5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4022c8:	48 83 c1 25          	add    rcx,0x25
  4022cc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4022cf:	83 e0 10             	and    eax,0x10
  4022d2:	83 f8 00             	cmp    eax,0x0
  4022d5:	0f 84 05 13 00 00    	je     4035e0 <main+0x31fe>
  4022db:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4022df:	48 83 c0 08          	add    rax,0x8
  4022e3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4022e6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4022e9:	83 e0 01             	and    eax,0x1
  4022ec:	83 f8 00             	cmp    eax,0x0
  4022ef:	0f 84 eb 12 00 00    	je     4035e0 <main+0x31fe>
  4022f5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4022f9:	48 83 c0 08          	add    rax,0x8
  4022fd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402300:	48 83 c1 11          	add    rcx,0x11
  402304:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402307:	83 e0 20             	and    eax,0x20
  40230a:	83 f8 00             	cmp    eax,0x0
  40230d:	0f 84 cd 12 00 00    	je     4035e0 <main+0x31fe>
  402313:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402317:	48 83 c0 08          	add    rax,0x8
  40231b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40231e:	48 83 c1 0b          	add    rcx,0xb
  402322:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402325:	83 e0 20             	and    eax,0x20
  402328:	83 f8 00             	cmp    eax,0x0
  40232b:	0f 84 af 12 00 00    	je     4035e0 <main+0x31fe>
  402331:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402335:	48 83 c0 08          	add    rax,0x8
  402339:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40233c:	48 83 c1 31          	add    rcx,0x31
  402340:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402343:	81 e0 80 00 00 00    	and    eax,0x80
  402349:	83 f8 00             	cmp    eax,0x0
  40234c:	0f 85 8e 12 00 00    	jne    4035e0 <main+0x31fe>
  402352:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402356:	48 83 c0 08          	add    rax,0x8
  40235a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40235d:	48 83 c1 12          	add    rcx,0x12
  402361:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402364:	83 e0 08             	and    eax,0x8
  402367:	83 f8 00             	cmp    eax,0x0
  40236a:	0f 85 70 12 00 00    	jne    4035e0 <main+0x31fe>
  402370:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402374:	48 83 c0 08          	add    rax,0x8
  402378:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40237b:	48 83 c1 16          	add    rcx,0x16
  40237f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402382:	83 e0 40             	and    eax,0x40
  402385:	83 f8 00             	cmp    eax,0x0
  402388:	0f 84 52 12 00 00    	je     4035e0 <main+0x31fe>
  40238e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402392:	48 83 c0 08          	add    rax,0x8
  402396:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402399:	48 83 c1 1c          	add    rcx,0x1c
  40239d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4023a0:	83 e0 04             	and    eax,0x4
  4023a3:	83 f8 00             	cmp    eax,0x0
  4023a6:	0f 85 34 12 00 00    	jne    4035e0 <main+0x31fe>
  4023ac:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4023b0:	48 83 c0 08          	add    rax,0x8
  4023b4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4023b7:	48 83 c1 0e          	add    rcx,0xe
  4023bb:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4023be:	83 e0 08             	and    eax,0x8
  4023c1:	83 f8 00             	cmp    eax,0x0
  4023c4:	0f 84 16 12 00 00    	je     4035e0 <main+0x31fe>
  4023ca:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4023ce:	48 83 c0 08          	add    rax,0x8
  4023d2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4023d5:	48 83 c1 30          	add    rcx,0x30
  4023d9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4023dc:	83 e0 08             	and    eax,0x8
  4023df:	83 f8 00             	cmp    eax,0x0
  4023e2:	0f 85 f8 11 00 00    	jne    4035e0 <main+0x31fe>
  4023e8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4023ec:	48 83 c0 08          	add    rax,0x8
  4023f0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4023f3:	48 83 c1 06          	add    rcx,0x6
  4023f7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4023fa:	83 e0 40             	and    eax,0x40
  4023fd:	83 f8 00             	cmp    eax,0x0
  402400:	0f 84 da 11 00 00    	je     4035e0 <main+0x31fe>
  402406:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40240a:	48 83 c0 08          	add    rax,0x8
  40240e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402411:	48 83 c1 0c          	add    rcx,0xc
  402415:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402418:	83 e0 20             	and    eax,0x20
  40241b:	83 f8 00             	cmp    eax,0x0
  40241e:	0f 85 bc 11 00 00    	jne    4035e0 <main+0x31fe>
  402424:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402428:	48 83 c0 08          	add    rax,0x8
  40242c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40242f:	48 83 c1 30          	add    rcx,0x30
  402433:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402436:	83 e0 20             	and    eax,0x20
  402439:	83 f8 00             	cmp    eax,0x0
  40243c:	0f 84 9e 11 00 00    	je     4035e0 <main+0x31fe>
  402442:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402446:	48 83 c0 08          	add    rax,0x8
  40244a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40244d:	48 83 c1 1f          	add    rcx,0x1f
  402451:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402454:	83 e0 04             	and    eax,0x4
  402457:	83 f8 00             	cmp    eax,0x0
  40245a:	0f 85 80 11 00 00    	jne    4035e0 <main+0x31fe>
  402460:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402464:	48 83 c0 08          	add    rax,0x8
  402468:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40246b:	48 83 c1 2e          	add    rcx,0x2e
  40246f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402472:	83 e0 40             	and    eax,0x40
  402475:	83 f8 00             	cmp    eax,0x0
  402478:	0f 84 62 11 00 00    	je     4035e0 <main+0x31fe>
  40247e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402482:	48 83 c0 08          	add    rax,0x8
  402486:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402489:	48 83 c1 21          	add    rcx,0x21
  40248d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402490:	83 e0 08             	and    eax,0x8
  402493:	83 f8 00             	cmp    eax,0x0
  402496:	0f 85 44 11 00 00    	jne    4035e0 <main+0x31fe>
  40249c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4024a0:	48 83 c0 08          	add    rax,0x8
  4024a4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4024a7:	48 83 c1 2a          	add    rcx,0x2a
  4024ab:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4024ae:	81 e0 80 00 00 00    	and    eax,0x80
  4024b4:	83 f8 00             	cmp    eax,0x0
  4024b7:	0f 85 23 11 00 00    	jne    4035e0 <main+0x31fe>
  4024bd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4024c1:	48 83 c0 08          	add    rax,0x8
  4024c5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4024c8:	48 83 c1 0f          	add    rcx,0xf
  4024cc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4024cf:	83 e0 01             	and    eax,0x1
  4024d2:	83 f8 00             	cmp    eax,0x0
  4024d5:	0f 84 05 11 00 00    	je     4035e0 <main+0x31fe>
  4024db:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4024df:	48 83 c0 08          	add    rax,0x8
  4024e3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4024e6:	48 83 c1 18          	add    rcx,0x18
  4024ea:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4024ed:	81 e0 80 00 00 00    	and    eax,0x80
  4024f3:	83 f8 00             	cmp    eax,0x0
  4024f6:	0f 85 e4 10 00 00    	jne    4035e0 <main+0x31fe>
  4024fc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402500:	48 83 c0 08          	add    rax,0x8
  402504:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402507:	48 83 c1 0c          	add    rcx,0xc
  40250b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40250e:	83 e0 04             	and    eax,0x4
  402511:	83 f8 00             	cmp    eax,0x0
  402514:	0f 84 c6 10 00 00    	je     4035e0 <main+0x31fe>
  40251a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40251e:	48 83 c0 08          	add    rax,0x8
  402522:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402525:	48 83 c1 15          	add    rcx,0x15
  402529:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40252c:	83 e0 10             	and    eax,0x10
  40252f:	83 f8 00             	cmp    eax,0x0
  402532:	0f 85 a8 10 00 00    	jne    4035e0 <main+0x31fe>
  402538:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40253c:	48 83 c0 08          	add    rax,0x8
  402540:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402543:	48 83 c1 15          	add    rcx,0x15
  402547:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40254a:	83 e0 01             	and    eax,0x1
  40254d:	83 f8 00             	cmp    eax,0x0
  402550:	0f 85 8a 10 00 00    	jne    4035e0 <main+0x31fe>
  402556:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40255a:	48 83 c0 08          	add    rax,0x8
  40255e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402561:	48 83 c1 1f          	add    rcx,0x1f
  402565:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402568:	83 e0 20             	and    eax,0x20
  40256b:	83 f8 00             	cmp    eax,0x0
  40256e:	0f 84 6c 10 00 00    	je     4035e0 <main+0x31fe>
  402574:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402578:	48 83 c0 08          	add    rax,0x8
  40257c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40257f:	48 83 c1 1a          	add    rcx,0x1a
  402583:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402586:	83 e0 04             	and    eax,0x4
  402589:	83 f8 00             	cmp    eax,0x0
  40258c:	0f 84 4e 10 00 00    	je     4035e0 <main+0x31fe>
  402592:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402596:	48 83 c0 08          	add    rax,0x8
  40259a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40259d:	48 83 c1 33          	add    rcx,0x33
  4025a1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4025a4:	83 e0 40             	and    eax,0x40
  4025a7:	83 f8 00             	cmp    eax,0x0
  4025aa:	0f 84 30 10 00 00    	je     4035e0 <main+0x31fe>
  4025b0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4025b4:	48 83 c0 08          	add    rax,0x8
  4025b8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4025bb:	48 83 c1 2a          	add    rcx,0x2a
  4025bf:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4025c2:	83 e0 20             	and    eax,0x20
  4025c5:	83 f8 00             	cmp    eax,0x0
  4025c8:	0f 84 12 10 00 00    	je     4035e0 <main+0x31fe>
  4025ce:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4025d2:	48 83 c0 08          	add    rax,0x8
  4025d6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4025d9:	48 83 c1 0c          	add    rcx,0xc
  4025dd:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4025e0:	83 e0 01             	and    eax,0x1
  4025e3:	83 f8 00             	cmp    eax,0x0
  4025e6:	0f 84 f4 0f 00 00    	je     4035e0 <main+0x31fe>
  4025ec:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4025f0:	48 83 c0 08          	add    rax,0x8
  4025f4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4025f7:	48 83 c1 0f          	add    rcx,0xf
  4025fb:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4025fe:	83 e0 08             	and    eax,0x8
  402601:	83 f8 00             	cmp    eax,0x0
  402604:	0f 85 d6 0f 00 00    	jne    4035e0 <main+0x31fe>
  40260a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40260e:	48 83 c0 08          	add    rax,0x8
  402612:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402615:	48 83 c1 1b          	add    rcx,0x1b
  402619:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40261c:	81 e0 80 00 00 00    	and    eax,0x80
  402622:	83 f8 00             	cmp    eax,0x0
  402625:	0f 85 b5 0f 00 00    	jne    4035e0 <main+0x31fe>
  40262b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40262f:	48 83 c0 08          	add    rax,0x8
  402633:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402636:	48 83 c1 22          	add    rcx,0x22
  40263a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40263d:	83 e0 02             	and    eax,0x2
  402640:	83 f8 00             	cmp    eax,0x0
  402643:	0f 84 97 0f 00 00    	je     4035e0 <main+0x31fe>
  402649:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40264d:	48 83 c0 08          	add    rax,0x8
  402651:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402654:	48 83 c1 06          	add    rcx,0x6
  402658:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40265b:	83 e0 20             	and    eax,0x20
  40265e:	83 f8 00             	cmp    eax,0x0
  402661:	0f 84 79 0f 00 00    	je     4035e0 <main+0x31fe>
  402667:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40266b:	48 83 c0 08          	add    rax,0x8
  40266f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402672:	48 83 c1 17          	add    rcx,0x17
  402676:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402679:	83 e0 08             	and    eax,0x8
  40267c:	83 f8 00             	cmp    eax,0x0
  40267f:	0f 84 5b 0f 00 00    	je     4035e0 <main+0x31fe>
  402685:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402689:	48 83 c0 08          	add    rax,0x8
  40268d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402690:	48 83 c1 27          	add    rcx,0x27
  402694:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402697:	83 e0 04             	and    eax,0x4
  40269a:	83 f8 00             	cmp    eax,0x0
  40269d:	0f 85 3d 0f 00 00    	jne    4035e0 <main+0x31fe>
  4026a3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4026a7:	48 83 c0 08          	add    rax,0x8
  4026ab:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4026ae:	48 83 c1 12          	add    rcx,0x12
  4026b2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4026b5:	83 e0 01             	and    eax,0x1
  4026b8:	83 f8 00             	cmp    eax,0x0
  4026bb:	0f 85 1f 0f 00 00    	jne    4035e0 <main+0x31fe>
  4026c1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4026c5:	48 83 c0 08          	add    rax,0x8
  4026c9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4026cc:	48 83 c1 20          	add    rcx,0x20
  4026d0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4026d3:	83 e0 10             	and    eax,0x10
  4026d6:	83 f8 00             	cmp    eax,0x0
  4026d9:	0f 84 01 0f 00 00    	je     4035e0 <main+0x31fe>
  4026df:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4026e3:	48 83 c0 08          	add    rax,0x8
  4026e7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4026ea:	48 83 c1 1c          	add    rcx,0x1c
  4026ee:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4026f1:	83 e0 01             	and    eax,0x1
  4026f4:	83 f8 00             	cmp    eax,0x0
  4026f7:	0f 85 e3 0e 00 00    	jne    4035e0 <main+0x31fe>
  4026fd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402701:	48 83 c0 08          	add    rax,0x8
  402705:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402708:	48 83 c1 2e          	add    rcx,0x2e
  40270c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40270f:	83 e0 02             	and    eax,0x2
  402712:	83 f8 00             	cmp    eax,0x0
  402715:	0f 84 c5 0e 00 00    	je     4035e0 <main+0x31fe>
  40271b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40271f:	48 83 c0 08          	add    rax,0x8
  402723:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402726:	48 83 c1 0b          	add    rcx,0xb
  40272a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40272d:	83 e0 02             	and    eax,0x2
  402730:	83 f8 00             	cmp    eax,0x0
  402733:	0f 84 a7 0e 00 00    	je     4035e0 <main+0x31fe>
  402739:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40273d:	48 83 c0 08          	add    rax,0x8
  402741:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402744:	48 83 c1 1c          	add    rcx,0x1c
  402748:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40274b:	83 e0 10             	and    eax,0x10
  40274e:	83 f8 00             	cmp    eax,0x0
  402751:	0f 85 89 0e 00 00    	jne    4035e0 <main+0x31fe>
  402757:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40275b:	48 83 c0 08          	add    rax,0x8
  40275f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402762:	48 83 c1 1d          	add    rcx,0x1d
  402766:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402769:	83 e0 02             	and    eax,0x2
  40276c:	83 f8 00             	cmp    eax,0x0
  40276f:	0f 84 6b 0e 00 00    	je     4035e0 <main+0x31fe>
  402775:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402779:	48 83 c0 08          	add    rax,0x8
  40277d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402780:	48 83 c1 2f          	add    rcx,0x2f
  402784:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402787:	83 e0 01             	and    eax,0x1
  40278a:	83 f8 00             	cmp    eax,0x0
  40278d:	0f 85 4d 0e 00 00    	jne    4035e0 <main+0x31fe>
  402793:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402797:	48 83 c0 08          	add    rax,0x8
  40279b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40279e:	48 83 c1 11          	add    rcx,0x11
  4027a2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4027a5:	83 e0 04             	and    eax,0x4
  4027a8:	83 f8 00             	cmp    eax,0x0
  4027ab:	0f 84 2f 0e 00 00    	je     4035e0 <main+0x31fe>
  4027b1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4027b5:	48 83 c0 08          	add    rax,0x8
  4027b9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4027bc:	48 83 c1 0e          	add    rcx,0xe
  4027c0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4027c3:	83 e0 20             	and    eax,0x20
  4027c6:	83 f8 00             	cmp    eax,0x0
  4027c9:	0f 84 11 0e 00 00    	je     4035e0 <main+0x31fe>
  4027cf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4027d3:	48 83 c0 08          	add    rax,0x8
  4027d7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4027da:	48 83 c1 2b          	add    rcx,0x2b
  4027de:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4027e1:	83 e0 02             	and    eax,0x2
  4027e4:	83 f8 00             	cmp    eax,0x0
  4027e7:	0f 85 f3 0d 00 00    	jne    4035e0 <main+0x31fe>
  4027ed:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4027f1:	48 83 c0 08          	add    rax,0x8
  4027f5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4027f8:	48 83 c1 1f          	add    rcx,0x1f
  4027fc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4027ff:	81 e0 80 00 00 00    	and    eax,0x80
  402805:	83 f8 00             	cmp    eax,0x0
  402808:	0f 85 d2 0d 00 00    	jne    4035e0 <main+0x31fe>
  40280e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402812:	48 83 c0 08          	add    rax,0x8
  402816:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402819:	48 83 c1 1f          	add    rcx,0x1f
  40281d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402820:	83 e0 02             	and    eax,0x2
  402823:	83 f8 00             	cmp    eax,0x0
  402826:	0f 85 b4 0d 00 00    	jne    4035e0 <main+0x31fe>
  40282c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402830:	48 83 c0 08          	add    rax,0x8
  402834:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402837:	48 83 c1 23          	add    rcx,0x23
  40283b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40283e:	83 e0 20             	and    eax,0x20
  402841:	83 f8 00             	cmp    eax,0x0
  402844:	0f 85 96 0d 00 00    	jne    4035e0 <main+0x31fe>
  40284a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40284e:	48 83 c0 08          	add    rax,0x8
  402852:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402855:	48 83 c1 0f          	add    rcx,0xf
  402859:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40285c:	83 e0 40             	and    eax,0x40
  40285f:	83 f8 00             	cmp    eax,0x0
  402862:	0f 84 78 0d 00 00    	je     4035e0 <main+0x31fe>
  402868:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40286c:	48 83 c0 08          	add    rax,0x8
  402870:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402873:	48 83 c1 1e          	add    rcx,0x1e
  402877:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40287a:	83 e0 20             	and    eax,0x20
  40287d:	83 f8 00             	cmp    eax,0x0
  402880:	0f 85 5a 0d 00 00    	jne    4035e0 <main+0x31fe>
  402886:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40288a:	48 83 c0 08          	add    rax,0x8
  40288e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402891:	48 83 c1 2d          	add    rcx,0x2d
  402895:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402898:	81 e0 80 00 00 00    	and    eax,0x80
  40289e:	83 f8 00             	cmp    eax,0x0
  4028a1:	0f 85 39 0d 00 00    	jne    4035e0 <main+0x31fe>
  4028a7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4028ab:	48 83 c0 08          	add    rax,0x8
  4028af:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4028b2:	48 83 c1 09          	add    rcx,0x9
  4028b6:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4028b9:	83 e0 40             	and    eax,0x40
  4028bc:	83 f8 00             	cmp    eax,0x0
  4028bf:	0f 84 1b 0d 00 00    	je     4035e0 <main+0x31fe>
  4028c5:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4028c9:	48 83 c0 08          	add    rax,0x8
  4028cd:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4028d0:	48 83 c1 07          	add    rcx,0x7
  4028d4:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4028d7:	83 e0 08             	and    eax,0x8
  4028da:	83 f8 00             	cmp    eax,0x0
  4028dd:	0f 84 fd 0c 00 00    	je     4035e0 <main+0x31fe>
  4028e3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4028e7:	48 83 c0 08          	add    rax,0x8
  4028eb:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4028ee:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4028f1:	81 e0 80 00 00 00    	and    eax,0x80
  4028f7:	83 f8 00             	cmp    eax,0x0
  4028fa:	0f 85 e0 0c 00 00    	jne    4035e0 <main+0x31fe>
  402900:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402904:	48 83 c0 08          	add    rax,0x8
  402908:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40290b:	48 83 c1 26          	add    rcx,0x26
  40290f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402912:	83 e0 20             	and    eax,0x20
  402915:	83 f8 00             	cmp    eax,0x0
  402918:	0f 85 c2 0c 00 00    	jne    4035e0 <main+0x31fe>
  40291e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402922:	48 83 c0 08          	add    rax,0x8
  402926:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402929:	48 83 c1 25          	add    rcx,0x25
  40292d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402930:	83 e0 20             	and    eax,0x20
  402933:	83 f8 00             	cmp    eax,0x0
  402936:	0f 84 a4 0c 00 00    	je     4035e0 <main+0x31fe>
  40293c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402940:	48 83 c0 08          	add    rax,0x8
  402944:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402947:	48 83 c1 16          	add    rcx,0x16
  40294b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40294e:	83 e0 01             	and    eax,0x1
  402951:	83 f8 00             	cmp    eax,0x0
  402954:	0f 84 86 0c 00 00    	je     4035e0 <main+0x31fe>
  40295a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40295e:	48 83 c0 08          	add    rax,0x8
  402962:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402965:	48 83 c1 32          	add    rcx,0x32
  402969:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40296c:	83 e0 10             	and    eax,0x10
  40296f:	83 f8 00             	cmp    eax,0x0
  402972:	0f 84 68 0c 00 00    	je     4035e0 <main+0x31fe>
  402978:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40297c:	48 83 c0 08          	add    rax,0x8
  402980:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402983:	48 83 c1 33          	add    rcx,0x33
  402987:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40298a:	83 e0 04             	and    eax,0x4
  40298d:	83 f8 00             	cmp    eax,0x0
  402990:	0f 84 4a 0c 00 00    	je     4035e0 <main+0x31fe>
  402996:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40299a:	48 83 c0 08          	add    rax,0x8
  40299e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4029a1:	48 83 c1 2c          	add    rcx,0x2c
  4029a5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4029a8:	83 e0 10             	and    eax,0x10
  4029ab:	83 f8 00             	cmp    eax,0x0
  4029ae:	0f 85 2c 0c 00 00    	jne    4035e0 <main+0x31fe>
  4029b4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4029b8:	48 83 c0 08          	add    rax,0x8
  4029bc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4029bf:	48 83 c1 19          	add    rcx,0x19
  4029c3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4029c6:	83 e0 20             	and    eax,0x20
  4029c9:	83 f8 00             	cmp    eax,0x0
  4029cc:	0f 85 0e 0c 00 00    	jne    4035e0 <main+0x31fe>
  4029d2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4029d6:	48 83 c0 08          	add    rax,0x8
  4029da:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4029dd:	48 83 c1 22          	add    rcx,0x22
  4029e1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4029e4:	83 e0 20             	and    eax,0x20
  4029e7:	83 f8 00             	cmp    eax,0x0
  4029ea:	0f 85 f0 0b 00 00    	jne    4035e0 <main+0x31fe>
  4029f0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4029f4:	48 83 c0 08          	add    rax,0x8
  4029f8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4029fb:	48 83 c1 2c          	add    rcx,0x2c
  4029ff:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402a02:	81 e0 80 00 00 00    	and    eax,0x80
  402a08:	83 f8 00             	cmp    eax,0x0
  402a0b:	0f 85 cf 0b 00 00    	jne    4035e0 <main+0x31fe>
  402a11:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402a15:	48 83 c0 08          	add    rax,0x8
  402a19:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402a1c:	48 83 c1 05          	add    rcx,0x5
  402a20:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402a23:	83 e0 10             	and    eax,0x10
  402a26:	83 f8 00             	cmp    eax,0x0
  402a29:	0f 85 b1 0b 00 00    	jne    4035e0 <main+0x31fe>
  402a2f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402a33:	48 83 c0 08          	add    rax,0x8
  402a37:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402a3a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402a3d:	83 e0 40             	and    eax,0x40
  402a40:	83 f8 00             	cmp    eax,0x0
  402a43:	0f 84 97 0b 00 00    	je     4035e0 <main+0x31fe>
  402a49:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402a4d:	48 83 c0 08          	add    rax,0x8
  402a51:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402a54:	48 83 c1 14          	add    rcx,0x14
  402a58:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402a5b:	83 e0 10             	and    eax,0x10
  402a5e:	83 f8 00             	cmp    eax,0x0
  402a61:	0f 85 79 0b 00 00    	jne    4035e0 <main+0x31fe>
  402a67:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402a6b:	48 83 c0 08          	add    rax,0x8
  402a6f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402a72:	48 83 c1 08          	add    rcx,0x8
  402a76:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402a79:	83 e0 08             	and    eax,0x8
  402a7c:	83 f8 00             	cmp    eax,0x0
  402a7f:	0f 84 5b 0b 00 00    	je     4035e0 <main+0x31fe>
  402a85:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402a89:	48 83 c0 08          	add    rax,0x8
  402a8d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402a90:	48 83 c1 11          	add    rcx,0x11
  402a94:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402a97:	81 e0 80 00 00 00    	and    eax,0x80
  402a9d:	83 f8 00             	cmp    eax,0x0
  402aa0:	0f 85 3a 0b 00 00    	jne    4035e0 <main+0x31fe>
  402aa6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402aaa:	48 83 c0 08          	add    rax,0x8
  402aae:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402ab1:	48 83 c1 23          	add    rcx,0x23
  402ab5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402ab8:	83 e0 01             	and    eax,0x1
  402abb:	83 f8 00             	cmp    eax,0x0
  402abe:	0f 84 1c 0b 00 00    	je     4035e0 <main+0x31fe>
  402ac4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402ac8:	48 83 c0 08          	add    rax,0x8
  402acc:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402acf:	48 83 c1 21          	add    rcx,0x21
  402ad3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402ad6:	83 e0 10             	and    eax,0x10
  402ad9:	83 f8 00             	cmp    eax,0x0
  402adc:	0f 84 fe 0a 00 00    	je     4035e0 <main+0x31fe>
  402ae2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402ae6:	48 83 c0 08          	add    rax,0x8
  402aea:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402aed:	48 83 c1 20          	add    rcx,0x20
  402af1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402af4:	83 e0 01             	and    eax,0x1
  402af7:	83 f8 00             	cmp    eax,0x0
  402afa:	0f 85 e0 0a 00 00    	jne    4035e0 <main+0x31fe>
  402b00:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402b04:	48 83 c0 08          	add    rax,0x8
  402b08:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402b0b:	48 83 c1 27          	add    rcx,0x27
  402b0f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402b12:	83 e0 08             	and    eax,0x8
  402b15:	83 f8 00             	cmp    eax,0x0
  402b18:	0f 85 c2 0a 00 00    	jne    4035e0 <main+0x31fe>
  402b1e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402b22:	48 83 c0 08          	add    rax,0x8
  402b26:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402b29:	48 83 c1 04          	add    rcx,0x4
  402b2d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402b30:	83 e0 20             	and    eax,0x20
  402b33:	83 f8 00             	cmp    eax,0x0
  402b36:	0f 84 a4 0a 00 00    	je     4035e0 <main+0x31fe>
  402b3c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402b40:	48 83 c0 08          	add    rax,0x8
  402b44:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402b47:	48 83 c1 16          	add    rcx,0x16
  402b4b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402b4e:	83 e0 04             	and    eax,0x4
  402b51:	83 f8 00             	cmp    eax,0x0
  402b54:	0f 84 86 0a 00 00    	je     4035e0 <main+0x31fe>
  402b5a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402b5e:	48 83 c0 08          	add    rax,0x8
  402b62:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402b65:	48 83 c1 0e          	add    rcx,0xe
  402b69:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402b6c:	81 e0 80 00 00 00    	and    eax,0x80
  402b72:	83 f8 00             	cmp    eax,0x0
  402b75:	0f 85 65 0a 00 00    	jne    4035e0 <main+0x31fe>
  402b7b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402b7f:	48 83 c0 08          	add    rax,0x8
  402b83:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402b86:	48 83 c1 14          	add    rcx,0x14
  402b8a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402b8d:	81 e0 80 00 00 00    	and    eax,0x80
  402b93:	83 f8 00             	cmp    eax,0x0
  402b96:	0f 85 44 0a 00 00    	jne    4035e0 <main+0x31fe>
  402b9c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402ba0:	48 83 c0 08          	add    rax,0x8
  402ba4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402ba7:	48 83 c1 14          	add    rcx,0x14
  402bab:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402bae:	83 e0 02             	and    eax,0x2
  402bb1:	83 f8 00             	cmp    eax,0x0
  402bb4:	0f 84 26 0a 00 00    	je     4035e0 <main+0x31fe>
  402bba:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402bbe:	48 83 c0 08          	add    rax,0x8
  402bc2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402bc5:	48 83 c1 17          	add    rcx,0x17
  402bc9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402bcc:	83 e0 04             	and    eax,0x4
  402bcf:	83 f8 00             	cmp    eax,0x0
  402bd2:	0f 84 08 0a 00 00    	je     4035e0 <main+0x31fe>
  402bd8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402bdc:	48 83 c0 08          	add    rax,0x8
  402be0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402be3:	48 83 c1 2b          	add    rcx,0x2b
  402be7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402bea:	83 e0 20             	and    eax,0x20
  402bed:	83 f8 00             	cmp    eax,0x0
  402bf0:	0f 84 ea 09 00 00    	je     4035e0 <main+0x31fe>
  402bf6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402bfa:	48 83 c0 08          	add    rax,0x8
  402bfe:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402c01:	48 83 c1 22          	add    rcx,0x22
  402c05:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402c08:	83 e0 01             	and    eax,0x1
  402c0b:	83 f8 00             	cmp    eax,0x0
  402c0e:	0f 84 cc 09 00 00    	je     4035e0 <main+0x31fe>
  402c14:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402c18:	48 83 c0 08          	add    rax,0x8
  402c1c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402c1f:	48 83 c1 24          	add    rcx,0x24
  402c23:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402c26:	83 e0 20             	and    eax,0x20
  402c29:	83 f8 00             	cmp    eax,0x0
  402c2c:	0f 84 ae 09 00 00    	je     4035e0 <main+0x31fe>
  402c32:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402c36:	48 83 c0 08          	add    rax,0x8
  402c3a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402c3d:	48 83 c1 2e          	add    rcx,0x2e
  402c41:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402c44:	83 e0 08             	and    eax,0x8
  402c47:	83 f8 00             	cmp    eax,0x0
  402c4a:	0f 84 90 09 00 00    	je     4035e0 <main+0x31fe>
  402c50:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402c54:	48 83 c0 08          	add    rax,0x8
  402c58:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402c5b:	48 83 c1 1e          	add    rcx,0x1e
  402c5f:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402c62:	83 e0 02             	and    eax,0x2
  402c65:	83 f8 00             	cmp    eax,0x0
  402c68:	0f 84 72 09 00 00    	je     4035e0 <main+0x31fe>
  402c6e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402c72:	48 83 c0 08          	add    rax,0x8
  402c76:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402c79:	48 83 c1 08          	add    rcx,0x8
  402c7d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402c80:	83 e0 20             	and    eax,0x20
  402c83:	83 f8 00             	cmp    eax,0x0
  402c86:	0f 84 54 09 00 00    	je     4035e0 <main+0x31fe>
  402c8c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402c90:	48 83 c0 08          	add    rax,0x8
  402c94:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402c97:	48 83 c1 11          	add    rcx,0x11
  402c9b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402c9e:	83 e0 02             	and    eax,0x2
  402ca1:	83 f8 00             	cmp    eax,0x0
  402ca4:	0f 84 36 09 00 00    	je     4035e0 <main+0x31fe>
  402caa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402cae:	48 83 c0 08          	add    rax,0x8
  402cb2:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402cb5:	48 83 c1 1b          	add    rcx,0x1b
  402cb9:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402cbc:	83 e0 02             	and    eax,0x2
  402cbf:	83 f8 00             	cmp    eax,0x0
  402cc2:	0f 85 18 09 00 00    	jne    4035e0 <main+0x31fe>
  402cc8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402ccc:	48 83 c0 08          	add    rax,0x8
  402cd0:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402cd3:	48 83 c1 13          	add    rcx,0x13
  402cd7:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402cda:	83 e0 02             	and    eax,0x2
  402cdd:	83 f8 00             	cmp    eax,0x0
  402ce0:	0f 85 fa 08 00 00    	jne    4035e0 <main+0x31fe>
  402ce6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402cea:	48 83 c0 08          	add    rax,0x8
  402cee:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402cf1:	48 83 c1 07          	add    rcx,0x7
  402cf5:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402cf8:	81 e0 80 00 00 00    	and    eax,0x80
  402cfe:	83 f8 00             	cmp    eax,0x0
  402d01:	0f 85 d9 08 00 00    	jne    4035e0 <main+0x31fe>
  402d07:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402d0b:	48 83 c0 08          	add    rax,0x8
  402d0f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402d12:	48 83 c1 03          	add    rcx,0x3
  402d16:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402d19:	83 e0 01             	and    eax,0x1
  402d1c:	83 f8 00             	cmp    eax,0x0
  402d1f:	0f 85 bb 08 00 00    	jne    4035e0 <main+0x31fe>
  402d25:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402d29:	48 83 c0 08          	add    rax,0x8
  402d2d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402d30:	48 83 c1 01          	add    rcx,0x1
  402d34:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402d37:	83 e0 20             	and    eax,0x20
  402d3a:	83 f8 00             	cmp    eax,0x0
  402d3d:	0f 85 9d 08 00 00    	jne    4035e0 <main+0x31fe>
  402d43:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402d47:	48 83 c0 08          	add    rax,0x8
  402d4b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402d4e:	48 83 c1 1e          	add    rcx,0x1e
  402d52:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402d55:	83 e0 40             	and    eax,0x40
  402d58:	83 f8 00             	cmp    eax,0x0
  402d5b:	0f 84 7f 08 00 00    	je     4035e0 <main+0x31fe>
  402d61:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402d65:	48 83 c0 08          	add    rax,0x8
  402d69:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402d6c:	48 83 c1 05          	add    rcx,0x5
  402d70:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402d73:	83 e0 40             	and    eax,0x40
  402d76:	83 f8 00             	cmp    eax,0x0
  402d79:	0f 84 61 08 00 00    	je     4035e0 <main+0x31fe>
  402d7f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402d83:	48 83 c0 08          	add    rax,0x8
  402d87:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402d8a:	48 83 c1 22          	add    rcx,0x22
  402d8e:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402d91:	83 e0 40             	and    eax,0x40
  402d94:	83 f8 00             	cmp    eax,0x0
  402d97:	0f 84 43 08 00 00    	je     4035e0 <main+0x31fe>
  402d9d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402da1:	48 83 c0 08          	add    rax,0x8
  402da5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402da8:	48 83 c1 1a          	add    rcx,0x1a
  402dac:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402daf:	83 e0 10             	and    eax,0x10
  402db2:	83 f8 00             	cmp    eax,0x0
  402db5:	0f 85 25 08 00 00    	jne    4035e0 <main+0x31fe>
  402dbb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402dbf:	48 83 c0 08          	add    rax,0x8
  402dc3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402dc6:	48 83 c1 03          	add    rcx,0x3
  402dca:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402dcd:	83 e0 40             	and    eax,0x40
  402dd0:	83 f8 00             	cmp    eax,0x0
  402dd3:	0f 84 07 08 00 00    	je     4035e0 <main+0x31fe>
  402dd9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402ddd:	48 83 c0 08          	add    rax,0x8
  402de1:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402de4:	48 83 c1 29          	add    rcx,0x29
  402de8:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402deb:	81 e0 80 00 00 00    	and    eax,0x80
  402df1:	83 f8 00             	cmp    eax,0x0
  402df4:	0f 85 e6 07 00 00    	jne    4035e0 <main+0x31fe>
  402dfa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402dfe:	48 83 c0 08          	add    rax,0x8
  402e02:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402e05:	48 83 c1 28          	add    rcx,0x28
  402e09:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402e0c:	83 e0 01             	and    eax,0x1
  402e0f:	83 f8 00             	cmp    eax,0x0
  402e12:	0f 84 c8 07 00 00    	je     4035e0 <main+0x31fe>
  402e18:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402e1c:	48 83 c0 08          	add    rax,0x8
  402e20:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402e23:	48 83 c1 2d          	add    rcx,0x2d
  402e27:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402e2a:	83 e0 02             	and    eax,0x2
  402e2d:	83 f8 00             	cmp    eax,0x0
  402e30:	0f 85 aa 07 00 00    	jne    4035e0 <main+0x31fe>
  402e36:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402e3a:	48 83 c0 08          	add    rax,0x8
  402e3e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402e41:	48 83 c1 01          	add    rcx,0x1
  402e45:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402e48:	83 e0 04             	and    eax,0x4
  402e4b:	83 f8 00             	cmp    eax,0x0
  402e4e:	0f 84 8c 07 00 00    	je     4035e0 <main+0x31fe>
  402e54:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402e58:	48 83 c0 08          	add    rax,0x8
  402e5c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402e5f:	48 83 c1 1a          	add    rcx,0x1a
  402e63:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402e66:	83 e0 08             	and    eax,0x8
  402e69:	83 f8 00             	cmp    eax,0x0
  402e6c:	0f 85 6e 07 00 00    	jne    4035e0 <main+0x31fe>
  402e72:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402e76:	48 83 c0 08          	add    rax,0x8
  402e7a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402e7d:	48 83 c1 30          	add    rcx,0x30
  402e81:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402e84:	81 e0 80 00 00 00    	and    eax,0x80
  402e8a:	83 f8 00             	cmp    eax,0x0
  402e8d:	0f 85 4d 07 00 00    	jne    4035e0 <main+0x31fe>
  402e93:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402e97:	48 83 c0 08          	add    rax,0x8
  402e9b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402e9e:	48 83 c1 19          	add    rcx,0x19
  402ea2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402ea5:	83 e0 08             	and    eax,0x8
  402ea8:	83 f8 00             	cmp    eax,0x0
  402eab:	0f 84 2f 07 00 00    	je     4035e0 <main+0x31fe>
  402eb1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402eb5:	48 83 c0 08          	add    rax,0x8
  402eb9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402ebc:	48 83 c1 11          	add    rcx,0x11
  402ec0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402ec3:	83 e0 40             	and    eax,0x40
  402ec6:	83 f8 00             	cmp    eax,0x0
  402ec9:	0f 84 11 07 00 00    	je     4035e0 <main+0x31fe>
  402ecf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402ed3:	48 83 c0 08          	add    rax,0x8
  402ed7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402eda:	48 83 c1 1d          	add    rcx,0x1d
  402ede:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402ee1:	83 e0 01             	and    eax,0x1
  402ee4:	83 f8 00             	cmp    eax,0x0
  402ee7:	0f 84 f3 06 00 00    	je     4035e0 <main+0x31fe>
  402eed:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402ef1:	48 83 c0 08          	add    rax,0x8
  402ef5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402ef8:	48 83 c1 21          	add    rcx,0x21
  402efc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402eff:	83 e0 40             	and    eax,0x40
  402f02:	83 f8 00             	cmp    eax,0x0
  402f05:	0f 84 d5 06 00 00    	je     4035e0 <main+0x31fe>
  402f0b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402f0f:	48 83 c0 08          	add    rax,0x8
  402f13:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402f16:	48 83 c1 1b          	add    rcx,0x1b
  402f1a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402f1d:	83 e0 40             	and    eax,0x40
  402f20:	83 f8 00             	cmp    eax,0x0
  402f23:	0f 84 b7 06 00 00    	je     4035e0 <main+0x31fe>
  402f29:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402f2d:	48 83 c0 08          	add    rax,0x8
  402f31:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402f34:	48 83 c1 19          	add    rcx,0x19
  402f38:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402f3b:	83 e0 01             	and    eax,0x1
  402f3e:	83 f8 00             	cmp    eax,0x0
  402f41:	0f 84 99 06 00 00    	je     4035e0 <main+0x31fe>
  402f47:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402f4b:	48 83 c0 08          	add    rax,0x8
  402f4f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402f52:	48 83 c1 0a          	add    rcx,0xa
  402f56:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402f59:	83 e0 01             	and    eax,0x1
  402f5c:	83 f8 00             	cmp    eax,0x0
  402f5f:	0f 85 7b 06 00 00    	jne    4035e0 <main+0x31fe>
  402f65:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402f69:	48 83 c0 08          	add    rax,0x8
  402f6d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402f70:	48 83 c1 04          	add    rcx,0x4
  402f74:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402f77:	83 e0 02             	and    eax,0x2
  402f7a:	83 f8 00             	cmp    eax,0x0
  402f7d:	0f 85 5d 06 00 00    	jne    4035e0 <main+0x31fe>
  402f83:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402f87:	48 83 c0 08          	add    rax,0x8
  402f8b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402f8e:	48 83 c1 28          	add    rcx,0x28
  402f92:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402f95:	83 e0 04             	and    eax,0x4
  402f98:	83 f8 00             	cmp    eax,0x0
  402f9b:	0f 84 3f 06 00 00    	je     4035e0 <main+0x31fe>
  402fa1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402fa5:	48 83 c0 08          	add    rax,0x8
  402fa9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402fac:	48 83 c1 08          	add    rcx,0x8
  402fb0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402fb3:	83 e0 02             	and    eax,0x2
  402fb6:	83 f8 00             	cmp    eax,0x0
  402fb9:	0f 84 21 06 00 00    	je     4035e0 <main+0x31fe>
  402fbf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402fc3:	48 83 c0 08          	add    rax,0x8
  402fc7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402fca:	48 83 c1 0f          	add    rcx,0xf
  402fce:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402fd1:	83 e0 02             	and    eax,0x2
  402fd4:	83 f8 00             	cmp    eax,0x0
  402fd7:	0f 85 03 06 00 00    	jne    4035e0 <main+0x31fe>
  402fdd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402fe1:	48 83 c0 08          	add    rax,0x8
  402fe5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  402fe8:	48 83 c1 0e          	add    rcx,0xe
  402fec:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  402fef:	83 e0 01             	and    eax,0x1
  402ff2:	83 f8 00             	cmp    eax,0x0
  402ff5:	0f 84 e5 05 00 00    	je     4035e0 <main+0x31fe>
  402ffb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402fff:	48 83 c0 08          	add    rax,0x8
  403003:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403006:	48 83 c1 0a          	add    rcx,0xa
  40300a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40300d:	83 e0 04             	and    eax,0x4
  403010:	83 f8 00             	cmp    eax,0x0
  403013:	0f 85 c7 05 00 00    	jne    4035e0 <main+0x31fe>
  403019:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40301d:	48 83 c0 08          	add    rax,0x8
  403021:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403024:	48 83 c1 2a          	add    rcx,0x2a
  403028:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40302b:	83 e0 08             	and    eax,0x8
  40302e:	83 f8 00             	cmp    eax,0x0
  403031:	0f 84 a9 05 00 00    	je     4035e0 <main+0x31fe>
  403037:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40303b:	48 83 c0 08          	add    rax,0x8
  40303f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403042:	48 83 c1 32          	add    rcx,0x32
  403046:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403049:	83 e0 08             	and    eax,0x8
  40304c:	83 f8 00             	cmp    eax,0x0
  40304f:	0f 85 8b 05 00 00    	jne    4035e0 <main+0x31fe>
  403055:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403059:	48 83 c0 08          	add    rax,0x8
  40305d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403060:	48 83 c1 26          	add    rcx,0x26
  403064:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403067:	83 e0 10             	and    eax,0x10
  40306a:	83 f8 00             	cmp    eax,0x0
  40306d:	0f 84 6d 05 00 00    	je     4035e0 <main+0x31fe>
  403073:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403077:	48 83 c0 08          	add    rax,0x8
  40307b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40307e:	48 83 c1 32          	add    rcx,0x32
  403082:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403085:	83 e0 01             	and    eax,0x1
  403088:	83 f8 00             	cmp    eax,0x0
  40308b:	0f 84 4f 05 00 00    	je     4035e0 <main+0x31fe>
  403091:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403095:	48 83 c0 08          	add    rax,0x8
  403099:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40309c:	48 83 c1 02          	add    rcx,0x2
  4030a0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4030a3:	83 e0 10             	and    eax,0x10
  4030a6:	83 f8 00             	cmp    eax,0x0
  4030a9:	0f 85 31 05 00 00    	jne    4035e0 <main+0x31fe>
  4030af:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4030b3:	48 83 c0 08          	add    rax,0x8
  4030b7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4030ba:	48 83 c1 33          	add    rcx,0x33
  4030be:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4030c1:	83 e0 01             	and    eax,0x1
  4030c4:	83 f8 00             	cmp    eax,0x0
  4030c7:	0f 84 13 05 00 00    	je     4035e0 <main+0x31fe>
  4030cd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4030d1:	48 83 c0 08          	add    rax,0x8
  4030d5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4030d8:	48 83 c1 2c          	add    rcx,0x2c
  4030dc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4030df:	83 e0 04             	and    eax,0x4
  4030e2:	83 f8 00             	cmp    eax,0x0
  4030e5:	0f 85 f5 04 00 00    	jne    4035e0 <main+0x31fe>
  4030eb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4030ef:	48 83 c0 08          	add    rax,0x8
  4030f3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4030f6:	48 83 c1 1d          	add    rcx,0x1d
  4030fa:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4030fd:	83 e0 40             	and    eax,0x40
  403100:	83 f8 00             	cmp    eax,0x0
  403103:	0f 84 d7 04 00 00    	je     4035e0 <main+0x31fe>
  403109:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40310d:	48 83 c0 08          	add    rax,0x8
  403111:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403114:	48 83 c1 10          	add    rcx,0x10
  403118:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40311b:	83 e0 40             	and    eax,0x40
  40311e:	83 f8 00             	cmp    eax,0x0
  403121:	0f 84 b9 04 00 00    	je     4035e0 <main+0x31fe>
  403127:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40312b:	48 83 c0 08          	add    rax,0x8
  40312f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403132:	48 83 c1 18          	add    rcx,0x18
  403136:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403139:	83 e0 10             	and    eax,0x10
  40313c:	83 f8 00             	cmp    eax,0x0
  40313f:	0f 84 9b 04 00 00    	je     4035e0 <main+0x31fe>
  403145:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403149:	48 83 c0 08          	add    rax,0x8
  40314d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403150:	48 83 c1 12          	add    rcx,0x12
  403154:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403157:	83 e0 20             	and    eax,0x20
  40315a:	83 f8 00             	cmp    eax,0x0
  40315d:	0f 84 7d 04 00 00    	je     4035e0 <main+0x31fe>
  403163:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403167:	48 83 c0 08          	add    rax,0x8
  40316b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40316e:	48 83 c1 12          	add    rcx,0x12
  403172:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403175:	83 e0 40             	and    eax,0x40
  403178:	83 f8 00             	cmp    eax,0x0
  40317b:	0f 85 5f 04 00 00    	jne    4035e0 <main+0x31fe>
  403181:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403185:	48 83 c0 08          	add    rax,0x8
  403189:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40318c:	48 83 c1 14          	add    rcx,0x14
  403190:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403193:	83 e0 40             	and    eax,0x40
  403196:	83 f8 00             	cmp    eax,0x0
  403199:	0f 84 41 04 00 00    	je     4035e0 <main+0x31fe>
  40319f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4031a3:	48 83 c0 08          	add    rax,0x8
  4031a7:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4031aa:	48 83 c1 20          	add    rcx,0x20
  4031ae:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4031b1:	83 e0 40             	and    eax,0x40
  4031b4:	83 f8 00             	cmp    eax,0x0
  4031b7:	0f 85 23 04 00 00    	jne    4035e0 <main+0x31fe>
  4031bd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4031c1:	48 83 c0 08          	add    rax,0x8
  4031c5:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4031c8:	48 83 c1 0b          	add    rcx,0xb
  4031cc:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4031cf:	83 e0 04             	and    eax,0x4
  4031d2:	83 f8 00             	cmp    eax,0x0
  4031d5:	0f 84 05 04 00 00    	je     4035e0 <main+0x31fe>
  4031db:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4031df:	48 83 c0 08          	add    rax,0x8
  4031e3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4031e6:	48 83 c1 03          	add    rcx,0x3
  4031ea:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4031ed:	83 e0 20             	and    eax,0x20
  4031f0:	83 f8 00             	cmp    eax,0x0
  4031f3:	0f 84 e7 03 00 00    	je     4035e0 <main+0x31fe>
  4031f9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4031fd:	48 83 c0 08          	add    rax,0x8
  403201:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403204:	48 83 c1 02          	add    rcx,0x2
  403208:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40320b:	83 e0 20             	and    eax,0x20
  40320e:	83 f8 00             	cmp    eax,0x0
  403211:	0f 85 c9 03 00 00    	jne    4035e0 <main+0x31fe>
  403217:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40321b:	48 83 c0 08          	add    rax,0x8
  40321f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403222:	48 83 c1 07          	add    rcx,0x7
  403226:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403229:	83 e0 40             	and    eax,0x40
  40322c:	83 f8 00             	cmp    eax,0x0
  40322f:	0f 84 ab 03 00 00    	je     4035e0 <main+0x31fe>
  403235:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403239:	48 83 c0 08          	add    rax,0x8
  40323d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403240:	48 83 c1 29          	add    rcx,0x29
  403244:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403247:	83 e0 02             	and    eax,0x2
  40324a:	83 f8 00             	cmp    eax,0x0
  40324d:	0f 84 8d 03 00 00    	je     4035e0 <main+0x31fe>
  403253:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403257:	48 83 c0 08          	add    rax,0x8
  40325b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40325e:	48 83 c1 31          	add    rcx,0x31
  403262:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403265:	83 e0 10             	and    eax,0x10
  403268:	83 f8 00             	cmp    eax,0x0
  40326b:	0f 85 6f 03 00 00    	jne    4035e0 <main+0x31fe>
  403271:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403275:	48 83 c0 08          	add    rax,0x8
  403279:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40327c:	48 83 c1 09          	add    rcx,0x9
  403280:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403283:	81 e0 80 00 00 00    	and    eax,0x80
  403289:	83 f8 00             	cmp    eax,0x0
  40328c:	0f 85 4e 03 00 00    	jne    4035e0 <main+0x31fe>
  403292:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403296:	48 83 c0 08          	add    rax,0x8
  40329a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40329d:	48 83 c1 30          	add    rcx,0x30
  4032a1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4032a4:	83 e0 02             	and    eax,0x2
  4032a7:	83 f8 00             	cmp    eax,0x0
  4032aa:	0f 85 30 03 00 00    	jne    4035e0 <main+0x31fe>
  4032b0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4032b4:	48 83 c0 08          	add    rax,0x8
  4032b8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4032bb:	48 83 c1 18          	add    rcx,0x18
  4032bf:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4032c2:	83 e0 02             	and    eax,0x2
  4032c5:	83 f8 00             	cmp    eax,0x0
  4032c8:	0f 85 12 03 00 00    	jne    4035e0 <main+0x31fe>
  4032ce:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4032d2:	48 83 c0 08          	add    rax,0x8
  4032d6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4032d9:	48 83 c1 24          	add    rcx,0x24
  4032dd:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4032e0:	83 e0 40             	and    eax,0x40
  4032e3:	83 f8 00             	cmp    eax,0x0
  4032e6:	0f 84 f4 02 00 00    	je     4035e0 <main+0x31fe>
  4032ec:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4032f0:	48 83 c0 08          	add    rax,0x8
  4032f4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4032f7:	48 83 c1 11          	add    rcx,0x11
  4032fb:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4032fe:	83 e0 01             	and    eax,0x1
  403301:	83 f8 00             	cmp    eax,0x0
  403304:	0f 85 d6 02 00 00    	jne    4035e0 <main+0x31fe>
  40330a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40330e:	48 83 c0 08          	add    rax,0x8
  403312:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403315:	48 83 c1 12          	add    rcx,0x12
  403319:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40331c:	83 e0 10             	and    eax,0x10
  40331f:	83 f8 00             	cmp    eax,0x0
  403322:	0f 84 b8 02 00 00    	je     4035e0 <main+0x31fe>
  403328:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40332c:	48 83 c0 08          	add    rax,0x8
  403330:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403333:	48 83 c1 13          	add    rcx,0x13
  403337:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40333a:	83 e0 10             	and    eax,0x10
  40333d:	83 f8 00             	cmp    eax,0x0
  403340:	0f 84 9a 02 00 00    	je     4035e0 <main+0x31fe>
  403346:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40334a:	48 83 c0 08          	add    rax,0x8
  40334e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403351:	48 83 c1 32          	add    rcx,0x32
  403355:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403358:	83 e0 20             	and    eax,0x20
  40335b:	83 f8 00             	cmp    eax,0x0
  40335e:	0f 84 7c 02 00 00    	je     4035e0 <main+0x31fe>
  403364:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403368:	48 83 c0 08          	add    rax,0x8
  40336c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40336f:	48 83 c1 28          	add    rcx,0x28
  403373:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403376:	83 e0 20             	and    eax,0x20
  403379:	83 f8 00             	cmp    eax,0x0
  40337c:	0f 84 5e 02 00 00    	je     4035e0 <main+0x31fe>
  403382:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403386:	48 83 c0 08          	add    rax,0x8
  40338a:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40338d:	48 83 c1 2c          	add    rcx,0x2c
  403391:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403394:	83 e0 40             	and    eax,0x40
  403397:	83 f8 00             	cmp    eax,0x0
  40339a:	0f 84 40 02 00 00    	je     4035e0 <main+0x31fe>
  4033a0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4033a4:	48 83 c0 08          	add    rax,0x8
  4033a8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4033ab:	48 83 c1 33          	add    rcx,0x33
  4033af:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4033b2:	83 e0 08             	and    eax,0x8
  4033b5:	83 f8 00             	cmp    eax,0x0
  4033b8:	0f 84 22 02 00 00    	je     4035e0 <main+0x31fe>
  4033be:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4033c2:	48 83 c0 08          	add    rax,0x8
  4033c6:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4033c9:	48 83 c1 0e          	add    rcx,0xe
  4033cd:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4033d0:	83 e0 04             	and    eax,0x4
  4033d3:	83 f8 00             	cmp    eax,0x0
  4033d6:	0f 84 04 02 00 00    	je     4035e0 <main+0x31fe>
  4033dc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4033e0:	48 83 c0 08          	add    rax,0x8
  4033e4:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4033e7:	48 83 c1 06          	add    rcx,0x6
  4033eb:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4033ee:	81 e0 80 00 00 00    	and    eax,0x80
  4033f4:	83 f8 00             	cmp    eax,0x0
  4033f7:	0f 85 e3 01 00 00    	jne    4035e0 <main+0x31fe>
  4033fd:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403401:	48 83 c0 08          	add    rax,0x8
  403405:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403408:	48 83 c1 11          	add    rcx,0x11
  40340c:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40340f:	83 e0 08             	and    eax,0x8
  403412:	83 f8 00             	cmp    eax,0x0
  403415:	0f 85 c5 01 00 00    	jne    4035e0 <main+0x31fe>
  40341b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40341f:	48 83 c0 08          	add    rax,0x8
  403423:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403426:	48 83 c1 16          	add    rcx,0x16
  40342a:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40342d:	83 e0 08             	and    eax,0x8
  403430:	83 f8 00             	cmp    eax,0x0
  403433:	0f 84 a7 01 00 00    	je     4035e0 <main+0x31fe>
  403439:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40343d:	48 83 c0 08          	add    rax,0x8
  403441:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403444:	48 83 c1 21          	add    rcx,0x21
  403448:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40344b:	83 e0 02             	and    eax,0x2
  40344e:	83 f8 00             	cmp    eax,0x0
  403451:	0f 85 89 01 00 00    	jne    4035e0 <main+0x31fe>
  403457:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40345b:	48 83 c0 08          	add    rax,0x8
  40345f:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403462:	48 83 c1 14          	add    rcx,0x14
  403466:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403469:	83 e0 01             	and    eax,0x1
  40346c:	83 f8 00             	cmp    eax,0x0
  40346f:	0f 85 6b 01 00 00    	jne    4035e0 <main+0x31fe>
  403475:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403479:	48 83 c0 08          	add    rax,0x8
  40347d:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403480:	48 83 c1 06          	add    rcx,0x6
  403484:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403487:	83 e0 01             	and    eax,0x1
  40348a:	83 f8 00             	cmp    eax,0x0
  40348d:	0f 85 4d 01 00 00    	jne    4035e0 <main+0x31fe>
  403493:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403497:	48 83 c0 08          	add    rax,0x8
  40349b:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  40349e:	48 83 c1 13          	add    rcx,0x13
  4034a2:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4034a5:	83 e0 20             	and    eax,0x20
  4034a8:	83 f8 00             	cmp    eax,0x0
  4034ab:	0f 84 2f 01 00 00    	je     4035e0 <main+0x31fe>
  4034b1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4034b5:	48 83 c0 08          	add    rax,0x8
  4034b9:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4034bc:	48 83 c1 08          	add    rcx,0x8
  4034c0:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4034c3:	81 e0 80 00 00 00    	and    eax,0x80
  4034c9:	83 f8 00             	cmp    eax,0x0
  4034cc:	0f 85 0e 01 00 00    	jne    4035e0 <main+0x31fe>
  4034d2:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4034d6:	48 83 c0 08          	add    rax,0x8
  4034da:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4034dd:	48 83 c1 10          	add    rcx,0x10
  4034e1:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4034e4:	83 e0 08             	and    eax,0x8
  4034e7:	83 f8 00             	cmp    eax,0x0
  4034ea:	0f 84 f0 00 00 00    	je     4035e0 <main+0x31fe>
  4034f0:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4034f4:	48 83 c0 08          	add    rax,0x8
  4034f8:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4034fb:	48 83 c1 0f          	add    rcx,0xf
  4034ff:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403502:	83 e0 20             	and    eax,0x20
  403505:	83 f8 00             	cmp    eax,0x0
  403508:	0f 84 d2 00 00 00    	je     4035e0 <main+0x31fe>
  40350e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403512:	48 83 c0 08          	add    rax,0x8
  403516:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403519:	48 83 c1 0b          	add    rcx,0xb
  40351d:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403520:	83 e0 08             	and    eax,0x8
  403523:	83 f8 00             	cmp    eax,0x0
  403526:	0f 85 b4 00 00 00    	jne    4035e0 <main+0x31fe>
  40352c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403530:	48 83 c0 08          	add    rax,0x8
  403534:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403537:	48 83 c1 18          	add    rcx,0x18
  40353b:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40353e:	83 e0 08             	and    eax,0x8
  403541:	83 f8 00             	cmp    eax,0x0
  403544:	0f 84 96 00 00 00    	je     4035e0 <main+0x31fe>
  40354a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40354e:	48 83 c0 08          	add    rax,0x8
  403552:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403555:	48 83 c1 0e          	add    rcx,0xe
  403559:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40355c:	83 e0 40             	and    eax,0x40
  40355f:	83 f8 00             	cmp    eax,0x0
  403562:	0f 84 78 00 00 00    	je     4035e0 <main+0x31fe>
  403568:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40356c:	48 83 c0 08          	add    rax,0x8
  403570:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403573:	48 83 c1 28          	add    rcx,0x28
  403577:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  40357a:	83 e0 08             	and    eax,0x8
  40357d:	83 f8 00             	cmp    eax,0x0
  403580:	0f 84 5a 00 00 00    	je     4035e0 <main+0x31fe>
  403586:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40358a:	48 83 c0 08          	add    rax,0x8
  40358e:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  403591:	48 83 c1 31          	add    rcx,0x31
  403595:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  403598:	83 e0 01             	and    eax,0x1
  40359b:	83 f8 00             	cmp    eax,0x0
  40359e:	0f 84 3c 00 00 00    	je     4035e0 <main+0x31fe>
  4035a4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4035a8:	48 83 c0 08          	add    rax,0x8
  4035ac:	48 8b 08             	mov    rcx,QWORD PTR [rax]
  4035af:	48 83 c1 2c          	add    rcx,0x2c
  4035b3:	0f be 01             	movsx  eax,BYTE PTR [rcx]
  4035b6:	83 e0 01             	and    eax,0x1
  4035b9:	83 f8 00             	cmp    eax,0x0
  4035bc:	0f 84 1e 00 00 00    	je     4035e0 <main+0x31fe>
  4035c2:	48 8d 05 39 02 20 00 	lea    rax,[rip+0x200239]        # 603802 <_init@plt+0x20005a>
  4035c9:	48 89 c7             	mov    rdi,rax
  4035cc:	b8 00 00 00 00       	mov    eax,0x0
  4035d1:	e8 b2 01 00 00       	call   403788 <printf@plt>
  4035d6:	b8 00 00 00 00       	mov    eax,0x0
  4035db:	e9 19 00 00 00       	jmp    4035f9 <main+0x3217>
  4035e0:	48 8d 05 33 02 20 00 	lea    rax,[rip+0x200233]        # 60381a <_init@plt+0x200072>
  4035e7:	48 89 c7             	mov    rdi,rax
  4035ea:	b8 00 00 00 00       	mov    eax,0x0
  4035ef:	e8 94 01 00 00       	call   403788 <printf@plt>
  4035f4:	b8 01 00 00 00       	mov    eax,0x1
  4035f9:	c9                   	leave  
  4035fa:	c3                   	ret    
  4035fb:	00 00                	add    BYTE PTR [rax],al
  4035fd:	00 00                	add    BYTE PTR [rax],al
	...

0000000000403600 <__libc_csu_init>:
  403600:	41 57                	push   r15
  403602:	41 56                	push   r14
  403604:	49 89 d7             	mov    r15,rdx
  403607:	41 55                	push   r13
  403609:	41 54                	push   r12
  40360b:	4c 8d 25 66 01 00 00 	lea    r12,[rip+0x166]        # 403778 <_init+0x28>
  403612:	55                   	push   rbp
  403613:	48 8d 2d 5e 01 00 00 	lea    rbp,[rip+0x15e]        # 403778 <_init+0x28>
  40361a:	53                   	push   rbx
  40361b:	41 89 fd             	mov    r13d,edi
  40361e:	49 89 f6             	mov    r14,rsi
  403621:	4c 29 e5             	sub    rbp,r12
  403624:	48 83 ec 08          	sub    rsp,0x8
  403628:	48 c1 fd 03          	sar    rbp,0x3
  40362c:	e8 77 01 00 00       	call   4037a8 <_init@plt>
  403631:	48 85 ed             	test   rbp,rbp
  403634:	74 20                	je     403656 <__libc_csu_init+0x56>
  403636:	31 db                	xor    ebx,ebx
  403638:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40363f:	00 
  403640:	4c 89 fa             	mov    rdx,r15
  403643:	4c 89 f6             	mov    rsi,r14
  403646:	44 89 ef             	mov    edi,r13d
  403649:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40364d:	48 83 c3 01          	add    rbx,0x1
  403651:	48 39 dd             	cmp    rbp,rbx
  403654:	75 ea                	jne    403640 <__libc_csu_init+0x40>
  403656:	48 83 c4 08          	add    rsp,0x8
  40365a:	5b                   	pop    rbx
  40365b:	5d                   	pop    rbp
  40365c:	41 5c                	pop    r12
  40365e:	41 5d                	pop    r13
  403660:	41 5e                	pop    r14
  403662:	41 5f                	pop    r15
  403664:	c3                   	ret    
  403665:	90                   	nop
  403666:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40366d:	00 00 00 

0000000000403670 <__libc_csu_fini>:
  403670:	f3 c3                	repz ret 

Disassembly of section .init:

0000000000403750 <_init>:
  403750:	48 83 ec 08          	sub    rsp,0x8
  403754:	48 8b 05 c5 01 20 00 	mov    rax,QWORD PTR [rip+0x2001c5]        # 603920 <_init@plt+0x200178>
  40375b:	48 85 c0             	test   rax,rax
  40375e:	74 02                	je     403762 <_init+0x12>
  403760:	ff d0                	call   rax
  403762:	48 83 c4 08          	add    rsp,0x8
  403766:	c3                   	ret    

Disassembly of section .fini:

0000000000403768 <.fini>:
  403768:	48 83 ec 08          	sub    rsp,0x8
  40376c:	48 83 c4 08          	add    rsp,0x8
  403770:	c3                   	ret    

Disassembly of section .plt:

0000000000403778 <printf@plt-0x10>:
  403778:	ff 35 5a 01 20 00    	push   QWORD PTR [rip+0x20015a]        # 6038d8 <_init@plt+0x200130>
  40377e:	ff 25 5c 01 20 00    	jmp    QWORD PTR [rip+0x20015c]        # 6038e0 <_init@plt+0x200138>
  403784:	00 00                	add    BYTE PTR [rax],al
	...

0000000000403788 <printf@plt>:
  403788:	ff 25 7a 01 20 00    	jmp    QWORD PTR [rip+0x20017a]        # 603908 <_init@plt+0x200160>
  40378e:	68 05 00 00 00       	push   0x5
  403793:	e9 e0 ff ff ff       	jmp    403778 <_init+0x28>

0000000000403798 <strlen@plt>:
  403798:	ff 25 72 01 20 00    	jmp    QWORD PTR [rip+0x200172]        # 603910 <_init@plt+0x200168>
  40379e:	68 06 00 00 00       	push   0x6
  4037a3:	e9 d0 ff ff ff       	jmp    403778 <_init+0x28>

00000000004037a8 <_init@plt>:
  4037a8:	ff 25 6a 01 20 00    	jmp    QWORD PTR [rip+0x20016a]        # 603918 <_init@plt+0x200170>
  4037ae:	68 07 00 00 00       	push   0x7
  4037b3:	e9 c0 ff ff ff       	jmp    403778 <_init+0x28>
