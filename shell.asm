
_shell:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
	
}

int 
main(void)
{  char buf[MAX];
       0:	f3 0f 1e fb          	endbr32 
       4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       8:	83 e4 f0             	and    $0xfffffff0,%esp
       b:	ff 71 fc             	pushl  -0x4(%ecx)
       e:	55                   	push   %ebp
       f:	89 e5                	mov    %esp,%ebp
      11:	57                   	push   %edi
      12:	56                   	push   %esi
      13:	8d 7d e8             	lea    -0x18(%ebp),%edi
      16:	8d b5 f4 fd ff ff    	lea    -0x20c(%ebp),%esi
      1c:	53                   	push   %ebx
      1d:	8d 9d 58 fe ff ff    	lea    -0x1a8(%ebp),%ebx
      23:	51                   	push   %ecx
      24:	81 ec 08 02 00 00    	sub    $0x208,%esp
	while(i<MAX)
      2a:	89 d8                	mov    %ebx,%eax
      2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		comm[i]=0;
      30:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
	while(i<MAX)
      36:	83 c0 04             	add    $0x4,%eax
      39:	39 f8                	cmp    %edi,%eax
      3b:	75 f3                	jne    30 <main+0x30>
   char *comm[MAX];
   while(1)
   { int flag;
     nullify(comm);
     memset(buf,0,MAX);
      3d:	83 ec 04             	sub    $0x4,%esp
      40:	6a 64                	push   $0x64
      42:	6a 00                	push   $0x0
      44:	56                   	push   %esi
      45:	e8 b6 0c 00 00       	call   d00 <memset>
	printf(1,"\nMyShell > ");
      4a:	58                   	pop    %eax
      4b:	5a                   	pop    %edx
      4c:	68 88 13 00 00       	push   $0x1388
      51:	6a 01                	push   $0x1
      53:	e8 c8 0f 00 00       	call   1020 <printf>
     prompt_display();
     int sz=get_input(buf,comm);
      58:	59                   	pop    %ecx
      59:	58                   	pop    %eax
      5a:	53                   	push   %ebx
      5b:	56                   	push   %esi
      5c:	e8 8f 02 00 00       	call   2f0 <get_input>
	 struct arg cmd;
	 cmd.arg_ptr=comm;
      61:	89 9d ec fd ff ff    	mov    %ebx,-0x214(%ebp)
	 cmd.size=sz;
      67:	89 85 f0 fd ff ff    	mov    %eax,-0x210(%ebp)
	 flag=(parse_arg(&cmd));
      6d:	8d 85 ec fd ff ff    	lea    -0x214(%ebp),%eax
      73:	89 04 24             	mov    %eax,(%esp)
      76:	e8 d5 03 00 00       	call   450 <parse_arg>
	 if(flag==2) {exit(0);}
      7b:	83 c4 10             	add    $0x10,%esp
      7e:	83 f8 02             	cmp    $0x2,%eax
      81:	74 19                	je     9c <main+0x9c>
	 if(flag==-1){printf(1,"Illegal command or arguments");}
      83:	83 f8 ff             	cmp    $0xffffffff,%eax
      86:	75 a2                	jne    2a <main+0x2a>
      88:	83 ec 08             	sub    $0x8,%esp
      8b:	68 b9 13 00 00       	push   $0x13b9
      90:	6a 01                	push   $0x1
      92:	e8 89 0f 00 00       	call   1020 <printf>
      97:	83 c4 10             	add    $0x10,%esp
   { int flag;
      9a:	eb 8e                	jmp    2a <main+0x2a>
	 if(flag==2) {exit(0);}
      9c:	83 ec 0c             	sub    $0xc,%esp
      9f:	6a 00                	push   $0x0
      a1:	e8 fd 0d 00 00       	call   ea3 <exit>
      a6:	66 90                	xchg   %ax,%ax
      a8:	66 90                	xchg   %ax,%ax
      aa:	66 90                	xchg   %ax,%ax
      ac:	66 90                	xchg   %ax,%ax
      ae:	66 90                	xchg   %ax,%ax

000000b0 <prompt_display>:
{
      b0:	f3 0f 1e fb          	endbr32 
      b4:	55                   	push   %ebp
      b5:	89 e5                	mov    %esp,%ebp
      b7:	83 ec 10             	sub    $0x10,%esp
	printf(1,"\nMyShell > ");
      ba:	68 88 13 00 00       	push   $0x1388
      bf:	6a 01                	push   $0x1
      c1:	e8 5a 0f 00 00       	call   1020 <printf>
}
      c6:	31 c0                	xor    %eax,%eax
      c8:	c9                   	leave  
      c9:	c3                   	ret    
      ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000000d0 <nullify>:
{
      d0:	f3 0f 1e fb          	endbr32 
      d4:	55                   	push   %ebp
      d5:	89 e5                	mov    %esp,%ebp
      d7:	8b 45 08             	mov    0x8(%ebp),%eax
      da:	8d 90 90 01 00 00    	lea    0x190(%eax),%edx
		comm[i]=0;
      e0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
	while(i<MAX)
      e6:	83 c0 04             	add    $0x4,%eax
      e9:	39 d0                	cmp    %edx,%eax
      eb:	75 f3                	jne    e0 <nullify+0x10>
}
      ed:	31 c0                	xor    %eax,%eax
      ef:	5d                   	pop    %ebp
      f0:	c3                   	ret    
      f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      ff:	90                   	nop

00000100 <valid>:
{
     100:	f3 0f 1e fb          	endbr32 
     104:	55                   	push   %ebp
     105:	89 e5                	mov    %esp,%ebp
     107:	53                   	push   %ebx
     108:	83 ec 0c             	sub    $0xc,%esp
     10b:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if(strcmp(s,"ls")==0) return 1;
     10e:	68 94 13 00 00       	push   $0x1394
     113:	53                   	push   %ebx
     114:	e8 57 0b 00 00       	call   c70 <strcmp>
     119:	83 c4 10             	add    $0x10,%esp
     11c:	85 c0                	test   %eax,%eax
     11e:	75 10                	jne    130 <valid+0x30>
     120:	b8 01 00 00 00       	mov    $0x1,%eax
}
     125:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     128:	c9                   	leave  
     129:	c3                   	ret    
     12a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	else if(strcmp(s,"grep")==0) return 1;
     130:	83 ec 08             	sub    $0x8,%esp
     133:	68 97 13 00 00       	push   $0x1397
     138:	53                   	push   %ebx
     139:	e8 32 0b 00 00       	call   c70 <strcmp>
     13e:	83 c4 10             	add    $0x10,%esp
     141:	85 c0                	test   %eax,%eax
     143:	74 db                	je     120 <valid+0x20>
	else if(strcmp(s,"cat")==0) return 1;
     145:	83 ec 08             	sub    $0x8,%esp
     148:	68 9c 13 00 00       	push   $0x139c
     14d:	53                   	push   %ebx
     14e:	e8 1d 0b 00 00       	call   c70 <strcmp>
     153:	83 c4 10             	add    $0x10,%esp
     156:	85 c0                	test   %eax,%eax
     158:	74 c6                	je     120 <valid+0x20>
	else if(strcmp(s,"echo")==0) return 1;
     15a:	83 ec 08             	sub    $0x8,%esp
     15d:	68 a0 13 00 00       	push   $0x13a0
     162:	53                   	push   %ebx
     163:	e8 08 0b 00 00       	call   c70 <strcmp>
     168:	83 c4 10             	add    $0x10,%esp
     16b:	85 c0                	test   %eax,%eax
     16d:	74 b1                	je     120 <valid+0x20>
	else if(strcmp(s,"ps")==0) return 1;
     16f:	83 ec 08             	sub    $0x8,%esp
     172:	68 a5 13 00 00       	push   $0x13a5
     177:	53                   	push   %ebx
     178:	e8 f3 0a 00 00       	call   c70 <strcmp>
     17d:	83 c4 10             	add    $0x10,%esp
     180:	85 c0                	test   %eax,%eax
     182:	74 9c                	je     120 <valid+0x20>
	else if(strcmp(s,"procinfo")==0) return 1;
     184:	83 ec 08             	sub    $0x8,%esp
     187:	68 a8 13 00 00       	push   $0x13a8
     18c:	53                   	push   %ebx
     18d:	e8 de 0a 00 00       	call   c70 <strcmp>
     192:	83 c4 10             	add    $0x10,%esp
     195:	85 c0                	test   %eax,%eax
     197:	74 87                	je     120 <valid+0x20>
	else if(strcmp(s,"wc")==0) return 1;
     199:	83 ec 08             	sub    $0x8,%esp
     19c:	68 b1 13 00 00       	push   $0x13b1
     1a1:	53                   	push   %ebx
     1a2:	e8 c9 0a 00 00       	call   c70 <strcmp>
     1a7:	83 c4 10             	add    $0x10,%esp
     1aa:	85 c0                	test   %eax,%eax
     1ac:	0f 84 6e ff ff ff    	je     120 <valid+0x20>
	else if(strcmp(s,"exit")==0) return 2;
     1b2:	83 ec 08             	sub    $0x8,%esp
     1b5:	68 b4 13 00 00       	push   $0x13b4
     1ba:	53                   	push   %ebx
     1bb:	e8 b0 0a 00 00       	call   c70 <strcmp>
     1c0:	83 c4 10             	add    $0x10,%esp
	else return 0;
     1c3:	85 c0                	test   %eax,%eax
     1c5:	0f 94 c0             	sete   %al
     1c8:	0f b6 c0             	movzbl %al,%eax
     1cb:	01 c0                	add    %eax,%eax
     1cd:	e9 53 ff ff ff       	jmp    125 <valid+0x25>
     1d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     1d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001e0 <space_to_null>:
{   
     1e0:	f3 0f 1e fb          	endbr32 
     1e4:	55                   	push   %ebp
     1e5:	89 e5                	mov    %esp,%ebp
     1e7:	57                   	push   %edi
     1e8:	56                   	push   %esi
     1e9:	53                   	push   %ebx
     1ea:	83 ec 10             	sub    $0x10,%esp
     1ed:	8b 5d 08             	mov    0x8(%ebp),%ebx
     1f0:	8b 75 0c             	mov    0xc(%ebp),%esi
	memset(des,0,MAX);
     1f3:	6a 64                	push   $0x64
     1f5:	6a 00                	push   $0x0
     1f7:	53                   	push   %ebx
     1f8:	e8 03 0b 00 00       	call   d00 <memset>
	while(*in!=0)
     1fd:	0f b6 06             	movzbl (%esi),%eax
     200:	83 c4 10             	add    $0x10,%esp
     203:	84 c0                	test   %al,%al
     205:	74 39                	je     240 <space_to_null+0x60>
	int count=0;
     207:	31 d2                	xor    %edx,%edx
	    if(*in==' ')*out=0;
     209:	31 ff                	xor    %edi,%edi
     20b:	eb 05                	jmp    212 <space_to_null+0x32>
     20d:	8d 76 00             	lea    0x0(%esi),%esi
	    out++;in++;count++;
     210:	89 ca                	mov    %ecx,%edx
	    if(*in==' ')*out=0;
     212:	3c 20                	cmp    $0x20,%al
	    out++;in++;count++;
     214:	8d 4a 01             	lea    0x1(%edx),%ecx
	    if(*in==' ')*out=0;
     217:	0f 44 c7             	cmove  %edi,%eax
	    out++;in++;count++;
     21a:	83 c3 01             	add    $0x1,%ebx
     21d:	88 43 ff             	mov    %al,-0x1(%ebx)
	while(*in!=0)
     220:	0f b6 44 16 01       	movzbl 0x1(%esi,%edx,1),%eax
     225:	84 c0                	test   %al,%al
     227:	75 e7                	jne    210 <space_to_null+0x30>
	  *out=0;
     229:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
}
     22d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     230:	89 d0                	mov    %edx,%eax
     232:	5b                   	pop    %ebx
     233:	5e                   	pop    %esi
     234:	5f                   	pop    %edi
     235:	5d                   	pop    %ebp
     236:	c3                   	ret    
     237:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     23e:	66 90                	xchg   %ax,%ax
	  *out=0;
     240:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
	while(*in!=0)
     244:	ba ff ff ff ff       	mov    $0xffffffff,%edx
}
     249:	8d 65 f4             	lea    -0xc(%ebp),%esp
     24c:	5b                   	pop    %ebx
     24d:	89 d0                	mov    %edx,%eax
     24f:	5e                   	pop    %esi
     250:	5f                   	pop    %edi
     251:	5d                   	pop    %ebp
     252:	c3                   	ret    
     253:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     25a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000260 <arg_set>:
{
     260:	f3 0f 1e fb          	endbr32 
     264:	55                   	push   %ebp
     265:	89 e5                	mov    %esp,%ebp
     267:	57                   	push   %edi
     268:	56                   	push   %esi
     269:	53                   	push   %ebx
     26a:	83 ec 04             	sub    $0x4,%esp
     26d:	8b 7d 08             	mov    0x8(%ebp),%edi
	des[j]=src;
     270:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
     273:	8b 45 10             	mov    0x10(%ebp),%eax
	des[j]=src;
     276:	89 1f                	mov    %ebx,(%edi)
	for(i=0;i<len;i++)
     278:	85 c0                	test   %eax,%eax
     27a:	7e 54                	jle    2d0 <arg_set+0x70>
     27c:	83 c0 01             	add    $0x1,%eax
     27f:	8d 53 01             	lea    0x1(%ebx),%edx
     282:	b9 01 00 00 00       	mov    $0x1,%ecx
     287:	89 45 f0             	mov    %eax,-0x10(%ebp)
     28a:	89 c6                	mov    %eax,%esi
     28c:	01 de                	add    %ebx,%esi
	int j=0,i;
     28e:	31 db                	xor    %ebx,%ebx
		if(src[i]==0)
     290:	80 7a ff 00          	cmpb   $0x0,-0x1(%edx)
     294:	89 c8                	mov    %ecx,%eax
     296:	75 0b                	jne    2a3 <arg_set+0x43>
			des[++j]=&src[i+1];
     298:	89 14 8f             	mov    %edx,(%edi,%ecx,4)
     29b:	8d 43 02             	lea    0x2(%ebx),%eax
     29e:	89 cb                	mov    %ecx,%ebx
     2a0:	83 c1 01             	add    $0x1,%ecx
	for(i=0;i<len;i++)
     2a3:	83 c2 01             	add    $0x1,%edx
     2a6:	39 d6                	cmp    %edx,%esi
     2a8:	75 e6                	jne    290 <arg_set+0x30>
     2aa:	c1 e1 02             	shl    $0x2,%ecx
	des[j+1]=0;
     2ad:	c7 04 0f 00 00 00 00 	movl   $0x0,(%edi,%ecx,1)
	src[i+1]=0;
     2b4:	8b 5d f0             	mov    -0x10(%ebp),%ebx
     2b7:	8b 7d 0c             	mov    0xc(%ebp),%edi
     2ba:	c6 04 1f 00          	movb   $0x0,(%edi,%ebx,1)
}
     2be:	83 c4 04             	add    $0x4,%esp
     2c1:	5b                   	pop    %ebx
     2c2:	5e                   	pop    %esi
     2c3:	5f                   	pop    %edi
     2c4:	5d                   	pop    %ebp
     2c5:	c3                   	ret    
     2c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2cd:	8d 76 00             	lea    0x0(%esi),%esi
	for(i=0;i<len;i++)
     2d0:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
     2d7:	b8 01 00 00 00       	mov    $0x1,%eax
     2dc:	b9 04 00 00 00       	mov    $0x4,%ecx
     2e1:	eb ca                	jmp    2ad <arg_set+0x4d>
     2e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000002f0 <get_input>:
{	char input[MAX];
     2f0:	f3 0f 1e fb          	endbr32 
     2f4:	55                   	push   %ebp
     2f5:	89 e5                	mov    %esp,%ebp
     2f7:	56                   	push   %esi
     2f8:	53                   	push   %ebx
    memset(input,0,MAX);
     2f9:	8d 5d 94             	lea    -0x6c(%ebp),%ebx
{	char input[MAX];
     2fc:	83 ec 74             	sub    $0x74,%esp
     2ff:	8b 75 08             	mov    0x8(%ebp),%esi
    memset(input,0,MAX);
     302:	6a 64                	push   $0x64
     304:	6a 00                	push   $0x0
     306:	53                   	push   %ebx
     307:	e8 f4 09 00 00       	call   d00 <memset>
	gets(input, 100);
     30c:	58                   	pop    %eax
     30d:	5a                   	pop    %edx
     30e:	6a 64                	push   $0x64
     310:	53                   	push   %ebx
     311:	e8 4a 0a 00 00       	call   d60 <gets>
	int len=space_to_null(buf,input);
     316:	59                   	pop    %ecx
     317:	58                   	pop    %eax
     318:	53                   	push   %ebx
     319:	56                   	push   %esi
     31a:	e8 c1 fe ff ff       	call   1e0 <space_to_null>
	int size =arg_set(comm,buf,len);
     31f:	83 c4 0c             	add    $0xc,%esp
     322:	50                   	push   %eax
     323:	56                   	push   %esi
     324:	ff 75 0c             	pushl  0xc(%ebp)
     327:	e8 34 ff ff ff       	call   260 <arg_set>
}
     32c:	8d 65 f8             	lea    -0x8(%ebp),%esp
     32f:	5b                   	pop    %ebx
     330:	5e                   	pop    %esi
     331:	5d                   	pop    %ebp
     332:	c3                   	ret    
     333:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000340 <exe_cmdfile>:
	wait(&s);
	if(s!=0)return -1;
	return 0;
}
int exe_cmdfile(char * input)
{   
     340:	f3 0f 1e fb          	endbr32 
     344:	55                   	push   %ebp
     345:	89 e5                	mov    %esp,%ebp
     347:	57                   	push   %edi
     348:	56                   	push   %esi
      
     
	int n,count;
    char buf[1000];
	count=1000;
	n = read(f1, buf, sizeof(buf));
     349:	8d bd 00 fc ff ff    	lea    -0x400(%ebp),%edi
	{   
		temp_cmd[j]=buf[i];
		if(buf[i]=='\n')
		{   
			char b[MAX],*temp_comm[MAX];
			int len=space_to_null(b,temp_cmd);
     34f:	8d b5 0c fa ff ff    	lea    -0x5f4(%ebp),%esi
{   
     355:	53                   	push   %ebx
     356:	81 ec 64 06 00 00    	sub    $0x664,%esp
	f1 = open(input, 0) ;
     35c:	6a 00                	push   $0x0
     35e:	ff 75 08             	pushl  0x8(%ebp)
     361:	e8 7d 0b 00 00       	call   ee3 <open>
	n = read(f1, buf, sizeof(buf));
     366:	83 c4 0c             	add    $0xc,%esp
     369:	68 e8 03 00 00       	push   $0x3e8
	f1 = open(input, 0) ;
     36e:	89 c3                	mov    %eax,%ebx
	n = read(f1, buf, sizeof(buf));
     370:	57                   	push   %edi
     371:	50                   	push   %eax
     372:	e8 44 0b 00 00       	call   ebb <read>
    write(f1, buf, n);
     377:	83 c4 0c             	add    $0xc,%esp
     37a:	50                   	push   %eax
     37b:	57                   	push   %edi
     37c:	53                   	push   %ebx
     37d:	e8 41 0b 00 00       	call   ec3 <write>
	close(f1);
     382:	89 1c 24             	mov    %ebx,(%esp)
     385:	8d 5d e8             	lea    -0x18(%ebp),%ebx
     388:	e8 3e 0b 00 00       	call   ecb <close>
    while(count--)
     38d:	83 c4 10             	add    $0x10,%esp
	int j=0,i=0;
     390:	31 c9                	xor    %ecx,%ecx
     392:	eb 0e                	jmp    3a2 <exe_cmdfile+0x62>
     394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     398:	83 c7 01             	add    $0x1,%edi
     39b:	83 c1 01             	add    $0x1,%ecx
    while(count--)
     39e:	39 df                	cmp    %ebx,%edi
     3a0:	74 70                	je     412 <exe_cmdfile+0xd2>
		temp_cmd[j]=buf[i];
     3a2:	0f b6 07             	movzbl (%edi),%eax
     3a5:	88 84 0d a8 f9 ff ff 	mov    %al,-0x658(%ebp,%ecx,1)
		if(buf[i]=='\n')
     3ac:	3c 0a                	cmp    $0xa,%al
     3ae:	75 e8                	jne    398 <exe_cmdfile+0x58>
			int len=space_to_null(b,temp_cmd);
     3b0:	83 ec 08             	sub    $0x8,%esp
     3b3:	8d 85 a8 f9 ff ff    	lea    -0x658(%ebp),%eax
     3b9:	50                   	push   %eax
     3ba:	56                   	push   %esi
     3bb:	e8 20 fe ff ff       	call   1e0 <space_to_null>
	        int size =arg_set(temp_comm,b,len);
     3c0:	83 c4 0c             	add    $0xc,%esp
     3c3:	8d 8d 70 fa ff ff    	lea    -0x590(%ebp),%ecx
     3c9:	50                   	push   %eax
     3ca:	56                   	push   %esi
     3cb:	51                   	push   %ecx
     3cc:	e8 8f fe ff ff       	call   260 <arg_set>
			if(size<1)return-1;
     3d1:	83 c4 10             	add    $0x10,%esp
     3d4:	8d 8d 70 fa ff ff    	lea    -0x590(%ebp),%ecx
     3da:	85 c0                	test   %eax,%eax
     3dc:	7e 56                	jle    434 <exe_cmdfile+0xf4>
            struct arg temp;
			temp.arg_ptr=temp_comm;
			temp.size=size;
			int flag=parse_arg(&temp);
     3de:	83 ec 0c             	sub    $0xc,%esp
			temp.size=size;
     3e1:	89 85 a4 f9 ff ff    	mov    %eax,-0x65c(%ebp)
			int flag=parse_arg(&temp);
     3e7:	8d 85 a0 f9 ff ff    	lea    -0x660(%ebp),%eax
     3ed:	50                   	push   %eax
			temp.arg_ptr=temp_comm;
     3ee:	89 8d a0 f9 ff ff    	mov    %ecx,-0x660(%ebp)
			int flag=parse_arg(&temp);
     3f4:	e8 57 00 00 00       	call   450 <parse_arg>
			if(flag==2) {exit(0);}
     3f9:	83 c4 10             	add    $0x10,%esp
     3fc:	83 f8 02             	cmp    $0x2,%eax
     3ff:	74 40                	je     441 <exe_cmdfile+0x101>
	        if(flag==-1){printf(1,"Illegal command or arguments");}
     401:	83 f8 ff             	cmp    $0xffffffff,%eax
     404:	74 1a                	je     420 <exe_cmdfile+0xe0>
			j=0;
     406:	83 c7 01             	add    $0x1,%edi
     409:	b9 01 00 00 00       	mov    $0x1,%ecx
    while(count--)
     40e:	39 df                	cmp    %ebx,%edi
     410:	75 90                	jne    3a2 <exe_cmdfile+0x62>
		}
		j++;i++;
	}
	return 0;

}
     412:	8d 65 f4             	lea    -0xc(%ebp),%esp
	return 0;
     415:	31 c0                	xor    %eax,%eax
}
     417:	5b                   	pop    %ebx
     418:	5e                   	pop    %esi
     419:	5f                   	pop    %edi
     41a:	5d                   	pop    %ebp
     41b:	c3                   	ret    
     41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	        if(flag==-1){printf(1,"Illegal command or arguments");}
     420:	83 ec 08             	sub    $0x8,%esp
     423:	68 b9 13 00 00       	push   $0x13b9
     428:	6a 01                	push   $0x1
     42a:	e8 f1 0b 00 00       	call   1020 <printf>
     42f:	83 c4 10             	add    $0x10,%esp
     432:	eb d2                	jmp    406 <exe_cmdfile+0xc6>
}
     434:	8d 65 f4             	lea    -0xc(%ebp),%esp
			if(size<1)return-1;
     437:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     43c:	5b                   	pop    %ebx
     43d:	5e                   	pop    %esi
     43e:	5f                   	pop    %edi
     43f:	5d                   	pop    %ebp
     440:	c3                   	ret    
			if(flag==2) {exit(0);}
     441:	83 ec 0c             	sub    $0xc,%esp
     444:	6a 00                	push   $0x0
     446:	e8 58 0a 00 00       	call   ea3 <exit>
     44b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     44f:	90                   	nop

00000450 <parse_arg>:
{   
     450:	f3 0f 1e fb          	endbr32 
     454:	55                   	push   %ebp
     455:	89 e5                	mov    %esp,%ebp
     457:	57                   	push   %edi
     458:	56                   	push   %esi
     459:	53                   	push   %ebx
     45a:	83 ec 24             	sub    $0x24,%esp
	char ** p= cmd->arg_ptr;
     45d:	8b 45 08             	mov    0x8(%ebp),%eax
     460:	8b 30                	mov    (%eax),%esi
	if(strcmp(p[0],"executeCommands")==0)
     462:	68 d6 13 00 00       	push   $0x13d6
     467:	ff 36                	pushl  (%esi)
     469:	e8 02 08 00 00       	call   c70 <strcmp>
     46e:	83 c4 10             	add    $0x10,%esp
     471:	85 c0                	test   %eax,%eax
     473:	0f 84 87 00 00 00    	je     500 <parse_arg+0xb0>
	while(p[i]!=0)
     479:	8b 3e                	mov    (%esi),%edi
     47b:	89 f1                	mov    %esi,%ecx
	int i=0 , status;
     47d:	31 db                	xor    %ebx,%ebx
	while(p[i]!=0)
     47f:	89 f8                	mov    %edi,%eax
     481:	85 ff                	test   %edi,%edi
     483:	75 2b                	jne    4b0 <parse_arg+0x60>
     485:	e9 d4 01 00 00       	jmp    65e <parse_arg+0x20e>
     48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		if(p[i][0]=='&'&& p[i][1]=='&')
     490:	80 fa 26             	cmp    $0x26,%dl
     493:	75 0a                	jne    49f <parse_arg+0x4f>
     495:	80 78 01 26          	cmpb   $0x26,0x1(%eax)
     499:	0f 84 86 01 00 00    	je     625 <parse_arg+0x1d5>
	while(p[i]!=0)
     49f:	8b 41 04             	mov    0x4(%ecx),%eax
     4a2:	83 c1 04             	add    $0x4,%ecx
		i++;
     4a5:	83 c3 01             	add    $0x1,%ebx
	while(p[i]!=0)
     4a8:	85 c0                	test   %eax,%eax
     4aa:	0f 84 b0 00 00 00    	je     560 <parse_arg+0x110>
		if(*p[i]==';')
     4b0:	0f b6 10             	movzbl (%eax),%edx
     4b3:	80 fa 3b             	cmp    $0x3b,%dl
     4b6:	74 68                	je     520 <parse_arg+0xd0>
		if(p[i][0]=='|'&& p[i][1]=='|')
     4b8:	80 fa 7c             	cmp    $0x7c,%dl
     4bb:	75 d3                	jne    490 <parse_arg+0x40>
     4bd:	80 78 01 7c          	cmpb   $0x7c,0x1(%eax)
     4c1:	75 dc                	jne    49f <parse_arg+0x4f>
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     4c3:	8b 45 08             	mov    0x8(%ebp),%eax
			p[i]=0;
     4c6:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
			if(succ2_exe(&left,&right)<0)return-1;
     4cc:	83 ec 08             	sub    $0x8,%esp
			left.size=i;left.arg_ptr=p;
     4cf:	89 5d dc             	mov    %ebx,-0x24(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     4d2:	8b 40 04             	mov    0x4(%eax),%eax
			left.size=i;left.arg_ptr=p;
     4d5:	89 75 d8             	mov    %esi,-0x28(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     4d8:	29 d8                	sub    %ebx,%eax
     4da:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     4dd:	8d 44 9e 04          	lea    0x4(%esi,%ebx,4),%eax
     4e1:	89 45 e0             	mov    %eax,-0x20(%ebp)
			if(succ2_exe(&left,&right)<0)return-1;
     4e4:	8d 45 e0             	lea    -0x20(%ebp),%eax
     4e7:	50                   	push   %eax
     4e8:	8d 45 d8             	lea    -0x28(%ebp),%eax
     4eb:	50                   	push   %eax
     4ec:	e8 ef 05 00 00       	call   ae0 <succ2_exe>
     4f1:	83 c4 10             	add    $0x10,%esp
     4f4:	c1 f8 1f             	sar    $0x1f,%eax
     4f7:	eb 18                	jmp    511 <parse_arg+0xc1>
     4f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		if(exe_cmdfile(p[1])<0)return-1;
     500:	83 ec 0c             	sub    $0xc,%esp
     503:	ff 76 04             	pushl  0x4(%esi)
     506:	e8 35 fe ff ff       	call   340 <exe_cmdfile>
     50b:	83 c4 10             	add    $0x10,%esp
     50e:	c1 f8 1f             	sar    $0x1f,%eax
}
     511:	8d 65 f4             	lea    -0xc(%ebp),%esp
     514:	5b                   	pop    %ebx
     515:	5e                   	pop    %esi
     516:	5f                   	pop    %edi
     517:	5d                   	pop    %ebp
     518:	c3                   	ret    
     519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     520:	8b 45 08             	mov    0x8(%ebp),%eax
			p[i]=0;
     523:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
			if(par_exe(&left,&right)<0)return-1;
     529:	83 ec 08             	sub    $0x8,%esp
			left.size=i;left.arg_ptr=p;
     52c:	89 5d dc             	mov    %ebx,-0x24(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     52f:	8b 40 04             	mov    0x4(%eax),%eax
			left.size=i;left.arg_ptr=p;
     532:	89 75 d8             	mov    %esi,-0x28(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     535:	29 d8                	sub    %ebx,%eax
     537:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     53a:	8d 44 9e 04          	lea    0x4(%esi,%ebx,4),%eax
     53e:	89 45 e0             	mov    %eax,-0x20(%ebp)
			if(par_exe(&left,&right)<0)return-1;
     541:	8d 45 e0             	lea    -0x20(%ebp),%eax
     544:	50                   	push   %eax
     545:	8d 45 d8             	lea    -0x28(%ebp),%eax
     548:	50                   	push   %eax
     549:	e8 a2 02 00 00       	call   7f0 <par_exe>
     54e:	83 c4 10             	add    $0x10,%esp
}
     551:	8d 65 f4             	lea    -0xc(%ebp),%esp
     554:	5b                   	pop    %ebx
			if(par_exe(&left,&right)<0)return-1;
     555:	c1 f8 1f             	sar    $0x1f,%eax
}
     558:	5e                   	pop    %esi
     559:	5f                   	pop    %edi
     55a:	5d                   	pop    %ebp
     55b:	c3                   	ret    
     55c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     560:	89 f8                	mov    %edi,%eax
     562:	89 f2                	mov    %esi,%edx
     564:	31 c9                	xor    %ecx,%ecx
     566:	eb 15                	jmp    57d <parse_arg+0x12d>
     568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     56f:	90                   	nop
	while(p[i]!=0)
     570:	8b 42 04             	mov    0x4(%edx),%eax
     573:	83 c2 04             	add    $0x4,%edx
		i++;
     576:	83 c1 01             	add    $0x1,%ecx
	while(p[i]!=0)
     579:	85 c0                	test   %eax,%eax
     57b:	74 4b                	je     5c8 <parse_arg+0x178>
		if(p[i][0]=='|' && p[i][1]==0)
     57d:	80 38 7c             	cmpb   $0x7c,(%eax)
     580:	75 ee                	jne    570 <parse_arg+0x120>
     582:	80 78 01 00          	cmpb   $0x0,0x1(%eax)
     586:	75 e8                	jne    570 <parse_arg+0x120>
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     588:	8b 45 08             	mov    0x8(%ebp),%eax
			p[i]=0;
     58b:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
			if(pipe_exe(&left,&right)<0)return-1;
     591:	83 ec 08             	sub    $0x8,%esp
			left.size=i;left.arg_ptr=p;
     594:	89 4d dc             	mov    %ecx,-0x24(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     597:	8b 40 04             	mov    0x4(%eax),%eax
			left.size=i;left.arg_ptr=p;
     59a:	89 75 d8             	mov    %esi,-0x28(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     59d:	29 c8                	sub    %ecx,%eax
     59f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     5a2:	8d 44 8e 04          	lea    0x4(%esi,%ecx,4),%eax
     5a6:	89 45 e0             	mov    %eax,-0x20(%ebp)
			if(pipe_exe(&left,&right)<0)return-1;
     5a9:	8d 45 e0             	lea    -0x20(%ebp),%eax
     5ac:	50                   	push   %eax
     5ad:	8d 45 d8             	lea    -0x28(%ebp),%eax
     5b0:	50                   	push   %eax
     5b1:	e8 5a 01 00 00       	call   710 <pipe_exe>
     5b6:	83 c4 10             	add    $0x10,%esp
     5b9:	c1 f8 1f             	sar    $0x1f,%eax
     5bc:	e9 50 ff ff ff       	jmp    511 <parse_arg+0xc1>
     5c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5c8:	89 f8                	mov    %edi,%eax
     5ca:	89 f2                	mov    %esi,%edx
     5cc:	31 c9                	xor    %ecx,%ecx
     5ce:	eb 15                	jmp    5e5 <parse_arg+0x195>
		if(p[i][0]=='>')
     5d0:	3c 3e                	cmp    $0x3e,%al
     5d2:	0f 84 b4 00 00 00    	je     68c <parse_arg+0x23c>
	while(p[i]!=0)
     5d8:	8b 42 04             	mov    0x4(%edx),%eax
     5db:	83 c2 04             	add    $0x4,%edx
		i++;
     5de:	83 c1 01             	add    $0x1,%ecx
	while(p[i]!=0)
     5e1:	85 c0                	test   %eax,%eax
     5e3:	74 79                	je     65e <parse_arg+0x20e>
		if(p[i][0]=='<')
     5e5:	0f b6 00             	movzbl (%eax),%eax
     5e8:	3c 3c                	cmp    $0x3c,%al
     5ea:	75 e4                	jne    5d0 <parse_arg+0x180>
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     5ec:	8b 45 08             	mov    0x8(%ebp),%eax
			p[i]=0;
     5ef:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
			if(ioredir_exe(&left,&right)<0)return-1;
     5f5:	83 ec 08             	sub    $0x8,%esp
			left.size=i;left.arg_ptr=p;
     5f8:	89 4d dc             	mov    %ecx,-0x24(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     5fb:	8b 40 04             	mov    0x4(%eax),%eax
			left.size=i;left.arg_ptr=p;
     5fe:	89 75 d8             	mov    %esi,-0x28(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     601:	29 c8                	sub    %ecx,%eax
     603:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     606:	8d 44 8e 04          	lea    0x4(%esi,%ecx,4),%eax
     60a:	89 45 e0             	mov    %eax,-0x20(%ebp)
			if(ioredir_exe(&left,&right)<0)return-1;
     60d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     610:	50                   	push   %eax
     611:	8d 45 d8             	lea    -0x28(%ebp),%eax
     614:	50                   	push   %eax
     615:	e8 66 02 00 00       	call   880 <ioredir_exe>
     61a:	83 c4 10             	add    $0x10,%esp
     61d:	c1 f8 1f             	sar    $0x1f,%eax
     620:	e9 ec fe ff ff       	jmp    511 <parse_arg+0xc1>
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     625:	8b 45 08             	mov    0x8(%ebp),%eax
			p[i]=0;
     628:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
			if(succ1_exe(&left,&right)<0)return-1;
     62e:	83 ec 08             	sub    $0x8,%esp
			left.size=i;left.arg_ptr=p;
     631:	89 5d dc             	mov    %ebx,-0x24(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     634:	8b 40 04             	mov    0x4(%eax),%eax
			left.size=i;left.arg_ptr=p;
     637:	89 75 d8             	mov    %esi,-0x28(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     63a:	29 d8                	sub    %ebx,%eax
     63c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     63f:	8d 44 9e 04          	lea    0x4(%esi,%ebx,4),%eax
     643:	89 45 e0             	mov    %eax,-0x20(%ebp)
			if(succ1_exe(&left,&right)<0)return-1;
     646:	8d 45 e0             	lea    -0x20(%ebp),%eax
     649:	50                   	push   %eax
     64a:	8d 45 d8             	lea    -0x28(%ebp),%eax
     64d:	50                   	push   %eax
     64e:	e8 3d 05 00 00       	call   b90 <succ1_exe>
     653:	83 c4 10             	add    $0x10,%esp
     656:	c1 f8 1f             	sar    $0x1f,%eax
     659:	e9 b3 fe ff ff       	jmp    511 <parse_arg+0xc1>
	if(valid(p[0])==1)
     65e:	83 ec 0c             	sub    $0xc,%esp
     661:	57                   	push   %edi
     662:	e8 99 fa ff ff       	call   100 <valid>
     667:	83 c4 10             	add    $0x10,%esp
     66a:	83 f8 01             	cmp    $0x1,%eax
     66d:	74 56                	je     6c5 <parse_arg+0x275>
	else if(valid(p[0])==2)
     66f:	83 ec 0c             	sub    $0xc,%esp
     672:	ff 36                	pushl  (%esi)
     674:	e8 87 fa ff ff       	call   100 <valid>
     679:	83 c4 10             	add    $0x10,%esp
		return -1;
     67c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
     681:	83 f8 02             	cmp    $0x2,%eax
     684:	0f 45 c2             	cmovne %edx,%eax
     687:	e9 85 fe ff ff       	jmp    511 <parse_arg+0xc1>
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     68c:	8b 45 08             	mov    0x8(%ebp),%eax
			p[i]=0;
     68f:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
			if(ioredir2_exe(&left,&right)<0)return-1;
     695:	83 ec 08             	sub    $0x8,%esp
			left.size=i;left.arg_ptr=p;
     698:	89 4d dc             	mov    %ecx,-0x24(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     69b:	8b 40 04             	mov    0x4(%eax),%eax
			left.size=i;left.arg_ptr=p;
     69e:	89 75 d8             	mov    %esi,-0x28(%ebp)
			right.size=(cmd->size)-i;right.arg_ptr=p+i+1;
     6a1:	29 c8                	sub    %ecx,%eax
     6a3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     6a6:	8d 44 8e 04          	lea    0x4(%esi,%ecx,4),%eax
     6aa:	89 45 e0             	mov    %eax,-0x20(%ebp)
			if(ioredir2_exe(&left,&right)<0)return-1;
     6ad:	8d 45 e0             	lea    -0x20(%ebp),%eax
     6b0:	50                   	push   %eax
     6b1:	8d 45 d8             	lea    -0x28(%ebp),%eax
     6b4:	50                   	push   %eax
     6b5:	e8 f6 02 00 00       	call   9b0 <ioredir2_exe>
     6ba:	83 c4 10             	add    $0x10,%esp
     6bd:	c1 f8 1f             	sar    $0x1f,%eax
     6c0:	e9 4c fe ff ff       	jmp    511 <parse_arg+0xc1>
		if(fork()==0)
     6c5:	e8 d1 07 00 00       	call   e9b <fork>
     6ca:	85 c0                	test   %eax,%eax
     6cc:	75 12                	jne    6e0 <parse_arg+0x290>
	 	{ if(exec(p[0],p)<0)
     6ce:	83 ec 08             	sub    $0x8,%esp
     6d1:	56                   	push   %esi
     6d2:	ff 36                	pushl  (%esi)
     6d4:	e8 02 08 00 00       	call   edb <exec>
     6d9:	83 c4 10             	add    $0x10,%esp
     6dc:	85 c0                	test   %eax,%eax
     6de:	78 17                	js     6f7 <parse_arg+0x2a7>
	    wait(&status);
     6e0:	83 ec 0c             	sub    $0xc,%esp
     6e3:	8d 45 e0             	lea    -0x20(%ebp),%eax
     6e6:	50                   	push   %eax
     6e7:	e8 bf 07 00 00       	call   eab <wait>
		return status;
     6ec:	8b 45 e0             	mov    -0x20(%ebp),%eax
     6ef:	83 c4 10             	add    $0x10,%esp
     6f2:	e9 1a fe ff ff       	jmp    511 <parse_arg+0xc1>
		 exit(-1);
     6f7:	83 ec 0c             	sub    $0xc,%esp
     6fa:	6a ff                	push   $0xffffffff
     6fc:	e8 a2 07 00 00       	call   ea3 <exit>
     701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     708:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     70f:	90                   	nop

00000710 <pipe_exe>:
{
     710:	f3 0f 1e fb          	endbr32 
     714:	55                   	push   %ebp
     715:	89 e5                	mov    %esp,%ebp
     717:	83 ec 24             	sub    $0x24,%esp
    pipe(fd);     
     71a:	8d 45 f0             	lea    -0x10(%ebp),%eax
     71d:	50                   	push   %eax
     71e:	e8 90 07 00 00       	call   eb3 <pipe>
    if(fork()==0)                                  
     723:	e8 73 07 00 00       	call   e9b <fork>
     728:	83 c4 10             	add    $0x10,%esp
     72b:	85 c0                	test   %eax,%eax
     72d:	74 4b                	je     77a <pipe_exe+0x6a>
   	if(fork()==0)                              
     72f:	e8 67 07 00 00       	call   e9b <fork>
     734:	85 c0                	test   %eax,%eax
     736:	74 7c                	je     7b4 <pipe_exe+0xa4>
    close(fd[0]);                   
     738:	83 ec 0c             	sub    $0xc,%esp
     73b:	ff 75 f0             	pushl  -0x10(%ebp)
     73e:	e8 88 07 00 00       	call   ecb <close>
    close(fd[1]);                    
     743:	58                   	pop    %eax
     744:	ff 75 f4             	pushl  -0xc(%ebp)
     747:	e8 7f 07 00 00       	call   ecb <close>
    wait(&s1); wait(&s2);
     74c:	8d 45 e8             	lea    -0x18(%ebp),%eax
     74f:	89 04 24             	mov    %eax,(%esp)
     752:	e8 54 07 00 00       	call   eab <wait>
     757:	8d 45 ec             	lea    -0x14(%ebp),%eax
     75a:	89 04 24             	mov    %eax,(%esp)
     75d:	e8 49 07 00 00       	call   eab <wait>
	if(s1==-1||s2==-1)return -1;
     762:	8b 45 e8             	mov    -0x18(%ebp),%eax
     765:	83 c4 10             	add    $0x10,%esp
     768:	83 f8 ff             	cmp    $0xffffffff,%eax
     76b:	74 0b                	je     778 <pipe_exe+0x68>
     76d:	31 c0                	xor    %eax,%eax
     76f:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
     773:	0f 94 c0             	sete   %al
     776:	f7 d8                	neg    %eax
}
     778:	c9                   	leave  
     779:	c3                   	ret    
       	close(1);
     77a:	83 ec 0c             	sub    $0xc,%esp
     77d:	6a 01                	push   $0x1
     77f:	e8 47 07 00 00       	call   ecb <close>
   		dup(fd[1]);
     784:	58                   	pop    %eax
     785:	ff 75 f4             	pushl  -0xc(%ebp)
     788:	e8 8e 07 00 00       	call   f1b <dup>
   		close(fd[0]);
     78d:	58                   	pop    %eax
     78e:	ff 75 f0             	pushl  -0x10(%ebp)
     791:	e8 35 07 00 00       	call   ecb <close>
   		close(fd[1]);
     796:	58                   	pop    %eax
     797:	ff 75 f4             	pushl  -0xc(%ebp)
     79a:	e8 2c 07 00 00       	call   ecb <close>
	  	parse_arg(left);
     79f:	5a                   	pop    %edx
     7a0:	ff 75 08             	pushl  0x8(%ebp)
     7a3:	e8 a8 fc ff ff       	call   450 <parse_arg>
       	exit(0);
     7a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7af:	e8 ef 06 00 00       	call   ea3 <exit>
		close(0);
     7b4:	83 ec 0c             	sub    $0xc,%esp
     7b7:	6a 00                	push   $0x0
     7b9:	e8 0d 07 00 00       	call   ecb <close>
   		dup(fd[0]);
     7be:	5a                   	pop    %edx
     7bf:	ff 75 f0             	pushl  -0x10(%ebp)
     7c2:	e8 54 07 00 00       	call   f1b <dup>
   		close(fd[0]);
     7c7:	59                   	pop    %ecx
     7c8:	ff 75 f0             	pushl  -0x10(%ebp)
     7cb:	e8 fb 06 00 00       	call   ecb <close>
   		close(fd[1]); 
     7d0:	58                   	pop    %eax
     7d1:	ff 75 f4             	pushl  -0xc(%ebp)
     7d4:	e8 f2 06 00 00       	call   ecb <close>
       	parse_arg(right);
     7d9:	58                   	pop    %eax
     7da:	ff 75 0c             	pushl  0xc(%ebp)
     7dd:	e8 6e fc ff ff       	call   450 <parse_arg>
        exit(0);
     7e2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7e9:	e8 b5 06 00 00       	call   ea3 <exit>
     7ee:	66 90                	xchg   %ax,%ax

000007f0 <par_exe>:
{
     7f0:	f3 0f 1e fb          	endbr32 
     7f4:	55                   	push   %ebp
     7f5:	89 e5                	mov    %esp,%ebp
     7f7:	83 ec 18             	sub    $0x18,%esp
	 pid1=fork();
     7fa:	e8 9c 06 00 00       	call   e9b <fork>
	if(pid1<0)return-1;
     7ff:	85 c0                	test   %eax,%eax
     801:	78 3d                	js     840 <par_exe+0x50>
	if(pid1==0)
     803:	74 59                	je     85e <par_exe+0x6e>
	pid2=fork();
     805:	e8 91 06 00 00       	call   e9b <fork>
	if(pid2<0)return-1;
     80a:	85 c0                	test   %eax,%eax
     80c:	78 32                	js     840 <par_exe+0x50>
	if(pid2==0)
     80e:	74 37                	je     847 <par_exe+0x57>
	 wait(&s1);
     810:	83 ec 0c             	sub    $0xc,%esp
     813:	8d 45 f0             	lea    -0x10(%ebp),%eax
     816:	50                   	push   %eax
     817:	e8 8f 06 00 00       	call   eab <wait>
	 wait(&s2);
     81c:	8d 45 f4             	lea    -0xc(%ebp),%eax
     81f:	89 04 24             	mov    %eax,(%esp)
     822:	e8 84 06 00 00       	call   eab <wait>
	 if(s1==-1||s2==-1)return -1;
     827:	83 c4 10             	add    $0x10,%esp
     82a:	83 7d f0 ff          	cmpl   $0xffffffff,-0x10(%ebp)
     82e:	74 10                	je     840 <par_exe+0x50>
     830:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
     834:	74 0a                	je     840 <par_exe+0x50>
}
     836:	c9                   	leave  
	 return 0;
     837:	31 c0                	xor    %eax,%eax
}
     839:	c3                   	ret    
     83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     840:	c9                   	leave  
	 if(s1==-1||s2==-1)return -1;
     841:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     846:	c3                   	ret    
		 parse_arg(right);
     847:	83 ec 0c             	sub    $0xc,%esp
     84a:	ff 75 0c             	pushl  0xc(%ebp)
     84d:	e8 fe fb ff ff       	call   450 <parse_arg>
		 exit(0);
     852:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     859:	e8 45 06 00 00       	call   ea3 <exit>
		parse_arg(left); exit(0);
     85e:	83 ec 0c             	sub    $0xc,%esp
     861:	ff 75 08             	pushl  0x8(%ebp)
     864:	e8 e7 fb ff ff       	call   450 <parse_arg>
     869:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     870:	e8 2e 06 00 00       	call   ea3 <exit>
     875:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000880 <ioredir_exe>:
{   
     880:	f3 0f 1e fb          	endbr32 
     884:	55                   	push   %ebp
     885:	89 e5                	mov    %esp,%ebp
     887:	57                   	push   %edi
     888:	56                   	push   %esi
     889:	53                   	push   %ebx
     88a:	83 ec 2c             	sub    $0x2c,%esp
	char ** p = right->arg_ptr;
     88d:	8b 45 0c             	mov    0xc(%ebp),%eax
     890:	8b 38                	mov    (%eax),%edi
	while(p[i]!=0)
     892:	8b 0f                	mov    (%edi),%ecx
     894:	85 c9                	test   %ecx,%ecx
     896:	74 22                	je     8ba <ioredir_exe+0x3a>
	int out=0,i=0,s;
     898:	31 c0                	xor    %eax,%eax
     89a:	eb 10                	jmp    8ac <ioredir_exe+0x2c>
     89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		i++;
     8a0:	8d 40 01             	lea    0x1(%eax),%eax
	while(p[i]!=0)
     8a3:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
     8a6:	89 c3                	mov    %eax,%ebx
     8a8:	85 c9                	test   %ecx,%ecx
     8aa:	74 14                	je     8c0 <ioredir_exe+0x40>
		if(*p[i]=='>'){out=1;break;}
     8ac:	80 39 3e             	cmpb   $0x3e,(%ecx)
     8af:	89 c3                	mov    %eax,%ebx
     8b1:	75 ed                	jne    8a0 <ioredir_exe+0x20>
     8b3:	be 01 00 00 00       	mov    $0x1,%esi
     8b8:	eb 08                	jmp    8c2 <ioredir_exe+0x42>
	while(p[i]!=0)
     8ba:	31 db                	xor    %ebx,%ebx
     8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	int out=0,i=0,s;
     8c0:	31 f6                	xor    %esi,%esi
	pid=fork();
     8c2:	e8 d4 05 00 00       	call   e9b <fork>
	if(pid<0)return-1;
     8c7:	85 c0                	test   %eax,%eax
     8c9:	0f 88 d3 00 00 00    	js     9a2 <ioredir_exe+0x122>
	if(pid==0)
     8cf:	75 5f                	jne    930 <ioredir_exe+0xb0>
		int f1= open(p[i-1], O_RDONLY);
     8d1:	83 ec 08             	sub    $0x8,%esp
     8d4:	81 c3 ff ff ff 3f    	add    $0x3fffffff,%ebx
     8da:	6a 00                	push   $0x0
     8dc:	8d 04 9d 00 00 00 00 	lea    0x0(,%ebx,4),%eax
     8e3:	ff 34 9f             	pushl  (%edi,%ebx,4)
     8e6:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     8e9:	e8 f5 05 00 00       	call   ee3 <open>
        close(0);
     8ee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
		int f1= open(p[i-1], O_RDONLY);
     8f5:	89 c3                	mov    %eax,%ebx
        close(0);
     8f7:	e8 cf 05 00 00       	call   ecb <close>
        dup(f1);
     8fc:	89 1c 24             	mov    %ebx,(%esp)
     8ff:	e8 17 06 00 00       	call   f1b <dup>
        close(f1);
     904:	89 1c 24             	mov    %ebx,(%esp)
     907:	e8 bf 05 00 00       	call   ecb <close>
		if(out==1)
     90c:	83 c4 10             	add    $0x10,%esp
     90f:	83 fe 01             	cmp    $0x1,%esi
     912:	74 54                	je     968 <ioredir_exe+0xe8>
		if (parse_arg(left)<0)exit(-1);
     914:	83 ec 0c             	sub    $0xc,%esp
     917:	ff 75 08             	pushl  0x8(%ebp)
     91a:	e8 31 fb ff ff       	call   450 <parse_arg>
     91f:	83 c4 10             	add    $0x10,%esp
     922:	85 c0                	test   %eax,%eax
     924:	78 32                	js     958 <ioredir_exe+0xd8>
		exit(0);
     926:	83 ec 0c             	sub    $0xc,%esp
     929:	6a 00                	push   $0x0
     92b:	e8 73 05 00 00       	call   ea3 <exit>
	wait(&s);
     930:	83 ec 0c             	sub    $0xc,%esp
     933:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     936:	50                   	push   %eax
     937:	e8 6f 05 00 00       	call   eab <wait>
	if(s!=0)return -1;
     93c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     93f:	31 c0                	xor    %eax,%eax
     941:	83 c4 10             	add    $0x10,%esp
     944:	85 d2                	test   %edx,%edx
     946:	0f 95 c0             	setne  %al
     949:	f7 d8                	neg    %eax
} 
     94b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     94e:	5b                   	pop    %ebx
     94f:	5e                   	pop    %esi
     950:	5f                   	pop    %edi
     951:	5d                   	pop    %ebp
     952:	c3                   	ret    
     953:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     957:	90                   	nop
		if (parse_arg(left)<0)exit(-1);
     958:	83 ec 0c             	sub    $0xc,%esp
     95b:	6a ff                	push   $0xffffffff
     95d:	e8 41 05 00 00       	call   ea3 <exit>
     962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		int f2 = open(p[i+1], O_RDWR|O_CREATE) ;
     968:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     96b:	83 ec 08             	sub    $0x8,%esp
     96e:	68 02 02 00 00       	push   $0x202
     973:	ff 74 07 08          	pushl  0x8(%edi,%eax,1)
     977:	e8 67 05 00 00       	call   ee3 <open>
        close(1);
     97c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
		int f2 = open(p[i+1], O_RDWR|O_CREATE) ;
     983:	89 c3                	mov    %eax,%ebx
        close(1);
     985:	e8 41 05 00 00       	call   ecb <close>
        dup(f2);
     98a:	89 1c 24             	mov    %ebx,(%esp)
     98d:	e8 89 05 00 00       	call   f1b <dup>
        close(f2);
     992:	89 1c 24             	mov    %ebx,(%esp)
     995:	e8 31 05 00 00       	call   ecb <close>
     99a:	83 c4 10             	add    $0x10,%esp
     99d:	e9 72 ff ff ff       	jmp    914 <ioredir_exe+0x94>
	if(pid<0)return-1;
     9a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     9a7:	eb a2                	jmp    94b <ioredir_exe+0xcb>
     9a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000009b0 <ioredir2_exe>:
{
     9b0:	f3 0f 1e fb          	endbr32 
     9b4:	55                   	push   %ebp
     9b5:	89 e5                	mov    %esp,%ebp
     9b7:	57                   	push   %edi
     9b8:	56                   	push   %esi
     9b9:	53                   	push   %ebx
     9ba:	83 ec 2c             	sub    $0x2c,%esp
	char ** p = right->arg_ptr;
     9bd:	8b 45 0c             	mov    0xc(%ebp),%eax
     9c0:	8b 38                	mov    (%eax),%edi
	while(p[i]!=0)
     9c2:	8b 0f                	mov    (%edi),%ecx
     9c4:	85 c9                	test   %ecx,%ecx
     9c6:	74 22                	je     9ea <ioredir2_exe+0x3a>
	int in=0,i=0,s;
     9c8:	31 c0                	xor    %eax,%eax
     9ca:	eb 10                	jmp    9dc <ioredir2_exe+0x2c>
     9cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		i++;
     9d0:	8d 40 01             	lea    0x1(%eax),%eax
	while(p[i]!=0)
     9d3:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
     9d6:	89 c3                	mov    %eax,%ebx
     9d8:	85 c9                	test   %ecx,%ecx
     9da:	74 14                	je     9f0 <ioredir2_exe+0x40>
		if(*p[i]=='<'){in=1;break;}
     9dc:	80 39 3c             	cmpb   $0x3c,(%ecx)
     9df:	89 c3                	mov    %eax,%ebx
     9e1:	75 ed                	jne    9d0 <ioredir2_exe+0x20>
     9e3:	be 01 00 00 00       	mov    $0x1,%esi
     9e8:	eb 08                	jmp    9f2 <ioredir2_exe+0x42>
	while(p[i]!=0)
     9ea:	31 db                	xor    %ebx,%ebx
     9ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	int in=0,i=0,s;
     9f0:	31 f6                	xor    %esi,%esi
	pid=fork();
     9f2:	e8 a4 04 00 00       	call   e9b <fork>
	if(pid<0)return-1;
     9f7:	85 c0                	test   %eax,%eax
     9f9:	0f 88 d8 00 00 00    	js     ad7 <ioredir2_exe+0x127>
	if(pid==0)
     9ff:	75 67                	jne    a68 <ioredir2_exe+0xb8>
		int f2 = open(p[i-1], O_RDWR|O_CREATE) ;
     a01:	83 ec 08             	sub    $0x8,%esp
     a04:	81 c3 ff ff ff 3f    	add    $0x3fffffff,%ebx
     a0a:	68 02 02 00 00       	push   $0x202
     a0f:	8d 04 9d 00 00 00 00 	lea    0x0(,%ebx,4),%eax
     a16:	ff 34 9f             	pushl  (%edi,%ebx,4)
     a19:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     a1c:	e8 c2 04 00 00       	call   ee3 <open>
        close(1);
     a21:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
		int f2 = open(p[i-1], O_RDWR|O_CREATE) ;
     a28:	89 c3                	mov    %eax,%ebx
        close(1);
     a2a:	e8 9c 04 00 00       	call   ecb <close>
        dup(f2);
     a2f:	89 1c 24             	mov    %ebx,(%esp)
     a32:	e8 e4 04 00 00       	call   f1b <dup>
        close(f2);
     a37:	89 1c 24             	mov    %ebx,(%esp)
     a3a:	e8 8c 04 00 00       	call   ecb <close>
		if(in==1)
     a3f:	83 c4 10             	add    $0x10,%esp
     a42:	83 fe 01             	cmp    $0x1,%esi
     a45:	74 59                	je     aa0 <ioredir2_exe+0xf0>
		if(parse_arg(left)<0)exit(-1);
     a47:	83 ec 0c             	sub    $0xc,%esp
     a4a:	ff 75 08             	pushl  0x8(%ebp)
     a4d:	e8 fe f9 ff ff       	call   450 <parse_arg>
     a52:	83 c4 10             	add    $0x10,%esp
     a55:	85 c0                	test   %eax,%eax
     a57:	78 37                	js     a90 <ioredir2_exe+0xe0>
		exit(0);
     a59:	83 ec 0c             	sub    $0xc,%esp
     a5c:	6a 00                	push   $0x0
     a5e:	e8 40 04 00 00       	call   ea3 <exit>
     a63:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     a67:	90                   	nop
	wait(&s);
     a68:	83 ec 0c             	sub    $0xc,%esp
     a6b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     a6e:	50                   	push   %eax
     a6f:	e8 37 04 00 00       	call   eab <wait>
	if(s!=0)return -1;
     a74:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     a77:	31 c0                	xor    %eax,%eax
     a79:	83 c4 10             	add    $0x10,%esp
     a7c:	85 d2                	test   %edx,%edx
     a7e:	0f 95 c0             	setne  %al
     a81:	f7 d8                	neg    %eax
}
     a83:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a86:	5b                   	pop    %ebx
     a87:	5e                   	pop    %esi
     a88:	5f                   	pop    %edi
     a89:	5d                   	pop    %ebp
     a8a:	c3                   	ret    
     a8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     a8f:	90                   	nop
		if(parse_arg(left)<0)exit(-1);
     a90:	83 ec 0c             	sub    $0xc,%esp
     a93:	6a ff                	push   $0xffffffff
     a95:	e8 09 04 00 00       	call   ea3 <exit>
     a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		int f1= open(p[i+1], O_RDONLY);
     aa0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     aa3:	83 ec 08             	sub    $0x8,%esp
     aa6:	6a 00                	push   $0x0
     aa8:	ff 74 07 08          	pushl  0x8(%edi,%eax,1)
     aac:	e8 32 04 00 00       	call   ee3 <open>
        close(0);
     ab1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
		int f1= open(p[i+1], O_RDONLY);
     ab8:	89 c3                	mov    %eax,%ebx
        close(0);
     aba:	e8 0c 04 00 00       	call   ecb <close>
        dup(f1);
     abf:	89 1c 24             	mov    %ebx,(%esp)
     ac2:	e8 54 04 00 00       	call   f1b <dup>
        close(f1);
     ac7:	89 1c 24             	mov    %ebx,(%esp)
     aca:	e8 fc 03 00 00       	call   ecb <close>
     acf:	83 c4 10             	add    $0x10,%esp
     ad2:	e9 70 ff ff ff       	jmp    a47 <ioredir2_exe+0x97>
	if(pid<0)return-1;
     ad7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     adc:	eb a5                	jmp    a83 <ioredir2_exe+0xd3>
     ade:	66 90                	xchg   %ax,%ax

00000ae0 <succ2_exe>:
{
     ae0:	f3 0f 1e fb          	endbr32 
     ae4:	55                   	push   %ebp
     ae5:	89 e5                	mov    %esp,%ebp
     ae7:	83 ec 18             	sub    $0x18,%esp
	pid1=fork();
     aea:	e8 ac 03 00 00       	call   e9b <fork>
	if(pid1<0)return-1;
     aef:	85 c0                	test   %eax,%eax
     af1:	0f 88 89 00 00 00    	js     b80 <succ2_exe+0xa0>
	if(pid1==0)
     af7:	75 27                	jne    b20 <succ2_exe+0x40>
	    pid2=fork();
     af9:	e8 9d 03 00 00       	call   e9b <fork>
	    if(pid2<0)return-1;
     afe:	85 c0                	test   %eax,%eax
     b00:	78 7e                	js     b80 <succ2_exe+0xa0>
	    if(pid2==0)
     b02:	75 3c                	jne    b40 <succ2_exe+0x60>
           if(parse_arg(left)<0)exit(-1);
     b04:	83 ec 0c             	sub    $0xc,%esp
     b07:	ff 75 08             	pushl  0x8(%ebp)
     b0a:	e8 41 f9 ff ff       	call   450 <parse_arg>
     b0f:	83 c4 10             	add    $0x10,%esp
     b12:	85 c0                	test   %eax,%eax
     b14:	78 5a                	js     b70 <succ2_exe+0x90>
           exit(0); 
     b16:	83 ec 0c             	sub    $0xc,%esp
     b19:	6a 00                	push   $0x0
     b1b:	e8 83 03 00 00       	call   ea3 <exit>
	wait(&s);
     b20:	83 ec 0c             	sub    $0xc,%esp
     b23:	8d 45 f4             	lea    -0xc(%ebp),%eax
     b26:	50                   	push   %eax
     b27:	e8 7f 03 00 00       	call   eab <wait>
	if(s==-1)return -1;
     b2c:	83 c4 10             	add    $0x10,%esp
     b2f:	31 c0                	xor    %eax,%eax
     b31:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
} 
     b35:	c9                   	leave  
	if(s==-1)return -1;
     b36:	0f 94 c0             	sete   %al
     b39:	f7 d8                	neg    %eax
} 
     b3b:	c3                   	ret    
     b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        wait(&status);
     b40:	83 ec 0c             	sub    $0xc,%esp
     b43:	8d 45 f4             	lea    -0xc(%ebp),%eax
     b46:	50                   	push   %eax
     b47:	e8 5f 03 00 00       	call   eab <wait>
        if(status==0)exit(0);
     b4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
     b4f:	83 c4 10             	add    $0x10,%esp
     b52:	85 c0                	test   %eax,%eax
     b54:	74 c0                	je     b16 <succ2_exe+0x36>
		 parse_arg(right);
     b56:	83 ec 0c             	sub    $0xc,%esp
     b59:	ff 75 0c             	pushl  0xc(%ebp)
     b5c:	e8 ef f8 ff ff       	call   450 <parse_arg>
		 exit(0);
     b61:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b68:	e8 36 03 00 00       	call   ea3 <exit>
     b6d:	8d 76 00             	lea    0x0(%esi),%esi
           if(parse_arg(left)<0)exit(-1);
     b70:	83 ec 0c             	sub    $0xc,%esp
     b73:	6a ff                	push   $0xffffffff
     b75:	e8 29 03 00 00       	call   ea3 <exit>
     b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
} 
     b80:	c9                   	leave  
	if(pid1<0)return-1;
     b81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
} 
     b86:	c3                   	ret    
     b87:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b8e:	66 90                	xchg   %ax,%ax

00000b90 <succ1_exe>:
{   
     b90:	f3 0f 1e fb          	endbr32 
     b94:	55                   	push   %ebp
     b95:	89 e5                	mov    %esp,%ebp
     b97:	83 ec 18             	sub    $0x18,%esp
	pid1=fork();
     b9a:	e8 fc 02 00 00       	call   e9b <fork>
	if(pid1<0)return-1;
     b9f:	85 c0                	test   %eax,%eax
     ba1:	0f 88 89 00 00 00    	js     c30 <succ1_exe+0xa0>
	if(pid1==0)
     ba7:	75 27                	jne    bd0 <succ1_exe+0x40>
		pid2=fork();
     ba9:	e8 ed 02 00 00       	call   e9b <fork>
		if(pid2<0)return-1;
     bae:	85 c0                	test   %eax,%eax
     bb0:	78 7e                	js     c30 <succ1_exe+0xa0>
		if(pid2==0)
     bb2:	75 3c                	jne    bf0 <succ1_exe+0x60>
           if(parse_arg(left)<0)exit(-1);
     bb4:	83 ec 0c             	sub    $0xc,%esp
     bb7:	ff 75 08             	pushl  0x8(%ebp)
     bba:	e8 91 f8 ff ff       	call   450 <parse_arg>
     bbf:	83 c4 10             	add    $0x10,%esp
     bc2:	85 c0                	test   %eax,%eax
     bc4:	78 5a                	js     c20 <succ1_exe+0x90>
           exit(0); 
     bc6:	83 ec 0c             	sub    $0xc,%esp
     bc9:	6a 00                	push   $0x0
     bcb:	e8 d3 02 00 00       	call   ea3 <exit>
	wait(&s1);
     bd0:	83 ec 0c             	sub    $0xc,%esp
     bd3:	8d 45 f4             	lea    -0xc(%ebp),%eax
     bd6:	50                   	push   %eax
     bd7:	e8 cf 02 00 00       	call   eab <wait>
	if(s1==-1)return -1;
     bdc:	83 c4 10             	add    $0x10,%esp
     bdf:	31 c0                	xor    %eax,%eax
     be1:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
} 
     be5:	c9                   	leave  
	if(s1==-1)return -1;
     be6:	0f 94 c0             	sete   %al
     be9:	f7 d8                	neg    %eax
} 
     beb:	c3                   	ret    
     bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        wait(&status);
     bf0:	83 ec 0c             	sub    $0xc,%esp
     bf3:	8d 45 f4             	lea    -0xc(%ebp),%eax
     bf6:	50                   	push   %eax
     bf7:	e8 af 02 00 00       	call   eab <wait>
        if(status!=0)exit(0);
     bfc:	8b 45 f4             	mov    -0xc(%ebp),%eax
     bff:	83 c4 10             	add    $0x10,%esp
     c02:	85 c0                	test   %eax,%eax
     c04:	75 c0                	jne    bc6 <succ1_exe+0x36>
		 parse_arg(right);
     c06:	83 ec 0c             	sub    $0xc,%esp
     c09:	ff 75 0c             	pushl  0xc(%ebp)
     c0c:	e8 3f f8 ff ff       	call   450 <parse_arg>
		 exit(0);
     c11:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c18:	e8 86 02 00 00       	call   ea3 <exit>
     c1d:	8d 76 00             	lea    0x0(%esi),%esi
           if(parse_arg(left)<0)exit(-1);
     c20:	83 ec 0c             	sub    $0xc,%esp
     c23:	6a ff                	push   $0xffffffff
     c25:	e8 79 02 00 00       	call   ea3 <exit>
     c2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
} 
     c30:	c9                   	leave  
	if(pid1<0)return-1;
     c31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
} 
     c36:	c3                   	ret    
     c37:	66 90                	xchg   %ax,%ax
     c39:	66 90                	xchg   %ax,%ax
     c3b:	66 90                	xchg   %ax,%ax
     c3d:	66 90                	xchg   %ax,%ax
     c3f:	90                   	nop

00000c40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     c40:	f3 0f 1e fb          	endbr32 
     c44:	55                   	push   %ebp
     c45:	89 e5                	mov    %esp,%ebp
     c47:	53                   	push   %ebx
     c48:	8b 5d 08             	mov    0x8(%ebp),%ebx
     c4b:	8b 55 0c             	mov    0xc(%ebp),%edx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c4e:	89 d8                	mov    %ebx,%eax
     c50:	0f b6 0a             	movzbl (%edx),%ecx
     c53:	83 c2 01             	add    $0x1,%edx
     c56:	83 c0 01             	add    $0x1,%eax
     c59:	88 48 ff             	mov    %cl,-0x1(%eax)
     c5c:	84 c9                	test   %cl,%cl
     c5e:	75 f0                	jne    c50 <strcpy+0x10>
    ;
  s++;
  *s=0;
     c60:	c6 40 01 00          	movb   $0x0,0x1(%eax)
  return os;
}
     c64:	89 d8                	mov    %ebx,%eax
     c66:	5b                   	pop    %ebx
     c67:	5d                   	pop    %ebp
     c68:	c3                   	ret    
     c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000c70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c70:	f3 0f 1e fb          	endbr32 
     c74:	55                   	push   %ebp
     c75:	89 e5                	mov    %esp,%ebp
     c77:	53                   	push   %ebx
     c78:	8b 4d 08             	mov    0x8(%ebp),%ecx
     c7b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
     c7e:	0f b6 01             	movzbl (%ecx),%eax
     c81:	0f b6 1a             	movzbl (%edx),%ebx
     c84:	84 c0                	test   %al,%al
     c86:	75 19                	jne    ca1 <strcmp+0x31>
     c88:	eb 26                	jmp    cb0 <strcmp+0x40>
     c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c90:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
     c94:	83 c1 01             	add    $0x1,%ecx
     c97:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     c9a:	0f b6 1a             	movzbl (%edx),%ebx
     c9d:	84 c0                	test   %al,%al
     c9f:	74 0f                	je     cb0 <strcmp+0x40>
     ca1:	38 d8                	cmp    %bl,%al
     ca3:	74 eb                	je     c90 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     ca5:	29 d8                	sub    %ebx,%eax
}
     ca7:	5b                   	pop    %ebx
     ca8:	5d                   	pop    %ebp
     ca9:	c3                   	ret    
     caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     cb0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     cb2:	29 d8                	sub    %ebx,%eax
}
     cb4:	5b                   	pop    %ebx
     cb5:	5d                   	pop    %ebp
     cb6:	c3                   	ret    
     cb7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cbe:	66 90                	xchg   %ax,%ax

00000cc0 <strlen>:

uint
strlen(const char *s)
{
     cc0:	f3 0f 1e fb          	endbr32 
     cc4:	55                   	push   %ebp
     cc5:	89 e5                	mov    %esp,%ebp
     cc7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     cca:	80 3a 00             	cmpb   $0x0,(%edx)
     ccd:	74 21                	je     cf0 <strlen+0x30>
     ccf:	31 c0                	xor    %eax,%eax
     cd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cd8:	83 c0 01             	add    $0x1,%eax
     cdb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     cdf:	89 c1                	mov    %eax,%ecx
     ce1:	75 f5                	jne    cd8 <strlen+0x18>
    ;
  return n;
}
     ce3:	89 c8                	mov    %ecx,%eax
     ce5:	5d                   	pop    %ebp
     ce6:	c3                   	ret    
     ce7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cee:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
     cf0:	31 c9                	xor    %ecx,%ecx
}
     cf2:	5d                   	pop    %ebp
     cf3:	89 c8                	mov    %ecx,%eax
     cf5:	c3                   	ret    
     cf6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cfd:	8d 76 00             	lea    0x0(%esi),%esi

