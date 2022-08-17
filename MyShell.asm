
_MyShell:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
	return 0;
}

int 
main(void)
{
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	56                   	push   %esi
  12:	53                   	push   %ebx
  13:	8d b5 50 fe ff ff    	lea    -0x1b0(%ebp),%esi
  19:	8d 9d 58 fe ff ff    	lea    -0x1a8(%ebp),%ebx
  1f:	51                   	push   %ecx
  20:	81 ec 9c 01 00 00    	sub    $0x19c,%esp
  26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  2d:	8d 76 00             	lea    0x0(%esi),%esi
   char *comm[MAX];
   while(1)
   {
     memset(input,0,MAX);
  30:	83 ec 04             	sub    $0x4,%esp
  33:	6a 64                	push   $0x64
  35:	6a 00                	push   $0x0
  37:	68 e0 12 00 00       	push   $0x12e0
  3c:	e8 0f 07 00 00       	call   750 <memset>
     memset(left,0,MAX);
  41:	83 c4 0c             	add    $0xc,%esp
  44:	6a 64                	push   $0x64
  46:	6a 00                	push   $0x0
  48:	68 e0 13 00 00       	push   $0x13e0
  4d:	e8 fe 06 00 00       	call   750 <memset>
     memset(right,0,MAX);
  52:	83 c4 0c             	add    $0xc,%esp
  55:	6a 64                	push   $0x64
  57:	6a 00                	push   $0x0
  59:	68 60 13 00 00       	push   $0x1360
  5e:	e8 ed 06 00 00       	call   750 <memset>
	while(n--)
  63:	8d 45 e0             	lea    -0x20(%ebp),%eax
  66:	83 c4 10             	add    $0x10,%esp
  69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		*comm[n-1]=0;
  70:	8b 10                	mov    (%eax),%edx
  72:	83 e8 04             	sub    $0x4,%eax
  75:	c6 02 00             	movb   $0x0,(%edx)
	while(n--)
  78:	39 f0                	cmp    %esi,%eax
  7a:	75 f4                	jne    70 <main+0x70>
	printf(1,"\nMyShell > ");
  7c:	83 ec 08             	sub    $0x8,%esp
  7f:	68 d8 0d 00 00       	push   $0xdd8
  84:	6a 01                	push   $0x1
  86:	e8 e5 09 00 00       	call   a70 <printf>
	gets(input, 100);
  8b:	58                   	pop    %eax
  8c:	5a                   	pop    %edx
  8d:	6a 64                	push   $0x64
  8f:	68 e0 12 00 00       	push   $0x12e0
  94:	e8 17 07 00 00       	call   7b0 <gets>
     nullify(comm);
     prompt_display();
     get_input();
	 run(comm);
  99:	89 1c 24             	mov    %ebx,(%esp)
  9c:	e8 5f 05 00 00       	call   600 <run>
     memset(input,0,MAX);
  a1:	83 c4 10             	add    $0x10,%esp
  a4:	eb 8a                	jmp    30 <main+0x30>
  a6:	66 90                	xchg   %ax,%ax
  a8:	66 90                	xchg   %ax,%ax
  aa:	66 90                	xchg   %ax,%ax
  ac:	66 90                	xchg   %ax,%ax
  ae:	66 90                	xchg   %ax,%ax

000000b0 <nullify>:
{
  b0:	f3 0f 1e fb          	endbr32 
  b4:	55                   	push   %ebp
  b5:	89 e5                	mov    %esp,%ebp
  b7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  ba:	8d 81 88 01 00 00    	lea    0x188(%ecx),%eax
  c0:	83 e9 08             	sub    $0x8,%ecx
  c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  c7:	90                   	nop
		*comm[n-1]=0;
  c8:	8b 10                	mov    (%eax),%edx
  ca:	83 e8 04             	sub    $0x4,%eax
  cd:	c6 02 00             	movb   $0x0,(%edx)
	while(n--)
  d0:	39 c8                	cmp    %ecx,%eax
  d2:	75 f4                	jne    c8 <nullify+0x18>
}
  d4:	31 c0                	xor    %eax,%eax
  d6:	5d                   	pop    %ebp
  d7:	c3                   	ret    
  d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  df:	90                   	nop

000000e0 <prompt_display>:
{
  e0:	f3 0f 1e fb          	endbr32 
  e4:	55                   	push   %ebp
  e5:	89 e5                	mov    %esp,%ebp
  e7:	83 ec 10             	sub    $0x10,%esp
	printf(1,"\nMyShell > ");
  ea:	68 d8 0d 00 00       	push   $0xdd8
  ef:	6a 01                	push   $0x1
  f1:	e8 7a 09 00 00       	call   a70 <printf>
}
  f6:	31 c0                	xor    %eax,%eax
  f8:	c9                   	leave  
  f9:	c3                   	ret    
  fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000100 <get_input>:
{	
 100:	f3 0f 1e fb          	endbr32 
 104:	55                   	push   %ebp
 105:	89 e5                	mov    %esp,%ebp
 107:	83 ec 10             	sub    $0x10,%esp
	gets(input, 100);
 10a:	6a 64                	push   $0x64
 10c:	68 e0 12 00 00       	push   $0x12e0
 111:	e8 9a 06 00 00       	call   7b0 <gets>
}
 116:	31 c0                	xor    %eax,%eax
 118:	c9                   	leave  
 119:	c3                   	ret    
 11a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000120 <space_to_null>:
{
 120:	f3 0f 1e fb          	endbr32 
 124:	55                   	push   %ebp
 125:	89 e5                	mov    %esp,%ebp
 127:	57                   	push   %edi
 128:	56                   	push   %esi
 129:	53                   	push   %ebx
 12a:	83 ec 10             	sub    $0x10,%esp
 12d:	8b 5d 08             	mov    0x8(%ebp),%ebx
 130:	8b 75 0c             	mov    0xc(%ebp),%esi
	memset(des,0,MAX);
 133:	6a 64                	push   $0x64
 135:	6a 00                	push   $0x0
 137:	53                   	push   %ebx
 138:	e8 13 06 00 00       	call   750 <memset>
	while(*in!=0)
 13d:	0f b6 06             	movzbl (%esi),%eax
 140:	83 c4 10             	add    $0x10,%esp
 143:	84 c0                	test   %al,%al
 145:	74 39                	je     180 <space_to_null+0x60>
	int count=0;
 147:	31 d2                	xor    %edx,%edx
	    if(*in==' ')*out=0;
 149:	31 ff                	xor    %edi,%edi
 14b:	eb 05                	jmp    152 <space_to_null+0x32>
 14d:	8d 76 00             	lea    0x0(%esi),%esi
	    out++;in++;count++;
 150:	89 ca                	mov    %ecx,%edx
	    if(*in==' ')*out=0;
 152:	3c 20                	cmp    $0x20,%al
	    out++;in++;count++;
 154:	8d 4a 01             	lea    0x1(%edx),%ecx
	    if(*in==' ')*out=0;
 157:	0f 44 c7             	cmove  %edi,%eax
	    out++;in++;count++;
 15a:	83 c3 01             	add    $0x1,%ebx
 15d:	88 43 ff             	mov    %al,-0x1(%ebx)
	while(*in!=0)
 160:	0f b6 44 16 01       	movzbl 0x1(%esi,%edx,1),%eax
 165:	84 c0                	test   %al,%al
 167:	75 e7                	jne    150 <space_to_null+0x30>
	  *out=0;
 169:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
}
 16d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 170:	89 d0                	mov    %edx,%eax
 172:	5b                   	pop    %ebx
 173:	5e                   	pop    %esi
 174:	5f                   	pop    %edi
 175:	5d                   	pop    %ebp
 176:	c3                   	ret    
 177:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17e:	66 90                	xchg   %ax,%ax
	  *out=0;
 180:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
	while(*in!=0)
 184:	ba ff ff ff ff       	mov    $0xffffffff,%edx
}
 189:	8d 65 f4             	lea    -0xc(%ebp),%esp
 18c:	5b                   	pop    %ebx
 18d:	89 d0                	mov    %edx,%eax
 18f:	5e                   	pop    %esi
 190:	5f                   	pop    %edi
 191:	5d                   	pop    %ebp
 192:	c3                   	ret    
 193:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 19a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000001a0 <arg_set>:
{
 1a0:	f3 0f 1e fb          	endbr32 
 1a4:	55                   	push   %ebp
 1a5:	89 e5                	mov    %esp,%ebp
 1a7:	57                   	push   %edi
 1a8:	8b 55 10             	mov    0x10(%ebp),%edx
 1ab:	56                   	push   %esi
 1ac:	8b 75 0c             	mov    0xc(%ebp),%esi
 1af:	53                   	push   %ebx
 1b0:	8b 5d 08             	mov    0x8(%ebp),%ebx
	des[j]=src;
 1b3:	89 33                	mov    %esi,(%ebx)
	for(i=0;i<len;i++)
 1b5:	85 d2                	test   %edx,%edx
 1b7:	7e 37                	jle    1f0 <arg_set+0x50>
 1b9:	8d 7a 01             	lea    0x1(%edx),%edi
 1bc:	8d 46 01             	lea    0x1(%esi),%eax
	int j=0,i;
 1bf:	31 d2                	xor    %edx,%edx
 1c1:	8d 0c 3e             	lea    (%esi,%edi,1),%ecx
 1c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if(src[i]==0)
 1c8:	80 78 ff 00          	cmpb   $0x0,-0x1(%eax)
 1cc:	75 06                	jne    1d4 <arg_set+0x34>
			des[++j]=&src[i+1];
 1ce:	83 c2 01             	add    $0x1,%edx
 1d1:	89 04 93             	mov    %eax,(%ebx,%edx,4)
	for(i=0;i<len;i++)
 1d4:	83 c0 01             	add    $0x1,%eax
 1d7:	39 c1                	cmp    %eax,%ecx
 1d9:	75 ed                	jne    1c8 <arg_set+0x28>
 1db:	8d 1c 93             	lea    (%ebx,%edx,4),%ebx
	des[j]=0;
 1de:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
}
 1e4:	31 c0                	xor    %eax,%eax
	src[i+1]=0;
 1e6:	c6 04 3e 00          	movb   $0x0,(%esi,%edi,1)
}
 1ea:	5b                   	pop    %ebx
 1eb:	5e                   	pop    %esi
 1ec:	5f                   	pop    %edi
 1ed:	5d                   	pop    %ebp
 1ee:	c3                   	ret    
 1ef:	90                   	nop
	for(i=0;i<len;i++)
 1f0:	bf 01 00 00 00       	mov    $0x1,%edi
 1f5:	eb e7                	jmp    1de <arg_set+0x3e>
 1f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fe:	66 90                	xchg   %ax,%ax