00000d00 <memset>:

void*
memset(void *dst, int c, uint n)
{
     d00:	f3 0f 1e fb          	endbr32 
     d04:	55                   	push   %ebp
     d05:	89 e5                	mov    %esp,%ebp
     d07:	57                   	push   %edi
     d08:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     d0b:	8b 4d 10             	mov    0x10(%ebp),%ecx
     d0e:	8b 45 0c             	mov    0xc(%ebp),%eax
     d11:	89 d7                	mov    %edx,%edi
     d13:	fc                   	cld    
     d14:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d16:	89 d0                	mov    %edx,%eax
     d18:	5f                   	pop    %edi
     d19:	5d                   	pop    %ebp
     d1a:	c3                   	ret    
     d1b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d1f:	90                   	nop

00000d20 <strchr>:

char*
strchr(const char *s, char c)
{
     d20:	f3 0f 1e fb          	endbr32 
     d24:	55                   	push   %ebp
     d25:	89 e5                	mov    %esp,%ebp
     d27:	8b 45 08             	mov    0x8(%ebp),%eax
     d2a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     d2e:	0f b6 10             	movzbl (%eax),%edx
     d31:	84 d2                	test   %dl,%dl
     d33:	75 16                	jne    d4b <strchr+0x2b>
     d35:	eb 21                	jmp    d58 <strchr+0x38>
     d37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d3e:	66 90                	xchg   %ax,%ax
     d40:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     d44:	83 c0 01             	add    $0x1,%eax
     d47:	84 d2                	test   %dl,%dl
     d49:	74 0d                	je     d58 <strchr+0x38>
    if(*s == c)
     d4b:	38 d1                	cmp    %dl,%cl
     d4d:	75 f1                	jne    d40 <strchr+0x20>
      return (char*)s;
  return 0;
}
     d4f:	5d                   	pop    %ebp
     d50:	c3                   	ret    
     d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     d58:	31 c0                	xor    %eax,%eax
}
     d5a:	5d                   	pop    %ebp
     d5b:	c3                   	ret    
     d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d60 <gets>:

char*
gets(char *buf, int max)
{
     d60:	f3 0f 1e fb          	endbr32 
     d64:	55                   	push   %ebp
     d65:	89 e5                	mov    %esp,%ebp
     d67:	57                   	push   %edi
     d68:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d69:	31 f6                	xor    %esi,%esi
{
     d6b:	53                   	push   %ebx
     d6c:	89 f3                	mov    %esi,%ebx
     d6e:	83 ec 1c             	sub    $0x1c,%esp
     d71:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     d74:	eb 33                	jmp    da9 <gets+0x49>
     d76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d7d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     d80:	83 ec 04             	sub    $0x4,%esp
     d83:	8d 45 e7             	lea    -0x19(%ebp),%eax
     d86:	6a 01                	push   $0x1
     d88:	50                   	push   %eax
     d89:	6a 00                	push   $0x0
     d8b:	e8 2b 01 00 00       	call   ebb <read>
    if(cc < 1)
     d90:	83 c4 10             	add    $0x10,%esp
     d93:	85 c0                	test   %eax,%eax
     d95:	7e 1c                	jle    db3 <gets+0x53>
      break;
    buf[i++] = c;
     d97:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d9b:	83 c7 01             	add    $0x1,%edi
     d9e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     da1:	3c 0a                	cmp    $0xa,%al
     da3:	74 23                	je     dc8 <gets+0x68>
     da5:	3c 0d                	cmp    $0xd,%al
     da7:	74 1f                	je     dc8 <gets+0x68>
  for(i=0; i+1 < max; ){
     da9:	83 c3 01             	add    $0x1,%ebx
     dac:	89 fe                	mov    %edi,%esi
     dae:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     db1:	7c cd                	jl     d80 <gets+0x20>
     db3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     db5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     db8:	c6 03 00             	movb   $0x0,(%ebx)
}
     dbb:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dbe:	5b                   	pop    %ebx
     dbf:	5e                   	pop    %esi
     dc0:	5f                   	pop    %edi
     dc1:	5d                   	pop    %ebp
     dc2:	c3                   	ret    
     dc3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     dc7:	90                   	nop
     dc8:	8b 75 08             	mov    0x8(%ebp),%esi
     dcb:	8b 45 08             	mov    0x8(%ebp),%eax
     dce:	01 de                	add    %ebx,%esi
     dd0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     dd2:	c6 03 00             	movb   $0x0,(%ebx)
}
     dd5:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dd8:	5b                   	pop    %ebx
     dd9:	5e                   	pop    %esi
     dda:	5f                   	pop    %edi
     ddb:	5d                   	pop    %ebp
     ddc:	c3                   	ret    
     ddd:	8d 76 00             	lea    0x0(%esi),%esi

00000de0 <stat>:

int
stat(const char *n, struct stat *st)
{
     de0:	f3 0f 1e fb          	endbr32 
     de4:	55                   	push   %ebp
     de5:	89 e5                	mov    %esp,%ebp
     de7:	56                   	push   %esi
     de8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     de9:	83 ec 08             	sub    $0x8,%esp
     dec:	6a 00                	push   $0x0
     dee:	ff 75 08             	pushl  0x8(%ebp)
     df1:	e8 ed 00 00 00       	call   ee3 <open>
  if(fd < 0)
     df6:	83 c4 10             	add    $0x10,%esp
     df9:	85 c0                	test   %eax,%eax
     dfb:	78 2b                	js     e28 <stat+0x48>
    return -1;
  r = fstat(fd, st);
     dfd:	83 ec 08             	sub    $0x8,%esp
     e00:	ff 75 0c             	pushl  0xc(%ebp)
     e03:	89 c3                	mov    %eax,%ebx
     e05:	50                   	push   %eax
     e06:	e8 f0 00 00 00       	call   efb <fstat>
  close(fd);
     e0b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     e0e:	89 c6                	mov    %eax,%esi
  close(fd);
     e10:	e8 b6 00 00 00       	call   ecb <close>
  return r;
     e15:	83 c4 10             	add    $0x10,%esp
}
     e18:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e1b:	89 f0                	mov    %esi,%eax
     e1d:	5b                   	pop    %ebx
     e1e:	5e                   	pop    %esi
     e1f:	5d                   	pop    %ebp
     e20:	c3                   	ret    
     e21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
     e28:	be ff ff ff ff       	mov    $0xffffffff,%esi
     e2d:	eb e9                	jmp    e18 <stat+0x38>
     e2f:	90                   	nop

00000e30 <atoi>:

int
atoi(const char *s)
{
     e30:	f3 0f 1e fb          	endbr32 
     e34:	55                   	push   %ebp
     e35:	89 e5                	mov    %esp,%ebp
     e37:	53                   	push   %ebx
     e38:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e3b:	0f be 02             	movsbl (%edx),%eax
     e3e:	8d 48 d0             	lea    -0x30(%eax),%ecx
     e41:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     e44:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     e49:	77 1a                	ja     e65 <atoi+0x35>
     e4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e4f:	90                   	nop
    n = n*10 + *s++ - '0';
     e50:	83 c2 01             	add    $0x1,%edx
     e53:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     e56:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     e5a:	0f be 02             	movsbl (%edx),%eax
     e5d:	8d 58 d0             	lea    -0x30(%eax),%ebx
     e60:	80 fb 09             	cmp    $0x9,%bl
     e63:	76 eb                	jbe    e50 <atoi+0x20>
  return n;
}
     e65:	89 c8                	mov    %ecx,%eax
     e67:	5b                   	pop    %ebx
     e68:	5d                   	pop    %ebp
     e69:	c3                   	ret    
     e6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000e70 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     e70:	f3 0f 1e fb          	endbr32 
     e74:	55                   	push   %ebp
     e75:	89 e5                	mov    %esp,%ebp
     e77:	57                   	push   %edi
     e78:	8b 45 10             	mov    0x10(%ebp),%eax
     e7b:	8b 55 08             	mov    0x8(%ebp),%edx
     e7e:	56                   	push   %esi
     e7f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e82:	85 c0                	test   %eax,%eax
     e84:	7e 0f                	jle    e95 <memmove+0x25>
     e86:	01 d0                	add    %edx,%eax
  dst = vdst;
     e88:	89 d7                	mov    %edx,%edi
     e8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
     e90:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     e91:	39 f8                	cmp    %edi,%eax
     e93:	75 fb                	jne    e90 <memmove+0x20>
  return vdst;
}
     e95:	5e                   	pop    %esi
     e96:	89 d0                	mov    %edx,%eax
     e98:	5f                   	pop    %edi
     e99:	5d                   	pop    %ebp
     e9a:	c3                   	ret    