00000200 <par_exe>:
{
 200:	f3 0f 1e fb          	endbr32 
 204:	55                   	push   %ebp
 205:	89 e5                	mov    %esp,%ebp
 207:	56                   	push   %esi
 208:	53                   	push   %ebx
	arg_set(left_arg,left,arg_length[0]);
 209:	8d b5 d8 fc ff ff    	lea    -0x328(%ebp),%esi
	arg_set(right_arg,right,arg_length[1]);
 20f:	8d 9d 68 fe ff ff    	lea    -0x198(%ebp),%ebx
{
 215:	81 ec 24 03 00 00    	sub    $0x324,%esp
	arg_set(left_arg,left,arg_length[0]);
 21b:	ff 35 c4 14 00 00    	pushl  0x14c4
 221:	68 e0 13 00 00       	push   $0x13e0
 226:	56                   	push   %esi
 227:	e8 74 ff ff ff       	call   1a0 <arg_set>
	arg_set(right_arg,right,arg_length[1]);
 22c:	83 c4 0c             	add    $0xc,%esp
 22f:	ff 35 c8 14 00 00    	pushl  0x14c8
 235:	68 60 13 00 00       	push   $0x1360
 23a:	53                   	push   %ebx
 23b:	e8 60 ff ff ff       	call   1a0 <arg_set>
	 int i=fork();
 240:	e8 a6 06 00 00       	call   8eb <fork>
	 if(i==0)
 245:	83 c4 10             	add    $0x10,%esp
 248:	85 c0                	test   %eax,%eax
 24a:	74 28                	je     274 <par_exe+0x74>
	 int j=fork();
 24c:	e8 9a 06 00 00       	call   8eb <fork>
	 if(j==0)
 251:	85 c0                	test   %eax,%eax
 253:	74 39                	je     28e <par_exe+0x8e>
	 wait(0);
 255:	83 ec 0c             	sub    $0xc,%esp
 258:	6a 00                	push   $0x0
 25a:	e8 9c 06 00 00       	call   8fb <wait>
	 wait(0);
 25f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 266:	e8 90 06 00 00       	call   8fb <wait>
}
 26b:	8d 65 f8             	lea    -0x8(%ebp),%esp
 26e:	31 c0                	xor    %eax,%eax
 270:	5b                   	pop    %ebx
 271:	5e                   	pop    %esi
 272:	5d                   	pop    %ebp
 273:	c3                   	ret    
		 exec(left_arg[0],left_arg); exit(0);
 274:	52                   	push   %edx
 275:	52                   	push   %edx
 276:	56                   	push   %esi
 277:	ff b5 d8 fc ff ff    	pushl  -0x328(%ebp)
 27d:	e8 a9 06 00 00       	call   92b <exec>
 282:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 289:	e8 65 06 00 00       	call   8f3 <exit>
		 exec(right_arg[0],right_arg);
 28e:	50                   	push   %eax
 28f:	50                   	push   %eax
 290:	53                   	push   %ebx
 291:	ff b5 68 fe ff ff    	pushl  -0x198(%ebp)
 297:	e8 8f 06 00 00       	call   92b <exec>
		 exit(0);
 29c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2a3:	e8 4b 06 00 00       	call   8f3 <exit>
 2a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <pipe_exe>:
{
 2b0:	f3 0f 1e fb          	endbr32 
 2b4:	55                   	push   %ebp
 2b5:	89 e5                	mov    %esp,%ebp
 2b7:	56                   	push   %esi
 2b8:	53                   	push   %ebx
	arg_set(left_arg,left,arg_length[0]);
 2b9:	8d b5 d8 fc ff ff    	lea    -0x328(%ebp),%esi
	arg_set(right_arg,right,arg_length[1]);
 2bf:	8d 9d 68 fe ff ff    	lea    -0x198(%ebp),%ebx
{
 2c5:	81 ec 34 03 00 00    	sub    $0x334,%esp
	arg_set(left_arg,left,arg_length[0]);
 2cb:	ff 35 c4 14 00 00    	pushl  0x14c4
 2d1:	68 e0 13 00 00       	push   $0x13e0
 2d6:	56                   	push   %esi
 2d7:	e8 c4 fe ff ff       	call   1a0 <arg_set>
	arg_set(right_arg,right,arg_length[1]);
 2dc:	83 c4 0c             	add    $0xc,%esp
 2df:	ff 35 c8 14 00 00    	pushl  0x14c8
 2e5:	68 60 13 00 00       	push   $0x1360
 2ea:	53                   	push   %ebx
 2eb:	e8 b0 fe ff ff       	call   1a0 <arg_set>
    pipe(fd);     
 2f0:	8d 85 d0 fc ff ff    	lea    -0x330(%ebp),%eax
 2f6:	89 04 24             	mov    %eax,(%esp)
 2f9:	e8 05 06 00 00       	call   903 <pipe>
    if(fork()==0)                                  
 2fe:	e8 e8 05 00 00       	call   8eb <fork>
 303:	83 c4 10             	add    $0x10,%esp
 306:	85 c0                	test   %eax,%eax
 308:	74 48                	je     352 <pipe_exe+0xa2>
   	if(fork()==0)                              
 30a:	e8 dc 05 00 00       	call   8eb <fork>
 30f:	85 c0                	test   %eax,%eax
 311:	0f 84 83 00 00 00    	je     39a <pipe_exe+0xea>
    close(fd[0]);                   
 317:	83 ec 0c             	sub    $0xc,%esp
 31a:	ff b5 d0 fc ff ff    	pushl  -0x330(%ebp)
 320:	e8 f6 05 00 00       	call   91b <close>
    close(fd[1]);                    
 325:	58                   	pop    %eax
 326:	ff b5 d4 fc ff ff    	pushl  -0x32c(%ebp)
 32c:	e8 ea 05 00 00       	call   91b <close>
    wait(0); wait(0);
 331:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 338:	e8 be 05 00 00       	call   8fb <wait>
 33d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 344:	e8 b2 05 00 00       	call   8fb <wait>
}
 349:	8d 65 f8             	lea    -0x8(%ebp),%esp
 34c:	31 c0                	xor    %eax,%eax
 34e:	5b                   	pop    %ebx
 34f:	5e                   	pop    %esi
 350:	5d                   	pop    %ebp
 351:	c3                   	ret    
       	close(1);
 352:	83 ec 0c             	sub    $0xc,%esp
 355:	6a 01                	push   $0x1
 357:	e8 bf 05 00 00       	call   91b <close>
   		dup(fd[1]);
 35c:	59                   	pop    %ecx
 35d:	ff b5 d4 fc ff ff    	pushl  -0x32c(%ebp)
 363:	e8 03 06 00 00       	call   96b <dup>
   		close(fd[0]);
 368:	5b                   	pop    %ebx
 369:	ff b5 d0 fc ff ff    	pushl  -0x330(%ebp)
 36f:	e8 a7 05 00 00       	call   91b <close>
   		close(fd[1]);
 374:	58                   	pop    %eax
 375:	ff b5 d4 fc ff ff    	pushl  -0x32c(%ebp)
 37b:	e8 9b 05 00 00       	call   91b <close>
	  	exec(left_arg[0],left_arg);
 380:	58                   	pop    %eax
 381:	5a                   	pop    %edx
 382:	56                   	push   %esi
 383:	ff b5 d8 fc ff ff    	pushl  -0x328(%ebp)
 389:	e8 9d 05 00 00       	call   92b <exec>
       	exit(0);
 38e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 395:	e8 59 05 00 00       	call   8f3 <exit>
		close(0);
 39a:	83 ec 0c             	sub    $0xc,%esp
 39d:	6a 00                	push   $0x0
 39f:	e8 77 05 00 00       	call   91b <close>
   		dup(fd[0]);
 3a4:	5a                   	pop    %edx
 3a5:	ff b5 d0 fc ff ff    	pushl  -0x330(%ebp)
 3ab:	e8 bb 05 00 00       	call   96b <dup>
   		close(fd[0]);
 3b0:	59                   	pop    %ecx
 3b1:	ff b5 d0 fc ff ff    	pushl  -0x330(%ebp)
 3b7:	e8 5f 05 00 00       	call   91b <close>
   		close(fd[1]); 
 3bc:	5e                   	pop    %esi
 3bd:	ff b5 d4 fc ff ff    	pushl  -0x32c(%ebp)
 3c3:	e8 53 05 00 00       	call   91b <close>
       	exec(right_arg[0],right_arg);
 3c8:	58                   	pop    %eax
 3c9:	5a                   	pop    %edx
 3ca:	53                   	push   %ebx
 3cb:	ff b5 68 fe ff ff    	pushl  -0x198(%ebp)
 3d1:	e8 55 05 00 00       	call   92b <exec>
        exit(0);
 3d6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 3dd:	e8 11 05 00 00       	call   8f3 <exit>
 3e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003f0 <pipe_set>:
{   
 3f0:	f3 0f 1e fb          	endbr32 
 3f4:	55                   	push   %ebp
 3f5:	89 e5                	mov    %esp,%ebp
 3f7:	56                   	push   %esi
 3f8:	53                   	push   %ebx
 3f9:	8b 75 08             	mov    0x8(%ebp),%esi
 3fc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	memset(left,0,MAX);
 3ff:	83 ec 04             	sub    $0x4,%esp
 402:	6a 64                	push   $0x64
 404:	6a 00                	push   $0x0
 406:	68 e0 13 00 00       	push   $0x13e0
 40b:	e8 40 03 00 00       	call   750 <memset>
    memset(right,0,MAX);
 410:	83 c4 0c             	add    $0xc,%esp
 413:	6a 64                	push   $0x64
 415:	6a 00                	push   $0x0
 417:	68 60 13 00 00       	push   $0x1360
 41c:	e8 2f 03 00 00       	call   750 <memset>
	for(i=0;i<div;i++)
 421:	83 c4 10             	add    $0x10,%esp
 424:	31 c0                	xor    %eax,%eax
 426:	85 f6                	test   %esi,%esi
 428:	7e 1a                	jle    444 <pipe_set+0x54>
 42a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		left[i]=input_rw[i];
 430:	0f b6 90 60 14 00 00 	movzbl 0x1460(%eax),%edx
	for(i=0;i<div;i++)
 437:	83 c0 01             	add    $0x1,%eax
		left[i]=input_rw[i];
 43a:	88 90 df 13 00 00    	mov    %dl,0x13df(%eax)
	for(i=0;i<div;i++)
 440:	39 c6                	cmp    %eax,%esi
 442:	75 ec                	jne    430 <pipe_set+0x40>
	arg_length[0]=div;
 444:	8d 4b fe             	lea    -0x2(%ebx),%ecx
	i=div+2;int j=0;
 447:	8d 56 02             	lea    0x2(%esi),%edx
	arg_length[0]=div;
 44a:	89 35 c4 14 00 00    	mov    %esi,0x14c4
	i=div+2;int j=0;
 450:	31 c0                	xor    %eax,%eax
 452:	29 f1                	sub    %esi,%ecx
	for(;i<total;i++)
 454:	39 da                	cmp    %ebx,%edx
 456:	7d 38                	jge    490 <pipe_set+0xa0>
 458:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop
		right[j++]=input_rw[i];
 460:	89 c3                	mov    %eax,%ebx
 462:	83 c0 01             	add    $0x1,%eax
 465:	0f b6 94 06 61 14 00 	movzbl 0x1461(%esi,%eax,1),%edx
 46c:	00 
 46d:	88 90 5f 13 00 00    	mov    %dl,0x135f(%eax)
	for(;i<total;i++)
 473:	39 c8                	cmp    %ecx,%eax
 475:	75 e9                	jne    460 <pipe_set+0x70>
 477:	83 c3 02             	add    $0x2,%ebx
}
 47a:	31 c0                	xor    %eax,%eax
	arg_length[1]=j+1;
 47c:	89 1d c8 14 00 00    	mov    %ebx,0x14c8
}
 482:	8d 65 f8             	lea    -0x8(%ebp),%esp
 485:	5b                   	pop    %ebx
 486:	5e                   	pop    %esi
 487:	5d                   	pop    %ebp
 488:	c3                   	ret    
 489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	for(;i<total;i++)
 490:	bb 01 00 00 00       	mov    $0x1,%ebx
}
 495:	31 c0                	xor    %eax,%eax
	arg_length[1]=j+1;
 497:	89 1d c8 14 00 00    	mov    %ebx,0x14c8
}
 49d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4a0:	5b                   	pop    %ebx
 4a1:	5e                   	pop    %esi
 4a2:	5d                   	pop    %ebp
 4a3:	c3                   	ret    
 4a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4af:	90                   	nop