00000e9b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e9b:	b8 01 00 00 00       	mov    $0x1,%eax
     ea0:	cd 40                	int    $0x40
     ea2:	c3                   	ret    

00000ea3 <exit>:
SYSCALL(exit)
     ea3:	b8 02 00 00 00       	mov    $0x2,%eax
     ea8:	cd 40                	int    $0x40
     eaa:	c3                   	ret    

00000eab <wait>:
SYSCALL(wait)
     eab:	b8 03 00 00 00       	mov    $0x3,%eax
     eb0:	cd 40                	int    $0x40
     eb2:	c3                   	ret    

00000eb3 <pipe>:
SYSCALL(pipe)
     eb3:	b8 04 00 00 00       	mov    $0x4,%eax
     eb8:	cd 40                	int    $0x40
     eba:	c3                   	ret    

00000ebb <read>:
SYSCALL(read)
     ebb:	b8 05 00 00 00       	mov    $0x5,%eax
     ec0:	cd 40                	int    $0x40
     ec2:	c3                   	ret    

00000ec3 <write>:
SYSCALL(write)
     ec3:	b8 10 00 00 00       	mov    $0x10,%eax
     ec8:	cd 40                	int    $0x40
     eca:	c3                   	ret    

00000ecb <close>:
SYSCALL(close)
     ecb:	b8 15 00 00 00       	mov    $0x15,%eax
     ed0:	cd 40                	int    $0x40
     ed2:	c3                   	ret    

00000ed3 <kill>:
SYSCALL(kill)
     ed3:	b8 06 00 00 00       	mov    $0x6,%eax
     ed8:	cd 40                	int    $0x40
     eda:	c3                   	ret    

00000edb <exec>:
SYSCALL(exec)
     edb:	b8 07 00 00 00       	mov    $0x7,%eax
     ee0:	cd 40                	int    $0x40
     ee2:	c3                   	ret    

00000ee3 <open>:
SYSCALL(open)
     ee3:	b8 0f 00 00 00       	mov    $0xf,%eax
     ee8:	cd 40                	int    $0x40
     eea:	c3                   	ret    

00000eeb <mknod>:
SYSCALL(mknod)
     eeb:	b8 11 00 00 00       	mov    $0x11,%eax
     ef0:	cd 40                	int    $0x40
     ef2:	c3                   	ret    

00000ef3 <unlink>:
SYSCALL(unlink)
     ef3:	b8 12 00 00 00       	mov    $0x12,%eax
     ef8:	cd 40                	int    $0x40
     efa:	c3                   	ret    

00000efb <fstat>:
SYSCALL(fstat)
     efb:	b8 08 00 00 00       	mov    $0x8,%eax
     f00:	cd 40                	int    $0x40
     f02:	c3                   	ret    