000004b0 <cat_string>:
{   int str_len,i;
 4b0:	f3 0f 1e fb          	endbr32 
 4b4:	55                   	push   %ebp
 4b5:	89 e5                	mov    %esp,%ebp
 4b7:	53                   	push   %ebx
 4b8:	83 ec 0c             	sub    $0xc,%esp
 4bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
	str_len=space_to_null(input_rw,input);
 4be:	68 e0 12 00 00       	push   $0x12e0
 4c3:	68 60 14 00 00       	push   $0x1460
 4c8:	e8 53 fc ff ff       	call   120 <space_to_null>
	for(i=0;i<str_len;i++)
 4cd:	83 c4 10             	add    $0x10,%esp
 4d0:	85 c0                	test   %eax,%eax
 4d2:	7e 3c                	jle    510 <cat_string+0x60>
 4d4:	31 d2                	xor    %edx,%edx
 4d6:	eb 14                	jmp    4ec <cat_string+0x3c>
 4d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop
		if(input_rw[i]==';'){ pipe_set(i,str_len);return 4;}
 4e0:	80 f9 3b             	cmp    $0x3b,%cl
 4e3:	74 7b                	je     560 <cat_string+0xb0>
	for(i=0;i<str_len;i++)
 4e5:	83 c2 01             	add    $0x1,%edx
 4e8:	39 d0                	cmp    %edx,%eax
 4ea:	74 24                	je     510 <cat_string+0x60>
		if(input_rw[i]=='|'){pipe_set(i,str_len);return 2;}
 4ec:	0f b6 8a 60 14 00 00 	movzbl 0x1460(%edx),%ecx
 4f3:	80 f9 7c             	cmp    $0x7c,%cl
 4f6:	75 e8                	jne    4e0 <cat_string+0x30>
 4f8:	83 ec 08             	sub    $0x8,%esp
 4fb:	50                   	push   %eax
 4fc:	52                   	push   %edx
 4fd:	e8 ee fe ff ff       	call   3f0 <pipe_set>
 502:	83 c4 10             	add    $0x10,%esp
 505:	b8 02 00 00 00       	mov    $0x2,%eax
}
 50a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 50d:	c9                   	leave  
 50e:	c3                   	ret    
 50f:	90                   	nop
	arg_set(comm,input_rw,str_len);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	50                   	push   %eax
 514:	68 60 14 00 00       	push   $0x1460
 519:	53                   	push   %ebx
 51a:	e8 81 fc ff ff       	call   1a0 <arg_set>
	if(strcmp(comm[0],"exit")==0)return 3;
 51f:	58                   	pop    %eax
 520:	5a                   	pop    %edx
 521:	68 e4 0d 00 00       	push   $0xde4
 526:	ff 33                	pushl  (%ebx)
 528:	e8 93 01 00 00       	call   6c0 <strcmp>
 52d:	83 c4 10             	add    $0x10,%esp
 530:	89 c2                	mov    %eax,%edx
 532:	b8 03 00 00 00       	mov    $0x3,%eax
 537:	85 d2                	test   %edx,%edx
 539:	74 cf                	je     50a <cat_string+0x5a>
	else if(strcmp(comm[0],"ls")==0)return 1;
 53b:	83 ec 08             	sub    $0x8,%esp
 53e:	68 e9 0d 00 00       	push   $0xde9
 543:	ff 33                	pushl  (%ebx)
 545:	e8 76 01 00 00       	call   6c0 <strcmp>
 54a:	83 c4 10             	add    $0x10,%esp
 54d:	85 c0                	test   %eax,%eax
 54f:	75 2f                	jne    580 <cat_string+0xd0>
}
 551:	8b 5d fc             	mov    -0x4(%ebp),%ebx
	else if(strcmp(comm[0],"ls")==0)return 1;
 554:	b8 01 00 00 00       	mov    $0x1,%eax
}
 559:	c9                   	leave  
 55a:	c3                   	ret    
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop
		if(input_rw[i]==';'){ pipe_set(i,str_len);return 4;}
 560:	83 ec 08             	sub    $0x8,%esp
 563:	50                   	push   %eax
 564:	52                   	push   %edx
 565:	e8 86 fe ff ff       	call   3f0 <pipe_set>
}
 56a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
		if(input_rw[i]==';'){ pipe_set(i,str_len);return 4;}
 56d:	83 c4 10             	add    $0x10,%esp
 570:	b8 04 00 00 00       	mov    $0x4,%eax
}
 575:	c9                   	leave  
 576:	c3                   	ret    
 577:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57e:	66 90                	xchg   %ax,%ax
	else if(strcmp(comm[0],"cat")==0)return 1;
 580:	83 ec 08             	sub    $0x8,%esp
 583:	68 ec 0d 00 00       	push   $0xdec
 588:	ff 33                	pushl  (%ebx)
 58a:	e8 31 01 00 00       	call   6c0 <strcmp>
 58f:	83 c4 10             	add    $0x10,%esp
 592:	85 c0                	test   %eax,%eax
 594:	74 bb                	je     551 <cat_string+0xa1>
	else if(strcmp(comm[0],"grep")==0)return 1;
 596:	83 ec 08             	sub    $0x8,%esp
 599:	68 f0 0d 00 00       	push   $0xdf0
 59e:	ff 33                	pushl  (%ebx)
 5a0:	e8 1b 01 00 00       	call   6c0 <strcmp>
 5a5:	83 c4 10             	add    $0x10,%esp
 5a8:	85 c0                	test   %eax,%eax
 5aa:	74 a5                	je     551 <cat_string+0xa1>
	else if(strcmp(comm[0],"echo")==0)return 1;
 5ac:	83 ec 08             	sub    $0x8,%esp
 5af:	68 f5 0d 00 00       	push   $0xdf5
 5b4:	ff 33                	pushl  (%ebx)
 5b6:	e8 05 01 00 00       	call   6c0 <strcmp>
 5bb:	83 c4 10             	add    $0x10,%esp
 5be:	85 c0                	test   %eax,%eax
 5c0:	74 8f                	je     551 <cat_string+0xa1>
	else if(strcmp(comm[0],"ps")==0)return 1;
 5c2:	83 ec 08             	sub    $0x8,%esp
 5c5:	68 fa 0d 00 00       	push   $0xdfa
 5ca:	ff 33                	pushl  (%ebx)
 5cc:	e8 ef 00 00 00       	call   6c0 <strcmp>
 5d1:	83 c4 10             	add    $0x10,%esp
 5d4:	85 c0                	test   %eax,%eax
 5d6:	0f 84 75 ff ff ff    	je     551 <cat_string+0xa1>
	else if(strcmp(comm[0],"procinfo")==0)return 1;
 5dc:	83 ec 08             	sub    $0x8,%esp
 5df:	68 fd 0d 00 00       	push   $0xdfd
 5e4:	ff 33                	pushl  (%ebx)
 5e6:	e8 d5 00 00 00       	call   6c0 <strcmp>
 5eb:	83 c4 10             	add    $0x10,%esp
 5ee:	85 c0                	test   %eax,%eax
 5f0:	0f 94 c0             	sete   %al
 5f3:	0f b6 c0             	movzbl %al,%eax
 5f6:	e9 0f ff ff ff       	jmp    50a <cat_string+0x5a>
 5fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5ff:	90                   	nop