00000f03 <link>:
SYSCALL(link)
     f03:	b8 13 00 00 00       	mov    $0x13,%eax
     f08:	cd 40                	int    $0x40
     f0a:	c3                   	ret    

00000f0b <mkdir>:
SYSCALL(mkdir)
     f0b:	b8 14 00 00 00       	mov    $0x14,%eax
     f10:	cd 40                	int    $0x40
     f12:	c3                   	ret    

00000f13 <chdir>:
SYSCALL(chdir)
     f13:	b8 09 00 00 00       	mov    $0x9,%eax
     f18:	cd 40                	int    $0x40
     f1a:	c3                   	ret    

00000f1b <dup>:
SYSCALL(dup)
     f1b:	b8 0a 00 00 00       	mov    $0xa,%eax
     f20:	cd 40                	int    $0x40
     f22:	c3                   	ret    

00000f23 <getpid>:
SYSCALL(getpid)
     f23:	b8 0b 00 00 00       	mov    $0xb,%eax
     f28:	cd 40                	int    $0x40
     f2a:	c3                   	ret    

00000f2b <sbrk>:
SYSCALL(sbrk)
     f2b:	b8 0c 00 00 00       	mov    $0xc,%eax
     f30:	cd 40                	int    $0x40
     f32:	c3                   	ret    