00000600 <run>:
{
 600:	f3 0f 1e fb          	endbr32 
 604:	55                   	push   %ebp
 605:	89 e5                	mov    %esp,%ebp
 607:	53                   	push   %ebx
 608:	83 ec 10             	sub    $0x10,%esp
 60b:	8b 5d 08             	mov    0x8(%ebp),%ebx
	flag=cat_string(comm);
 60e:	53                   	push   %ebx
 60f:	e8 9c fe ff ff       	call   4b0 <cat_string>
	if(flag==0)printf(1,"Illegal command or arguments");
 614:	83 c4 10             	add    $0x10,%esp
 617:	85 c0                	test   %eax,%eax
 619:	74 1d                	je     638 <run+0x38>
	else if(flag==1)exec(comm[0],comm);
 61b:	83 f8 01             	cmp    $0x1,%eax
 61e:	74 48                	je     668 <run+0x68>
	else if(flag==2)pipe_exe();
 620:	83 f8 02             	cmp    $0x2,%eax
 623:	74 33                	je     658 <run+0x58>
	else if(flag==4)par_exe();
 625:	83 f8 04             	cmp    $0x4,%eax
 628:	74 56                	je     680 <run+0x80>
}
 62a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 62d:	31 c0                	xor    %eax,%eax
 62f:	c9                   	leave  
 630:	c3                   	ret    
 631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	if(flag==0)printf(1,"Illegal command or arguments");
 638:	83 ec 08             	sub    $0x8,%esp
 63b:	68 06 0e 00 00       	push   $0xe06
 640:	6a 01                	push   $0x1
 642:	e8 29 04 00 00       	call   a70 <printf>
}
 647:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 64a:	83 c4 10             	add    $0x10,%esp
 64d:	31 c0                	xor    %eax,%eax
 64f:	c9                   	leave  
 650:	c3                   	ret    
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	else if(flag==2)pipe_exe();
 658:	e8 53 fc ff ff       	call   2b0 <pipe_exe>
}
 65d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 660:	31 c0                	xor    %eax,%eax
 662:	c9                   	leave  
 663:	c3                   	ret    
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	else if(flag==1)exec(comm[0],comm);
 668:	83 ec 08             	sub    $0x8,%esp
 66b:	53                   	push   %ebx
 66c:	ff 33                	pushl  (%ebx)
 66e:	e8 b8 02 00 00       	call   92b <exec>
}
 673:	8b 5d fc             	mov    -0x4(%ebp),%ebx
	else if(flag==1)exec(comm[0],comm);
 676:	83 c4 10             	add    $0x10,%esp
}
 679:	31 c0                	xor    %eax,%eax
 67b:	c9                   	leave  
 67c:	c3                   	ret    
 67d:	8d 76 00             	lea    0x0(%esi),%esi
	else if(flag==4)par_exe();
 680:	e8 7b fb ff ff       	call   200 <par_exe>
 685:	eb a3                	jmp    62a <run+0x2a>
 687:	66 90                	xchg   %ax,%ax
 689:	66 90                	xchg   %ax,%ax
 68b:	66 90                	xchg   %ax,%ax
 68d:	66 90                	xchg   %ax,%ax
 68f:	90                   	nop

00000690 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 690:	f3 0f 1e fb          	endbr32 
 694:	55                   	push   %ebp
 695:	89 e5                	mov    %esp,%ebp
 697:	53                   	push   %ebx
 698:	8b 5d 08             	mov    0x8(%ebp),%ebx
 69b:	8b 55 0c             	mov    0xc(%ebp),%edx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 69e:	89 d8                	mov    %ebx,%eax
 6a0:	0f b6 0a             	movzbl (%edx),%ecx
 6a3:	83 c2 01             	add    $0x1,%edx
 6a6:	83 c0 01             	add    $0x1,%eax
 6a9:	88 48 ff             	mov    %cl,-0x1(%eax)
 6ac:	84 c9                	test   %cl,%cl
 6ae:	75 f0                	jne    6a0 <strcpy+0x10>
    ;
  s++;
  *s=0;
 6b0:	c6 40 01 00          	movb   $0x0,0x1(%eax)
  return os;
}
 6b4:	89 d8                	mov    %ebx,%eax
 6b6:	5b                   	pop    %ebx
 6b7:	5d                   	pop    %ebp
 6b8:	c3                   	ret    
 6b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 6c0:	f3 0f 1e fb          	endbr32 
 6c4:	55                   	push   %ebp
 6c5:	89 e5                	mov    %esp,%ebp
 6c7:	53                   	push   %ebx
 6c8:	8b 4d 08             	mov    0x8(%ebp),%ecx
 6cb:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
 6ce:	0f b6 01             	movzbl (%ecx),%eax
 6d1:	0f b6 1a             	movzbl (%edx),%ebx
 6d4:	84 c0                	test   %al,%al
 6d6:	75 19                	jne    6f1 <strcmp+0x31>
 6d8:	eb 26                	jmp    700 <strcmp+0x40>
 6da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6e0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
 6e4:	83 c1 01             	add    $0x1,%ecx
 6e7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 6ea:	0f b6 1a             	movzbl (%edx),%ebx
 6ed:	84 c0                	test   %al,%al
 6ef:	74 0f                	je     700 <strcmp+0x40>
 6f1:	38 d8                	cmp    %bl,%al
 6f3:	74 eb                	je     6e0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 6f5:	29 d8                	sub    %ebx,%eax
}
 6f7:	5b                   	pop    %ebx
 6f8:	5d                   	pop    %ebp
 6f9:	c3                   	ret    
 6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 700:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 702:	29 d8                	sub    %ebx,%eax
}
 704:	5b                   	pop    %ebx
 705:	5d                   	pop    %ebp
 706:	c3                   	ret    
 707:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70e:	66 90                	xchg   %ax,%ax

00000710 <strlen>:

uint
strlen(const char *s)
{
 710:	f3 0f 1e fb          	endbr32 
 714:	55                   	push   %ebp
 715:	89 e5                	mov    %esp,%ebp
 717:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 71a:	80 3a 00             	cmpb   $0x0,(%edx)
 71d:	74 21                	je     740 <strlen+0x30>
 71f:	31 c0                	xor    %eax,%eax
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 728:	83 c0 01             	add    $0x1,%eax
 72b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 72f:	89 c1                	mov    %eax,%ecx
 731:	75 f5                	jne    728 <strlen+0x18>
    ;
  return n;
}
 733:	89 c8                	mov    %ecx,%eax
 735:	5d                   	pop    %ebp
 736:	c3                   	ret    
 737:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
 740:	31 c9                	xor    %ecx,%ecx
}
 742:	5d                   	pop    %ebp
 743:	89 c8                	mov    %ecx,%eax
 745:	c3                   	ret    
 746:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi

00000750 <memset>:

void*
memset(void *dst, int c, uint n)
{
 750:	f3 0f 1e fb          	endbr32 
 754:	55                   	push   %ebp
 755:	89 e5                	mov    %esp,%ebp
 757:	57                   	push   %edi
 758:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 75b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 75e:	8b 45 0c             	mov    0xc(%ebp),%eax
 761:	89 d7                	mov    %edx,%edi
 763:	fc                   	cld    
 764:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 766:	89 d0                	mov    %edx,%eax
 768:	5f                   	pop    %edi
 769:	5d                   	pop    %ebp
 76a:	c3                   	ret    
 76b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 76f:	90                   	nop

00000770 <strchr>:

char*
strchr(const char *s, char c)
{
 770:	f3 0f 1e fb          	endbr32 
 774:	55                   	push   %ebp
 775:	89 e5                	mov    %esp,%ebp
 777:	8b 45 08             	mov    0x8(%ebp),%eax
 77a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 77e:	0f b6 10             	movzbl (%eax),%edx
 781:	84 d2                	test   %dl,%dl
 783:	75 16                	jne    79b <strchr+0x2b>
 785:	eb 21                	jmp    7a8 <strchr+0x38>
 787:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78e:	66 90                	xchg   %ax,%ax
 790:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 794:	83 c0 01             	add    $0x1,%eax
 797:	84 d2                	test   %dl,%dl
 799:	74 0d                	je     7a8 <strchr+0x38>
    if(*s == c)
 79b:	38 d1                	cmp    %dl,%cl
 79d:	75 f1                	jne    790 <strchr+0x20>
      return (char*)s;
  return 0;
}
 79f:	5d                   	pop    %ebp
 7a0:	c3                   	ret    
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 7a8:	31 c0                	xor    %eax,%eax
}
 7aa:	5d                   	pop    %ebp
 7ab:	c3                   	ret    
 7ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000007b0 <gets>:

char*
gets(char *buf, int max)
{
 7b0:	f3 0f 1e fb          	endbr32 
 7b4:	55                   	push   %ebp
 7b5:	89 e5                	mov    %esp,%ebp
 7b7:	57                   	push   %edi
 7b8:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 7b9:	31 f6                	xor    %esi,%esi
{
 7bb:	53                   	push   %ebx
 7bc:	89 f3                	mov    %esi,%ebx
 7be:	83 ec 1c             	sub    $0x1c,%esp
 7c1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 7c4:	eb 33                	jmp    7f9 <gets+0x49>
 7c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 7d0:	83 ec 04             	sub    $0x4,%esp
 7d3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7d6:	6a 01                	push   $0x1
 7d8:	50                   	push   %eax
 7d9:	6a 00                	push   $0x0
 7db:	e8 2b 01 00 00       	call   90b <read>
    if(cc < 1)
 7e0:	83 c4 10             	add    $0x10,%esp
 7e3:	85 c0                	test   %eax,%eax
 7e5:	7e 1c                	jle    803 <gets+0x53>
      break;
    buf[i++] = c;
 7e7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 7eb:	83 c7 01             	add    $0x1,%edi
 7ee:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 7f1:	3c 0a                	cmp    $0xa,%al
 7f3:	74 23                	je     818 <gets+0x68>
 7f5:	3c 0d                	cmp    $0xd,%al
 7f7:	74 1f                	je     818 <gets+0x68>
  for(i=0; i+1 < max; ){
 7f9:	83 c3 01             	add    $0x1,%ebx
 7fc:	89 fe                	mov    %edi,%esi
 7fe:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 801:	7c cd                	jl     7d0 <gets+0x20>
 803:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 805:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 808:	c6 03 00             	movb   $0x0,(%ebx)
}
 80b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80e:	5b                   	pop    %ebx
 80f:	5e                   	pop    %esi
 810:	5f                   	pop    %edi
 811:	5d                   	pop    %ebp
 812:	c3                   	ret    
 813:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 817:	90                   	nop
 818:	8b 75 08             	mov    0x8(%ebp),%esi
 81b:	8b 45 08             	mov    0x8(%ebp),%eax
 81e:	01 de                	add    %ebx,%esi
 820:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 822:	c6 03 00             	movb   $0x0,(%ebx)
}
 825:	8d 65 f4             	lea    -0xc(%ebp),%esp
 828:	5b                   	pop    %ebx
 829:	5e                   	pop    %esi
 82a:	5f                   	pop    %edi
 82b:	5d                   	pop    %ebp
 82c:	c3                   	ret    
 82d:	8d 76 00             	lea    0x0(%esi),%esi

00000830 <stat>:

int
stat(const char *n, struct stat *st)
{
 830:	f3 0f 1e fb          	endbr32 
 834:	55                   	push   %ebp
 835:	89 e5                	mov    %esp,%ebp
 837:	56                   	push   %esi
 838:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 839:	83 ec 08             	sub    $0x8,%esp
 83c:	6a 00                	push   $0x0
 83e:	ff 75 08             	pushl  0x8(%ebp)
 841:	e8 ed 00 00 00       	call   933 <open>
  if(fd < 0)
 846:	83 c4 10             	add    $0x10,%esp
 849:	85 c0                	test   %eax,%eax
 84b:	78 2b                	js     878 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 84d:	83 ec 08             	sub    $0x8,%esp
 850:	ff 75 0c             	pushl  0xc(%ebp)
 853:	89 c3                	mov    %eax,%ebx
 855:	50                   	push   %eax
 856:	e8 f0 00 00 00       	call   94b <fstat>
  close(fd);
 85b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 85e:	89 c6                	mov    %eax,%esi
  close(fd);
 860:	e8 b6 00 00 00       	call   91b <close>
  return r;
 865:	83 c4 10             	add    $0x10,%esp
}
 868:	8d 65 f8             	lea    -0x8(%ebp),%esp
 86b:	89 f0                	mov    %esi,%eax
 86d:	5b                   	pop    %ebx
 86e:	5e                   	pop    %esi
 86f:	5d                   	pop    %ebp
 870:	c3                   	ret    
 871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 878:	be ff ff ff ff       	mov    $0xffffffff,%esi
 87d:	eb e9                	jmp    868 <stat+0x38>
 87f:	90                   	nop

00000880 <atoi>:

int
atoi(const char *s)
{
 880:	f3 0f 1e fb          	endbr32 
 884:	55                   	push   %ebp
 885:	89 e5                	mov    %esp,%ebp
 887:	53                   	push   %ebx
 888:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 88b:	0f be 02             	movsbl (%edx),%eax
 88e:	8d 48 d0             	lea    -0x30(%eax),%ecx
 891:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 894:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 899:	77 1a                	ja     8b5 <atoi+0x35>
 89b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 89f:	90                   	nop
    n = n*10 + *s++ - '0';
 8a0:	83 c2 01             	add    $0x1,%edx
 8a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 8a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 8aa:	0f be 02             	movsbl (%edx),%eax
 8ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 8b0:	80 fb 09             	cmp    $0x9,%bl
 8b3:	76 eb                	jbe    8a0 <atoi+0x20>
  return n;
}
 8b5:	89 c8                	mov    %ecx,%eax
 8b7:	5b                   	pop    %ebx
 8b8:	5d                   	pop    %ebp
 8b9:	c3                   	ret    
 8ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000008c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 8c0:	f3 0f 1e fb          	endbr32 
 8c4:	55                   	push   %ebp
 8c5:	89 e5                	mov    %esp,%ebp
 8c7:	57                   	push   %edi
 8c8:	8b 45 10             	mov    0x10(%ebp),%eax
 8cb:	8b 55 08             	mov    0x8(%ebp),%edx
 8ce:	56                   	push   %esi
 8cf:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 8d2:	85 c0                	test   %eax,%eax
 8d4:	7e 0f                	jle    8e5 <memmove+0x25>
 8d6:	01 d0                	add    %edx,%eax
  dst = vdst;
 8d8:	89 d7                	mov    %edx,%edi
 8da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
 8e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 8e1:	39 f8                	cmp    %edi,%eax
 8e3:	75 fb                	jne    8e0 <memmove+0x20>
  return vdst;
}
 8e5:	5e                   	pop    %esi
 8e6:	89 d0                	mov    %edx,%eax
 8e8:	5f                   	pop    %edi
 8e9:	5d                   	pop    %ebp
 8ea:	c3                   	ret    