00000f33 <sleep>:
SYSCALL(sleep)
     f33:	b8 0d 00 00 00       	mov    $0xd,%eax
     f38:	cd 40                	int    $0x40
     f3a:	c3                   	ret    

00000f3b <uptime>:
SYSCALL(uptime)
     f3b:	b8 0e 00 00 00       	mov    $0xe,%eax
     f40:	cd 40                	int    $0x40
     f42:	c3                   	ret    

00000f43 <helloWorld>:
SYSCALL(helloWorld)
     f43:	b8 16 00 00 00       	mov    $0x16,%eax
     f48:	cd 40                	int    $0x40
     f4a:	c3                   	ret    

00000f4b <numOpenFiles>:
SYSCALL(numOpenFiles)
     f4b:	b8 17 00 00 00       	mov    $0x17,%eax
     f50:	cd 40                	int    $0x40
     f52:	c3                   	ret    

00000f53 <memAlloc>:
SYSCALL(memAlloc)
     f53:	b8 18 00 00 00       	mov    $0x18,%eax
     f58:	cd 40                	int    $0x40
     f5a:	c3                   	ret    

00000f5b <getprocesstimedetails>:
SYSCALL(getprocesstimedetails)
     f5b:	b8 19 00 00 00       	mov    $0x19,%eax
     f60:	cd 40                	int    $0x40
     f62:	c3                   	ret    

00000f63 <psinfo>:
SYSCALL(psinfo)
     f63:	b8 1a 00 00 00       	mov    $0x1a,%eax
     f68:	cd 40                	int    $0x40
     f6a:	c3                   	ret    
     f6b:	66 90                	xchg   %ax,%ax
     f6d:	66 90                	xchg   %ax,%ax
     f6f:	90                   	nop

00000f70 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f70:	55                   	push   %ebp
     f71:	89 e5                	mov    %esp,%ebp
     f73:	57                   	push   %edi
     f74:	56                   	push   %esi
     f75:	53                   	push   %ebx
     f76:	83 ec 3c             	sub    $0x3c,%esp
     f79:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     f7c:	89 d1                	mov    %edx,%ecx
{
     f7e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
     f81:	85 d2                	test   %edx,%edx
     f83:	0f 89 7f 00 00 00    	jns    1008 <printint+0x98>
     f89:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     f8d:	74 79                	je     1008 <printint+0x98>
    neg = 1;
     f8f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
     f96:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
     f98:	31 db                	xor    %ebx,%ebx
     f9a:	8d 75 d7             	lea    -0x29(%ebp),%esi
     f9d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     fa0:	89 c8                	mov    %ecx,%eax
     fa2:	31 d2                	xor    %edx,%edx
     fa4:	89 cf                	mov    %ecx,%edi
     fa6:	f7 75 c4             	divl   -0x3c(%ebp)
     fa9:	0f b6 92 f0 13 00 00 	movzbl 0x13f0(%edx),%edx
     fb0:	89 45 c0             	mov    %eax,-0x40(%ebp)
     fb3:	89 d8                	mov    %ebx,%eax
     fb5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
     fb8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
     fbb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
     fbe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
     fc1:	76 dd                	jbe    fa0 <printint+0x30>
  if(neg)
     fc3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
     fc6:	85 c9                	test   %ecx,%ecx
     fc8:	74 0c                	je     fd6 <printint+0x66>
    buf[i++] = '-';
     fca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
     fcf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
     fd1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
     fd6:	8b 7d b8             	mov    -0x48(%ebp),%edi
     fd9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
     fdd:	eb 07                	jmp    fe6 <printint+0x76>
     fdf:	90                   	nop
     fe0:	0f b6 13             	movzbl (%ebx),%edx
     fe3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
     fe6:	83 ec 04             	sub    $0x4,%esp
     fe9:	88 55 d7             	mov    %dl,-0x29(%ebp)
     fec:	6a 01                	push   $0x1
     fee:	56                   	push   %esi
     fef:	57                   	push   %edi
     ff0:	e8 ce fe ff ff       	call   ec3 <write>
  while(--i >= 0)
     ff5:	83 c4 10             	add    $0x10,%esp
     ff8:	39 de                	cmp    %ebx,%esi
     ffa:	75 e4                	jne    fe0 <printint+0x70>
    putc(fd, buf[i]);
}
     ffc:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fff:	5b                   	pop    %ebx
    1000:	5e                   	pop    %esi
    1001:	5f                   	pop    %edi
    1002:	5d                   	pop    %ebp
    1003:	c3                   	ret    
    1004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1008:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    100f:	eb 87                	jmp    f98 <printint+0x28>
    1011:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1018:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    101f:	90                   	nop