000008eb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 8eb:	b8 01 00 00 00       	mov    $0x1,%eax
 8f0:	cd 40                	int    $0x40
 8f2:	c3                   	ret    

000008f3 <exit>:
SYSCALL(exit)
 8f3:	b8 02 00 00 00       	mov    $0x2,%eax
 8f8:	cd 40                	int    $0x40
 8fa:	c3                   	ret    

000008fb <wait>:
SYSCALL(wait)
 8fb:	b8 03 00 00 00       	mov    $0x3,%eax
 900:	cd 40                	int    $0x40
 902:	c3                   	ret    

00000903 <pipe>:
SYSCALL(pipe)
 903:	b8 04 00 00 00       	mov    $0x4,%eax
 908:	cd 40                	int    $0x40
 90a:	c3                   	ret    

0000090b <read>:
SYSCALL(read)
 90b:	b8 05 00 00 00       	mov    $0x5,%eax
 910:	cd 40                	int    $0x40
 912:	c3                   	ret    

00000913 <write>:
SYSCALL(write)
 913:	b8 10 00 00 00       	mov    $0x10,%eax
 918:	cd 40                	int    $0x40
 91a:	c3                   	ret    

0000091b <close>:
SYSCALL(close)
 91b:	b8 15 00 00 00       	mov    $0x15,%eax
 920:	cd 40                	int    $0x40
 922:	c3                   	ret    

00000923 <kill>:
SYSCALL(kill)
 923:	b8 06 00 00 00       	mov    $0x6,%eax
 928:	cd 40                	int    $0x40
 92a:	c3                   	ret    

0000092b <exec>:
SYSCALL(exec)
 92b:	b8 07 00 00 00       	mov    $0x7,%eax
 930:	cd 40                	int    $0x40
 932:	c3                   	ret    

00000933 <open>:
SYSCALL(open)
 933:	b8 0f 00 00 00       	mov    $0xf,%eax
 938:	cd 40                	int    $0x40
 93a:	c3                   	ret    

0000093b <mknod>:
SYSCALL(mknod)
 93b:	b8 11 00 00 00       	mov    $0x11,%eax
 940:	cd 40                	int    $0x40
 942:	c3                   	ret    

00000943 <unlink>:
SYSCALL(unlink)
 943:	b8 12 00 00 00       	mov    $0x12,%eax
 948:	cd 40                	int    $0x40
 94a:	c3                   	ret    

0000094b <fstat>:
SYSCALL(fstat)
 94b:	b8 08 00 00 00       	mov    $0x8,%eax
 950:	cd 40                	int    $0x40
 952:	c3                   	ret    

00000953 <link>:
SYSCALL(link)
 953:	b8 13 00 00 00       	mov    $0x13,%eax
 958:	cd 40                	int    $0x40
 95a:	c3                   	ret    

0000095b <mkdir>:
SYSCALL(mkdir)
 95b:	b8 14 00 00 00       	mov    $0x14,%eax
 960:	cd 40                	int    $0x40
 962:	c3                   	ret    

00000963 <chdir>:
SYSCALL(chdir)
 963:	b8 09 00 00 00       	mov    $0x9,%eax
 968:	cd 40                	int    $0x40
 96a:	c3                   	ret    

0000096b <dup>:
SYSCALL(dup)
 96b:	b8 0a 00 00 00       	mov    $0xa,%eax
 970:	cd 40                	int    $0x40
 972:	c3                   	ret    

00000973 <getpid>:
SYSCALL(getpid)
 973:	b8 0b 00 00 00       	mov    $0xb,%eax
 978:	cd 40                	int    $0x40
 97a:	c3                   	ret    

0000097b <sbrk>:
SYSCALL(sbrk)
 97b:	b8 0c 00 00 00       	mov    $0xc,%eax
 980:	cd 40                	int    $0x40
 982:	c3                   	ret    

00000983 <sleep>:
SYSCALL(sleep)
 983:	b8 0d 00 00 00       	mov    $0xd,%eax
 988:	cd 40                	int    $0x40
 98a:	c3                   	ret    

0000098b <uptime>:
SYSCALL(uptime)
 98b:	b8 0e 00 00 00       	mov    $0xe,%eax
 990:	cd 40                	int    $0x40
 992:	c3                   	ret    

00000993 <helloWorld>:
SYSCALL(helloWorld)
 993:	b8 16 00 00 00       	mov    $0x16,%eax
 998:	cd 40                	int    $0x40
 99a:	c3                   	ret    

0000099b <numOpenFiles>:
SYSCALL(numOpenFiles)
 99b:	b8 17 00 00 00       	mov    $0x17,%eax
 9a0:	cd 40                	int    $0x40
 9a2:	c3                   	ret    

000009a3 <memAlloc>:
SYSCALL(memAlloc)
 9a3:	b8 18 00 00 00       	mov    $0x18,%eax
 9a8:	cd 40                	int    $0x40
 9aa:	c3                   	ret    

000009ab <getprocesstimedetails>:
SYSCALL(getprocesstimedetails)
 9ab:	b8 19 00 00 00       	mov    $0x19,%eax
 9b0:	cd 40                	int    $0x40
 9b2:	c3                   	ret    

000009b3 <psinfo>:
SYSCALL(psinfo)
 9b3:	b8 1a 00 00 00       	mov    $0x1a,%eax
 9b8:	cd 40                	int    $0x40
 9ba:	c3                   	ret    
 9bb:	66 90                	xchg   %ax,%ax
 9bd:	66 90                	xchg   %ax,%ax
 9bf:	90                   	nop

000009c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
 9c5:	53                   	push   %ebx
 9c6:	83 ec 3c             	sub    $0x3c,%esp
 9c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 9cc:	89 d1                	mov    %edx,%ecx
{
 9ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 9d1:	85 d2                	test   %edx,%edx
 9d3:	0f 89 7f 00 00 00    	jns    a58 <printint+0x98>
 9d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 9dd:	74 79                	je     a58 <printint+0x98>
    neg = 1;
 9df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 9e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 9e8:	31 db                	xor    %ebx,%ebx
 9ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 9ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 9f0:	89 c8                	mov    %ecx,%eax
 9f2:	31 d2                	xor    %edx,%edx
 9f4:	89 cf                	mov    %ecx,%edi
 9f6:	f7 75 c4             	divl   -0x3c(%ebp)
 9f9:	0f b6 92 2c 0e 00 00 	movzbl 0xe2c(%edx),%edx
 a00:	89 45 c0             	mov    %eax,-0x40(%ebp)
 a03:	89 d8                	mov    %ebx,%eax
 a05:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 a08:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 a0b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 a0e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 a11:	76 dd                	jbe    9f0 <printint+0x30>
  if(neg)
 a13:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 a16:	85 c9                	test   %ecx,%ecx
 a18:	74 0c                	je     a26 <printint+0x66>
    buf[i++] = '-';
 a1a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 a1f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 a21:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 a26:	8b 7d b8             	mov    -0x48(%ebp),%edi
 a29:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 a2d:	eb 07                	jmp    a36 <printint+0x76>
 a2f:	90                   	nop
 a30:	0f b6 13             	movzbl (%ebx),%edx
 a33:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 a36:	83 ec 04             	sub    $0x4,%esp
 a39:	88 55 d7             	mov    %dl,-0x29(%ebp)
 a3c:	6a 01                	push   $0x1
 a3e:	56                   	push   %esi
 a3f:	57                   	push   %edi
 a40:	e8 ce fe ff ff       	call   913 <write>
  while(--i >= 0)
 a45:	83 c4 10             	add    $0x10,%esp
 a48:	39 de                	cmp    %ebx,%esi
 a4a:	75 e4                	jne    a30 <printint+0x70>
    putc(fd, buf[i]);
}
 a4c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a4f:	5b                   	pop    %ebx
 a50:	5e                   	pop    %esi
 a51:	5f                   	pop    %edi
 a52:	5d                   	pop    %ebp
 a53:	c3                   	ret    
 a54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 a58:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 a5f:	eb 87                	jmp    9e8 <printint+0x28>
 a61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a6f:	90                   	nop