00001020 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1020:	f3 0f 1e fb          	endbr32 
    1024:	55                   	push   %ebp
    1025:	89 e5                	mov    %esp,%ebp
    1027:	57                   	push   %edi
    1028:	56                   	push   %esi
    1029:	53                   	push   %ebx
    102a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    102d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1030:	0f b6 1e             	movzbl (%esi),%ebx
    1033:	84 db                	test   %bl,%bl
    1035:	0f 84 b4 00 00 00    	je     10ef <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    103b:	8d 45 10             	lea    0x10(%ebp),%eax
    103e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1041:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1044:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1046:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1049:	eb 33                	jmp    107e <printf+0x5e>
    104b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    104f:	90                   	nop
    1050:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1053:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1058:	83 f8 25             	cmp    $0x25,%eax
    105b:	74 17                	je     1074 <printf+0x54>
  write(fd, &c, 1);
    105d:	83 ec 04             	sub    $0x4,%esp
    1060:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1063:	6a 01                	push   $0x1
    1065:	57                   	push   %edi
    1066:	ff 75 08             	pushl  0x8(%ebp)
    1069:	e8 55 fe ff ff       	call   ec3 <write>
    106e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1071:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1074:	0f b6 1e             	movzbl (%esi),%ebx
    1077:	83 c6 01             	add    $0x1,%esi
    107a:	84 db                	test   %bl,%bl
    107c:	74 71                	je     10ef <printf+0xcf>
    c = fmt[i] & 0xff;
    107e:	0f be cb             	movsbl %bl,%ecx
    1081:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1084:	85 d2                	test   %edx,%edx
    1086:	74 c8                	je     1050 <printf+0x30>
      }
    } else if(state == '%'){
    1088:	83 fa 25             	cmp    $0x25,%edx
    108b:	75 e7                	jne    1074 <printf+0x54>
      if(c == 'd'){
    108d:	83 f8 64             	cmp    $0x64,%eax
    1090:	0f 84 9a 00 00 00    	je     1130 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1096:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    109c:	83 f9 70             	cmp    $0x70,%ecx
    109f:	74 5f                	je     1100 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    10a1:	83 f8 73             	cmp    $0x73,%eax
    10a4:	0f 84 d6 00 00 00    	je     1180 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    10aa:	83 f8 63             	cmp    $0x63,%eax
    10ad:	0f 84 8d 00 00 00    	je     1140 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    10b3:	83 f8 25             	cmp    $0x25,%eax
    10b6:	0f 84 b4 00 00 00    	je     1170 <printf+0x150>
  write(fd, &c, 1);
    10bc:	83 ec 04             	sub    $0x4,%esp
    10bf:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    10c3:	6a 01                	push   $0x1
    10c5:	57                   	push   %edi
    10c6:	ff 75 08             	pushl  0x8(%ebp)
    10c9:	e8 f5 fd ff ff       	call   ec3 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    10ce:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    10d1:	83 c4 0c             	add    $0xc,%esp
    10d4:	6a 01                	push   $0x1
    10d6:	83 c6 01             	add    $0x1,%esi
    10d9:	57                   	push   %edi
    10da:	ff 75 08             	pushl  0x8(%ebp)
    10dd:	e8 e1 fd ff ff       	call   ec3 <write>
  for(i = 0; fmt[i]; i++){
    10e2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    10e6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    10e9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    10eb:	84 db                	test   %bl,%bl
    10ed:	75 8f                	jne    107e <printf+0x5e>
    }
  }
}
    10ef:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10f2:	5b                   	pop    %ebx
    10f3:	5e                   	pop    %esi
    10f4:	5f                   	pop    %edi
    10f5:	5d                   	pop    %ebp
    10f6:	c3                   	ret    
    10f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10fe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1100:	83 ec 0c             	sub    $0xc,%esp
    1103:	b9 10 00 00 00       	mov    $0x10,%ecx
    1108:	6a 00                	push   $0x0
    110a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    110d:	8b 45 08             	mov    0x8(%ebp),%eax
    1110:	8b 13                	mov    (%ebx),%edx
    1112:	e8 59 fe ff ff       	call   f70 <printint>
        ap++;
    1117:	89 d8                	mov    %ebx,%eax
    1119:	83 c4 10             	add    $0x10,%esp
      state = 0;
    111c:	31 d2                	xor    %edx,%edx
        ap++;
    111e:	83 c0 04             	add    $0x4,%eax
    1121:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1124:	e9 4b ff ff ff       	jmp    1074 <printf+0x54>
    1129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1130:	83 ec 0c             	sub    $0xc,%esp
    1133:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1138:	6a 01                	push   $0x1
    113a:	eb ce                	jmp    110a <printf+0xea>
    113c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1140:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1143:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1146:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1148:	6a 01                	push   $0x1
        ap++;
    114a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    114d:	57                   	push   %edi
    114e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1151:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1154:	e8 6a fd ff ff       	call   ec3 <write>
        ap++;
    1159:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    115c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    115f:	31 d2                	xor    %edx,%edx
    1161:	e9 0e ff ff ff       	jmp    1074 <printf+0x54>
    1166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1170:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1173:	83 ec 04             	sub    $0x4,%esp
    1176:	e9 59 ff ff ff       	jmp    10d4 <printf+0xb4>
    117b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    117f:	90                   	nop
        s = (char*)*ap;
    1180:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1183:	8b 18                	mov    (%eax),%ebx
        ap++;
    1185:	83 c0 04             	add    $0x4,%eax
    1188:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    118b:	85 db                	test   %ebx,%ebx
    118d:	74 17                	je     11a6 <printf+0x186>
        while(*s != 0){
    118f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1192:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1194:	84 c0                	test   %al,%al
    1196:	0f 84 d8 fe ff ff    	je     1074 <printf+0x54>
    119c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    119f:	89 de                	mov    %ebx,%esi
    11a1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11a4:	eb 1a                	jmp    11c0 <printf+0x1a0>
          s = "(null)";
    11a6:	bb e6 13 00 00       	mov    $0x13e6,%ebx
        while(*s != 0){
    11ab:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    11ae:	b8 28 00 00 00       	mov    $0x28,%eax
    11b3:	89 de                	mov    %ebx,%esi
    11b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11bf:	90                   	nop
  write(fd, &c, 1);
    11c0:	83 ec 04             	sub    $0x4,%esp
          s++;
    11c3:	83 c6 01             	add    $0x1,%esi
    11c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    11c9:	6a 01                	push   $0x1
    11cb:	57                   	push   %edi
    11cc:	53                   	push   %ebx
    11cd:	e8 f1 fc ff ff       	call   ec3 <write>
        while(*s != 0){
    11d2:	0f b6 06             	movzbl (%esi),%eax
    11d5:	83 c4 10             	add    $0x10,%esp
    11d8:	84 c0                	test   %al,%al
    11da:	75 e4                	jne    11c0 <printf+0x1a0>
    11dc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    11df:	31 d2                	xor    %edx,%edx
    11e1:	e9 8e fe ff ff       	jmp    1074 <printf+0x54>
    11e6:	66 90                	xchg   %ax,%ax
    11e8:	66 90                	xchg   %ax,%ax
    11ea:	66 90                	xchg   %ax,%ax
    11ec:	66 90                	xchg   %ax,%ax
    11ee:	66 90                	xchg   %ax,%ax

000011f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11f0:	f3 0f 1e fb          	endbr32 
    11f4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11f5:	a1 24 19 00 00       	mov    0x1924,%eax
{
    11fa:	89 e5                	mov    %esp,%ebp
    11fc:	57                   	push   %edi
    11fd:	56                   	push   %esi
    11fe:	53                   	push   %ebx
    11ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1202:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1204:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1207:	39 c8                	cmp    %ecx,%eax
    1209:	73 15                	jae    1220 <free+0x30>
    120b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    120f:	90                   	nop
    1210:	39 d1                	cmp    %edx,%ecx
    1212:	72 14                	jb     1228 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1214:	39 d0                	cmp    %edx,%eax
    1216:	73 10                	jae    1228 <free+0x38>
{
    1218:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    121a:	8b 10                	mov    (%eax),%edx
    121c:	39 c8                	cmp    %ecx,%eax
    121e:	72 f0                	jb     1210 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1220:	39 d0                	cmp    %edx,%eax
    1222:	72 f4                	jb     1218 <free+0x28>
    1224:	39 d1                	cmp    %edx,%ecx
    1226:	73 f0                	jae    1218 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1228:	8b 73 fc             	mov    -0x4(%ebx),%esi
    122b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    122e:	39 fa                	cmp    %edi,%edx
    1230:	74 1e                	je     1250 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1232:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1235:	8b 50 04             	mov    0x4(%eax),%edx
    1238:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    123b:	39 f1                	cmp    %esi,%ecx
    123d:	74 28                	je     1267 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    123f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1241:	5b                   	pop    %ebx
  freep = p;
    1242:	a3 24 19 00 00       	mov    %eax,0x1924
}
    1247:	5e                   	pop    %esi
    1248:	5f                   	pop    %edi
    1249:	5d                   	pop    %ebp
    124a:	c3                   	ret    
    124b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    124f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1250:	03 72 04             	add    0x4(%edx),%esi
    1253:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1256:	8b 10                	mov    (%eax),%edx
    1258:	8b 12                	mov    (%edx),%edx
    125a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    125d:	8b 50 04             	mov    0x4(%eax),%edx
    1260:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1263:	39 f1                	cmp    %esi,%ecx
    1265:	75 d8                	jne    123f <free+0x4f>
    p->s.size += bp->s.size;
    1267:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    126a:	a3 24 19 00 00       	mov    %eax,0x1924
    p->s.size += bp->s.size;
    126f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1272:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1275:	89 10                	mov    %edx,(%eax)
}
    1277:	5b                   	pop    %ebx
    1278:	5e                   	pop    %esi
    1279:	5f                   	pop    %edi
    127a:	5d                   	pop    %ebp
    127b:	c3                   	ret    
    127c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001280 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1280:	f3 0f 1e fb          	endbr32 
    1284:	55                   	push   %ebp
    1285:	89 e5                	mov    %esp,%ebp
    1287:	57                   	push   %edi
    1288:	56                   	push   %esi
    1289:	53                   	push   %ebx
    128a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    128d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1290:	8b 3d 24 19 00 00    	mov    0x1924,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1296:	8d 70 07             	lea    0x7(%eax),%esi
    1299:	c1 ee 03             	shr    $0x3,%esi
    129c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    129f:	85 ff                	test   %edi,%edi
    12a1:	0f 84 a9 00 00 00    	je     1350 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12a7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    12a9:	8b 48 04             	mov    0x4(%eax),%ecx
    12ac:	39 f1                	cmp    %esi,%ecx
    12ae:	73 6d                	jae    131d <malloc+0x9d>
    12b0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    12b6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    12bb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    12be:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    12c5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    12c8:	eb 17                	jmp    12e1 <malloc+0x61>
    12ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12d0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    12d2:	8b 4a 04             	mov    0x4(%edx),%ecx
    12d5:	39 f1                	cmp    %esi,%ecx
    12d7:	73 4f                	jae    1328 <malloc+0xa8>
    12d9:	8b 3d 24 19 00 00    	mov    0x1924,%edi
    12df:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    12e1:	39 c7                	cmp    %eax,%edi
    12e3:	75 eb                	jne    12d0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    12e5:	83 ec 0c             	sub    $0xc,%esp
    12e8:	ff 75 e4             	pushl  -0x1c(%ebp)
    12eb:	e8 3b fc ff ff       	call   f2b <sbrk>
  if(p == (char*)-1)
    12f0:	83 c4 10             	add    $0x10,%esp
    12f3:	83 f8 ff             	cmp    $0xffffffff,%eax
    12f6:	74 1b                	je     1313 <malloc+0x93>
  hp->s.size = nu;
    12f8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    12fb:	83 ec 0c             	sub    $0xc,%esp
    12fe:	83 c0 08             	add    $0x8,%eax
    1301:	50                   	push   %eax
    1302:	e8 e9 fe ff ff       	call   11f0 <free>
  return freep;
    1307:	a1 24 19 00 00       	mov    0x1924,%eax
      if((p = morecore(nunits)) == 0)
    130c:	83 c4 10             	add    $0x10,%esp
    130f:	85 c0                	test   %eax,%eax
    1311:	75 bd                	jne    12d0 <malloc+0x50>
        return 0;
  }
}
    1313:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1316:	31 c0                	xor    %eax,%eax
}
    1318:	5b                   	pop    %ebx
    1319:	5e                   	pop    %esi
    131a:	5f                   	pop    %edi
    131b:	5d                   	pop    %ebp
    131c:	c3                   	ret    
    if(p->s.size >= nunits){
    131d:	89 c2                	mov    %eax,%edx
    131f:	89 f8                	mov    %edi,%eax
    1321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1328:	39 ce                	cmp    %ecx,%esi
    132a:	74 54                	je     1380 <malloc+0x100>
        p->s.size -= nunits;
    132c:	29 f1                	sub    %esi,%ecx
    132e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1331:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1334:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1337:	a3 24 19 00 00       	mov    %eax,0x1924
}
    133c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    133f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1342:	5b                   	pop    %ebx
    1343:	5e                   	pop    %esi
    1344:	5f                   	pop    %edi
    1345:	5d                   	pop    %ebp
    1346:	c3                   	ret    
    1347:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    134e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1350:	c7 05 24 19 00 00 28 	movl   $0x1928,0x1924
    1357:	19 00 00 
    base.s.size = 0;
    135a:	bf 28 19 00 00       	mov    $0x1928,%edi
    base.s.ptr = freep = prevp = &base;
    135f:	c7 05 28 19 00 00 28 	movl   $0x1928,0x1928
    1366:	19 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1369:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    136b:	c7 05 2c 19 00 00 00 	movl   $0x0,0x192c
    1372:	00 00 00 
    if(p->s.size >= nunits){
    1375:	e9 36 ff ff ff       	jmp    12b0 <malloc+0x30>
    137a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1380:	8b 0a                	mov    (%edx),%ecx
    1382:	89 08                	mov    %ecx,(%eax)
    1384:	eb b1                	jmp    1337 <malloc+0xb7>