00000a70 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 a70:	f3 0f 1e fb          	endbr32 
 a74:	55                   	push   %ebp
 a75:	89 e5                	mov    %esp,%ebp
 a77:	57                   	push   %edi
 a78:	56                   	push   %esi
 a79:	53                   	push   %ebx
 a7a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a7d:	8b 75 0c             	mov    0xc(%ebp),%esi
 a80:	0f b6 1e             	movzbl (%esi),%ebx
 a83:	84 db                	test   %bl,%bl
 a85:	0f 84 b4 00 00 00    	je     b3f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
 a8b:	8d 45 10             	lea    0x10(%ebp),%eax
 a8e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 a91:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 a94:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
 a96:	89 45 d0             	mov    %eax,-0x30(%ebp)
 a99:	eb 33                	jmp    ace <printf+0x5e>
 a9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a9f:	90                   	nop
 aa0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 aa3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 aa8:	83 f8 25             	cmp    $0x25,%eax
 aab:	74 17                	je     ac4 <printf+0x54>
  write(fd, &c, 1);
 aad:	83 ec 04             	sub    $0x4,%esp
 ab0:	88 5d e7             	mov    %bl,-0x19(%ebp)
 ab3:	6a 01                	push   $0x1
 ab5:	57                   	push   %edi
 ab6:	ff 75 08             	pushl  0x8(%ebp)
 ab9:	e8 55 fe ff ff       	call   913 <write>
 abe:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 ac1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 ac4:	0f b6 1e             	movzbl (%esi),%ebx
 ac7:	83 c6 01             	add    $0x1,%esi
 aca:	84 db                	test   %bl,%bl
 acc:	74 71                	je     b3f <printf+0xcf>
    c = fmt[i] & 0xff;
 ace:	0f be cb             	movsbl %bl,%ecx
 ad1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 ad4:	85 d2                	test   %edx,%edx
 ad6:	74 c8                	je     aa0 <printf+0x30>
      }
    } else if(state == '%'){
 ad8:	83 fa 25             	cmp    $0x25,%edx
 adb:	75 e7                	jne    ac4 <printf+0x54>
      if(c == 'd'){
 add:	83 f8 64             	cmp    $0x64,%eax
 ae0:	0f 84 9a 00 00 00    	je     b80 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 ae6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 aec:	83 f9 70             	cmp    $0x70,%ecx
 aef:	74 5f                	je     b50 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 af1:	83 f8 73             	cmp    $0x73,%eax
 af4:	0f 84 d6 00 00 00    	je     bd0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 afa:	83 f8 63             	cmp    $0x63,%eax
 afd:	0f 84 8d 00 00 00    	je     b90 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 b03:	83 f8 25             	cmp    $0x25,%eax
 b06:	0f 84 b4 00 00 00    	je     bc0 <printf+0x150>
  write(fd, &c, 1);
 b0c:	83 ec 04             	sub    $0x4,%esp
 b0f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 b13:	6a 01                	push   $0x1
 b15:	57                   	push   %edi
 b16:	ff 75 08             	pushl  0x8(%ebp)
 b19:	e8 f5 fd ff ff       	call   913 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 b1e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 b21:	83 c4 0c             	add    $0xc,%esp
 b24:	6a 01                	push   $0x1
 b26:	83 c6 01             	add    $0x1,%esi
 b29:	57                   	push   %edi
 b2a:	ff 75 08             	pushl  0x8(%ebp)
 b2d:	e8 e1 fd ff ff       	call   913 <write>
  for(i = 0; fmt[i]; i++){
 b32:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
 b36:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
 b39:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 b3b:	84 db                	test   %bl,%bl
 b3d:	75 8f                	jne    ace <printf+0x5e>
    }
  }
}
 b3f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b42:	5b                   	pop    %ebx
 b43:	5e                   	pop    %esi
 b44:	5f                   	pop    %edi
 b45:	5d                   	pop    %ebp
 b46:	c3                   	ret    
 b47:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b4e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 b50:	83 ec 0c             	sub    $0xc,%esp
 b53:	b9 10 00 00 00       	mov    $0x10,%ecx
 b58:	6a 00                	push   $0x0
 b5a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 b5d:	8b 45 08             	mov    0x8(%ebp),%eax
 b60:	8b 13                	mov    (%ebx),%edx
 b62:	e8 59 fe ff ff       	call   9c0 <printint>
        ap++;
 b67:	89 d8                	mov    %ebx,%eax
 b69:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b6c:	31 d2                	xor    %edx,%edx
        ap++;
 b6e:	83 c0 04             	add    $0x4,%eax
 b71:	89 45 d0             	mov    %eax,-0x30(%ebp)
 b74:	e9 4b ff ff ff       	jmp    ac4 <printf+0x54>
 b79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 b80:	83 ec 0c             	sub    $0xc,%esp
 b83:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b88:	6a 01                	push   $0x1
 b8a:	eb ce                	jmp    b5a <printf+0xea>
 b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 b90:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 b93:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b96:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
 b98:	6a 01                	push   $0x1
        ap++;
 b9a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
 b9d:	57                   	push   %edi
 b9e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
 ba1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 ba4:	e8 6a fd ff ff       	call   913 <write>
        ap++;
 ba9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 bac:	83 c4 10             	add    $0x10,%esp
      state = 0;
 baf:	31 d2                	xor    %edx,%edx
 bb1:	e9 0e ff ff ff       	jmp    ac4 <printf+0x54>
 bb6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 bbd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
 bc0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 bc3:	83 ec 04             	sub    $0x4,%esp
 bc6:	e9 59 ff ff ff       	jmp    b24 <printf+0xb4>
 bcb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 bcf:	90                   	nop
        s = (char*)*ap;
 bd0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 bd3:	8b 18                	mov    (%eax),%ebx
        ap++;
 bd5:	83 c0 04             	add    $0x4,%eax
 bd8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 bdb:	85 db                	test   %ebx,%ebx
 bdd:	74 17                	je     bf6 <printf+0x186>
        while(*s != 0){
 bdf:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 be2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 be4:	84 c0                	test   %al,%al
 be6:	0f 84 d8 fe ff ff    	je     ac4 <printf+0x54>
 bec:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 bef:	89 de                	mov    %ebx,%esi
 bf1:	8b 5d 08             	mov    0x8(%ebp),%ebx
 bf4:	eb 1a                	jmp    c10 <printf+0x1a0>
          s = "(null)";
 bf6:	bb 23 0e 00 00       	mov    $0xe23,%ebx
        while(*s != 0){
 bfb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 bfe:	b8 28 00 00 00       	mov    $0x28,%eax
 c03:	89 de                	mov    %ebx,%esi
 c05:	8b 5d 08             	mov    0x8(%ebp),%ebx
 c08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 c0f:	90                   	nop
  write(fd, &c, 1);
 c10:	83 ec 04             	sub    $0x4,%esp
          s++;
 c13:	83 c6 01             	add    $0x1,%esi
 c16:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 c19:	6a 01                	push   $0x1
 c1b:	57                   	push   %edi
 c1c:	53                   	push   %ebx
 c1d:	e8 f1 fc ff ff       	call   913 <write>
        while(*s != 0){
 c22:	0f b6 06             	movzbl (%esi),%eax
 c25:	83 c4 10             	add    $0x10,%esp
 c28:	84 c0                	test   %al,%al
 c2a:	75 e4                	jne    c10 <printf+0x1a0>
 c2c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
 c2f:	31 d2                	xor    %edx,%edx
 c31:	e9 8e fe ff ff       	jmp    ac4 <printf+0x54>
 c36:	66 90                	xchg   %ax,%ax
 c38:	66 90                	xchg   %ax,%ax
 c3a:	66 90                	xchg   %ax,%ax
 c3c:	66 90                	xchg   %ax,%ax
 c3e:	66 90                	xchg   %ax,%ax

00000c40 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 c40:	f3 0f 1e fb          	endbr32 
 c44:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c45:	a1 c0 12 00 00       	mov    0x12c0,%eax
{
 c4a:	89 e5                	mov    %esp,%ebp
 c4c:	57                   	push   %edi
 c4d:	56                   	push   %esi
 c4e:	53                   	push   %ebx
 c4f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 c52:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 c54:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c57:	39 c8                	cmp    %ecx,%eax
 c59:	73 15                	jae    c70 <free+0x30>
 c5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 c5f:	90                   	nop
 c60:	39 d1                	cmp    %edx,%ecx
 c62:	72 14                	jb     c78 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c64:	39 d0                	cmp    %edx,%eax
 c66:	73 10                	jae    c78 <free+0x38>
{
 c68:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 c6a:	8b 10                	mov    (%eax),%edx
 c6c:	39 c8                	cmp    %ecx,%eax
 c6e:	72 f0                	jb     c60 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c70:	39 d0                	cmp    %edx,%eax
 c72:	72 f4                	jb     c68 <free+0x28>
 c74:	39 d1                	cmp    %edx,%ecx
 c76:	73 f0                	jae    c68 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
 c78:	8b 73 fc             	mov    -0x4(%ebx),%esi
 c7b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 c7e:	39 fa                	cmp    %edi,%edx
 c80:	74 1e                	je     ca0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 c82:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 c85:	8b 50 04             	mov    0x4(%eax),%edx
 c88:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 c8b:	39 f1                	cmp    %esi,%ecx
 c8d:	74 28                	je     cb7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 c8f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 c91:	5b                   	pop    %ebx
  freep = p;
 c92:	a3 c0 12 00 00       	mov    %eax,0x12c0
}
 c97:	5e                   	pop    %esi
 c98:	5f                   	pop    %edi
 c99:	5d                   	pop    %ebp
 c9a:	c3                   	ret    
 c9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 c9f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
 ca0:	03 72 04             	add    0x4(%edx),%esi
 ca3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 ca6:	8b 10                	mov    (%eax),%edx
 ca8:	8b 12                	mov    (%edx),%edx
 caa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 cad:	8b 50 04             	mov    0x4(%eax),%edx
 cb0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 cb3:	39 f1                	cmp    %esi,%ecx
 cb5:	75 d8                	jne    c8f <free+0x4f>
    p->s.size += bp->s.size;
 cb7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 cba:	a3 c0 12 00 00       	mov    %eax,0x12c0
    p->s.size += bp->s.size;
 cbf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 cc2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 cc5:	89 10                	mov    %edx,(%eax)
}
 cc7:	5b                   	pop    %ebx
 cc8:	5e                   	pop    %esi
 cc9:	5f                   	pop    %edi
 cca:	5d                   	pop    %ebp
 ccb:	c3                   	ret    
 ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000cd0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 cd0:	f3 0f 1e fb          	endbr32 
 cd4:	55                   	push   %ebp
 cd5:	89 e5                	mov    %esp,%ebp
 cd7:	57                   	push   %edi
 cd8:	56                   	push   %esi
 cd9:	53                   	push   %ebx
 cda:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 cdd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 ce0:	8b 3d c0 12 00 00    	mov    0x12c0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ce6:	8d 70 07             	lea    0x7(%eax),%esi
 ce9:	c1 ee 03             	shr    $0x3,%esi
 cec:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 cef:	85 ff                	test   %edi,%edi
 cf1:	0f 84 a9 00 00 00    	je     da0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 cf7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
 cf9:	8b 48 04             	mov    0x4(%eax),%ecx
 cfc:	39 f1                	cmp    %esi,%ecx
 cfe:	73 6d                	jae    d6d <malloc+0x9d>
 d00:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 d06:	bb 00 10 00 00       	mov    $0x1000,%ebx
 d0b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 d0e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
 d15:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 d18:	eb 17                	jmp    d31 <malloc+0x61>
 d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d20:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
 d22:	8b 4a 04             	mov    0x4(%edx),%ecx
 d25:	39 f1                	cmp    %esi,%ecx
 d27:	73 4f                	jae    d78 <malloc+0xa8>
 d29:	8b 3d c0 12 00 00    	mov    0x12c0,%edi
 d2f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 d31:	39 c7                	cmp    %eax,%edi
 d33:	75 eb                	jne    d20 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
 d35:	83 ec 0c             	sub    $0xc,%esp
 d38:	ff 75 e4             	pushl  -0x1c(%ebp)
 d3b:	e8 3b fc ff ff       	call   97b <sbrk>
  if(p == (char*)-1)
 d40:	83 c4 10             	add    $0x10,%esp
 d43:	83 f8 ff             	cmp    $0xffffffff,%eax
 d46:	74 1b                	je     d63 <malloc+0x93>
  hp->s.size = nu;
 d48:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 d4b:	83 ec 0c             	sub    $0xc,%esp
 d4e:	83 c0 08             	add    $0x8,%eax
 d51:	50                   	push   %eax
 d52:	e8 e9 fe ff ff       	call   c40 <free>
  return freep;
 d57:	a1 c0 12 00 00       	mov    0x12c0,%eax
      if((p = morecore(nunits)) == 0)
 d5c:	83 c4 10             	add    $0x10,%esp
 d5f:	85 c0                	test   %eax,%eax
 d61:	75 bd                	jne    d20 <malloc+0x50>
        return 0;
  }
}
 d63:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 d66:	31 c0                	xor    %eax,%eax
}
 d68:	5b                   	pop    %ebx
 d69:	5e                   	pop    %esi
 d6a:	5f                   	pop    %edi
 d6b:	5d                   	pop    %ebp
 d6c:	c3                   	ret    
    if(p->s.size >= nunits){
 d6d:	89 c2                	mov    %eax,%edx
 d6f:	89 f8                	mov    %edi,%eax
 d71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 d78:	39 ce                	cmp    %ecx,%esi
 d7a:	74 54                	je     dd0 <malloc+0x100>
        p->s.size -= nunits;
 d7c:	29 f1                	sub    %esi,%ecx
 d7e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
 d81:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
 d84:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
 d87:	a3 c0 12 00 00       	mov    %eax,0x12c0
}
 d8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 d8f:	8d 42 08             	lea    0x8(%edx),%eax
}
 d92:	5b                   	pop    %ebx
 d93:	5e                   	pop    %esi
 d94:	5f                   	pop    %edi
 d95:	5d                   	pop    %ebp
 d96:	c3                   	ret    
 d97:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 d9e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
 da0:	c7 05 c0 12 00 00 c4 	movl   $0x12c4,0x12c0
 da7:	12 00 00 
    base.s.size = 0;
 daa:	bf c4 12 00 00       	mov    $0x12c4,%edi
    base.s.ptr = freep = prevp = &base;
 daf:	c7 05 c4 12 00 00 c4 	movl   $0x12c4,0x12c4
 db6:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 db9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
 dbb:	c7 05 c8 12 00 00 00 	movl   $0x0,0x12c8
 dc2:	00 00 00 
    if(p->s.size >= nunits){
 dc5:	e9 36 ff ff ff       	jmp    d00 <malloc+0x30>
 dca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 dd0:	8b 0a                	mov    (%edx),%ecx
 dd2:	89 08                	mov    %ecx,(%eax)
 dd4:	eb b1                	jmp    d87 <malloc+0xb7>
