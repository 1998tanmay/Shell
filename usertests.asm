
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	f3 0f 1e fb          	endbr32 
       4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       8:	83 e4 f0             	and    $0xfffffff0,%esp
       b:	ff 71 fc             	pushl  -0x4(%ecx)
       e:	55                   	push   %ebp
       f:	89 e5                	mov    %esp,%ebp
      11:	51                   	push   %ecx
      12:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      15:	68 46 54 00 00       	push   $0x5446
      1a:	6a 01                	push   $0x1
      1c:	e8 cf 40 00 00       	call   40f0 <printf>

  if(open("usertests.ran", 0) >= 0){
      21:	59                   	pop    %ecx
      22:	58                   	pop    %eax
      23:	6a 00                	push   $0x0
      25:	68 5a 54 00 00       	push   $0x545a
      2a:	e8 84 3f 00 00       	call   3fb3 <open>
      2f:	83 c4 10             	add    $0x10,%esp
      32:	85 c0                	test   %eax,%eax
      34:	78 1a                	js     50 <main+0x50>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      36:	52                   	push   %edx
      37:	52                   	push   %edx
      38:	68 c4 5b 00 00       	push   $0x5bc4
      3d:	6a 01                	push   $0x1
      3f:	e8 ac 40 00 00       	call   40f0 <printf>
    exit(0);
      44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      4b:	e8 23 3f 00 00       	call   3f73 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      50:	50                   	push   %eax
      51:	50                   	push   %eax
      52:	68 00 02 00 00       	push   $0x200
      57:	68 5a 54 00 00       	push   $0x545a
      5c:	e8 52 3f 00 00       	call   3fb3 <open>
      61:	89 04 24             	mov    %eax,(%esp)
      64:	e8 32 3f 00 00       	call   3f9b <close>

  argptest();
      69:	e8 02 3c 00 00       	call   3c70 <argptest>
  createdelete();
      6e:	e8 ad 13 00 00       	call   1420 <createdelete>
  linkunlink();
      73:	e8 78 1d 00 00       	call   1df0 <linkunlink>
  concreate();
      78:	e8 43 1a 00 00       	call   1ac0 <concreate>
  fourfiles();
      7d:	e8 5e 11 00 00       	call   11e0 <fourfiles>
  sharedfd();
      82:	e8 99 0f 00 00       	call   1020 <sharedfd>

  bigargtest();
      87:	e8 54 38 00 00       	call   38e0 <bigargtest>
  bigwrite();
      8c:	e8 df 27 00 00       	call   2870 <bigwrite>
  bigargtest();
      91:	e8 4a 38 00 00       	call   38e0 <bigargtest>
  bsstest();
      96:	e8 d5 37 00 00       	call   3870 <bsstest>
  sbrktest();
      9b:	e8 40 32 00 00       	call   32e0 <sbrktest>
  validatetest();
      a0:	e8 fb 36 00 00       	call   37a0 <validatetest>

  opentest();
      a5:	e8 e6 03 00 00       	call   490 <opentest>
  writetest();
      aa:	e8 91 04 00 00       	call   540 <writetest>
  writetest1();
      af:	e8 9c 06 00 00       	call   750 <writetest1>
  createtest();
      b4:	e8 97 08 00 00       	call   950 <createtest>

  openiputtest();
      b9:	e8 a2 02 00 00       	call   360 <openiputtest>
  exitiputtest();
      be:	e8 6d 01 00 00       	call   230 <exitiputtest>
  iputtest();
      c3:	e8 68 00 00 00       	call   130 <iputtest>

  mem();
      c8:	e8 63 0e 00 00       	call   f30 <mem>
  pipe1();
      cd:	e8 9e 0a 00 00       	call   b70 <pipe1>
  preempt();
      d2:	e8 59 0c 00 00       	call   d30 <preempt>
  exitwait();
      d7:	e8 c4 0d 00 00       	call   ea0 <exitwait>

  rmdot();
      dc:	e8 ef 2b 00 00       	call   2cd0 <rmdot>
  fourteen();
      e1:	e8 7a 2a 00 00       	call   2b60 <fourteen>
  bigfile();
      e6:	e8 75 28 00 00       	call   2960 <bigfile>
  subdir();
      eb:	e8 80 1f 00 00       	call   2070 <subdir>
  linktest();
      f0:	e8 6b 17 00 00       	call   1860 <linktest>
  unlinkread();
      f5:	e8 a6 15 00 00       	call   16a0 <unlinkread>
  dirfile();
      fa:	e8 91 2d 00 00       	call   2e90 <dirfile>
  iref();
      ff:	e8 cc 2f 00 00       	call   30d0 <iref>
  forktest();
     104:	e8 f7 30 00 00       	call   3200 <forktest>
  bigdir(); // slow
     109:	e8 02 1e 00 00       	call   1f10 <bigdir>

  uio();
     10e:	e8 cd 3a 00 00       	call   3be0 <uio>

  exectest();
     113:	e8 f8 09 00 00       	call   b10 <exectest>

  exit(0);
     118:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     11f:	e8 4f 3e 00 00       	call   3f73 <exit>
     124:	66 90                	xchg   %ax,%ax
     126:	66 90                	xchg   %ax,%ax
     128:	66 90                	xchg   %ax,%ax
     12a:	66 90                	xchg   %ax,%ax
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <iputtest>:
{
     130:	f3 0f 1e fb          	endbr32 
     134:	55                   	push   %ebp
     135:	89 e5                	mov    %esp,%ebp
     137:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     13a:	68 ec 44 00 00       	push   $0x44ec
     13f:	ff 35 f0 64 00 00    	pushl  0x64f0
     145:	e8 a6 3f 00 00       	call   40f0 <printf>
  if(mkdir("iputdir") < 0){
     14a:	c7 04 24 7f 44 00 00 	movl   $0x447f,(%esp)
     151:	e8 85 3e 00 00       	call   3fdb <mkdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	78 58                	js     1b5 <iputtest+0x85>
  if(chdir("iputdir") < 0){
     15d:	83 ec 0c             	sub    $0xc,%esp
     160:	68 7f 44 00 00       	push   $0x447f
     165:	e8 79 3e 00 00       	call   3fe3 <chdir>
     16a:	83 c4 10             	add    $0x10,%esp
     16d:	85 c0                	test   %eax,%eax
     16f:	0f 88 9a 00 00 00    	js     20f <iputtest+0xdf>
  if(unlink("../iputdir") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 7c 44 00 00       	push   $0x447c
     17d:	e8 41 3e 00 00       	call   3fc3 <unlink>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 68                	js     1f1 <iputtest+0xc1>
  if(chdir("/") < 0){
     189:	83 ec 0c             	sub    $0xc,%esp
     18c:	68 a1 44 00 00       	push   $0x44a1
     191:	e8 4d 3e 00 00       	call   3fe3 <chdir>
     196:	83 c4 10             	add    $0x10,%esp
     199:	85 c0                	test   %eax,%eax
     19b:	78 36                	js     1d3 <iputtest+0xa3>
  printf(stdout, "iput test ok\n");
     19d:	83 ec 08             	sub    $0x8,%esp
     1a0:	68 24 45 00 00       	push   $0x4524
     1a5:	ff 35 f0 64 00 00    	pushl  0x64f0
     1ab:	e8 40 3f 00 00       	call   40f0 <printf>
}
     1b0:	83 c4 10             	add    $0x10,%esp
     1b3:	c9                   	leave  
     1b4:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1b5:	50                   	push   %eax
     1b6:	50                   	push   %eax
     1b7:	68 58 44 00 00       	push   $0x4458
     1bc:	ff 35 f0 64 00 00    	pushl  0x64f0
     1c2:	e8 29 3f 00 00       	call   40f0 <printf>
    exit(-1);
     1c7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     1ce:	e8 a0 3d 00 00       	call   3f73 <exit>
    printf(stdout, "chdir / failed\n");
     1d3:	50                   	push   %eax
     1d4:	50                   	push   %eax
     1d5:	68 a3 44 00 00       	push   $0x44a3
     1da:	ff 35 f0 64 00 00    	pushl  0x64f0
     1e0:	e8 0b 3f 00 00       	call   40f0 <printf>
    exit(-1);
     1e5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     1ec:	e8 82 3d 00 00       	call   3f73 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1f1:	52                   	push   %edx
     1f2:	52                   	push   %edx
     1f3:	68 87 44 00 00       	push   $0x4487
     1f8:	ff 35 f0 64 00 00    	pushl  0x64f0
     1fe:	e8 ed 3e 00 00       	call   40f0 <printf>
    exit(-1);
     203:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     20a:	e8 64 3d 00 00       	call   3f73 <exit>
    printf(stdout, "chdir iputdir failed\n");
     20f:	51                   	push   %ecx
     210:	51                   	push   %ecx
     211:	68 66 44 00 00       	push   $0x4466
     216:	ff 35 f0 64 00 00    	pushl  0x64f0
     21c:	e8 cf 3e 00 00       	call   40f0 <printf>
    exit(-1);
     221:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     228:	e8 46 3d 00 00       	call   3f73 <exit>
     22d:	8d 76 00             	lea    0x0(%esi),%esi

00000230 <exitiputtest>:
{
     230:	f3 0f 1e fb          	endbr32 
     234:	55                   	push   %ebp
     235:	89 e5                	mov    %esp,%ebp
     237:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     23a:	68 b3 44 00 00       	push   $0x44b3
     23f:	ff 35 f0 64 00 00    	pushl  0x64f0
     245:	e8 a6 3e 00 00       	call   40f0 <printf>
  pid = fork();
     24a:	e8 1c 3d 00 00       	call   3f6b <fork>
  if(pid < 0){
     24f:	83 c4 10             	add    $0x10,%esp
     252:	85 c0                	test   %eax,%eax
     254:	0f 88 9d 00 00 00    	js     2f7 <exitiputtest+0xc7>
  if(pid == 0){
     25a:	75 54                	jne    2b0 <exitiputtest+0x80>
    if(mkdir("iputdir") < 0){
     25c:	83 ec 0c             	sub    $0xc,%esp
     25f:	68 7f 44 00 00       	push   $0x447f
     264:	e8 72 3d 00 00       	call   3fdb <mkdir>
     269:	83 c4 10             	add    $0x10,%esp
     26c:	85 c0                	test   %eax,%eax
     26e:	0f 88 a1 00 00 00    	js     315 <exitiputtest+0xe5>
    if(chdir("iputdir") < 0){
     274:	83 ec 0c             	sub    $0xc,%esp
     277:	68 7f 44 00 00       	push   $0x447f
     27c:	e8 62 3d 00 00       	call   3fe3 <chdir>
     281:	83 c4 10             	add    $0x10,%esp
     284:	85 c0                	test   %eax,%eax
     286:	0f 88 a7 00 00 00    	js     333 <exitiputtest+0x103>
    if(unlink("../iputdir") < 0){
     28c:	83 ec 0c             	sub    $0xc,%esp
     28f:	68 7c 44 00 00       	push   $0x447c
     294:	e8 2a 3d 00 00       	call   3fc3 <unlink>
     299:	83 c4 10             	add    $0x10,%esp
     29c:	85 c0                	test   %eax,%eax
     29e:	78 38                	js     2d8 <exitiputtest+0xa8>
    exit(-1);
     2a0:	83 ec 0c             	sub    $0xc,%esp
     2a3:	6a ff                	push   $0xffffffff
     2a5:	e8 c9 3c 00 00       	call   3f73 <exit>
     2aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  wait(0);
     2b0:	83 ec 0c             	sub    $0xc,%esp
     2b3:	6a 00                	push   $0x0
     2b5:	e8 c1 3c 00 00       	call   3f7b <wait>
  printf(stdout, "exitiput test ok\n");
     2ba:	58                   	pop    %eax
     2bb:	5a                   	pop    %edx
     2bc:	68 d6 44 00 00       	push   $0x44d6
     2c1:	ff 35 f0 64 00 00    	pushl  0x64f0
     2c7:	e8 24 3e 00 00       	call   40f0 <printf>
}
     2cc:	83 c4 10             	add    $0x10,%esp
     2cf:	c9                   	leave  
     2d0:	c3                   	ret    
     2d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     2d8:	83 ec 08             	sub    $0x8,%esp
     2db:	68 87 44 00 00       	push   $0x4487
     2e0:	ff 35 f0 64 00 00    	pushl  0x64f0
     2e6:	e8 05 3e 00 00       	call   40f0 <printf>
      exit(-1);
     2eb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     2f2:	e8 7c 3c 00 00       	call   3f73 <exit>
    printf(stdout, "fork failed\n");
     2f7:	50                   	push   %eax
     2f8:	50                   	push   %eax
     2f9:	68 99 53 00 00       	push   $0x5399
     2fe:	ff 35 f0 64 00 00    	pushl  0x64f0
     304:	e8 e7 3d 00 00       	call   40f0 <printf>
    exit(-1);
     309:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     310:	e8 5e 3c 00 00       	call   3f73 <exit>
      printf(stdout, "mkdir failed\n");
     315:	50                   	push   %eax
     316:	50                   	push   %eax
     317:	68 58 44 00 00       	push   $0x4458
     31c:	ff 35 f0 64 00 00    	pushl  0x64f0
     322:	e8 c9 3d 00 00       	call   40f0 <printf>
      exit(-1);
     327:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     32e:	e8 40 3c 00 00       	call   3f73 <exit>
      printf(stdout, "child chdir failed\n");
     333:	51                   	push   %ecx
     334:	51                   	push   %ecx
     335:	68 c2 44 00 00       	push   $0x44c2
     33a:	ff 35 f0 64 00 00    	pushl  0x64f0
     340:	e8 ab 3d 00 00       	call   40f0 <printf>
      exit(-1);
     345:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     34c:	e8 22 3c 00 00       	call   3f73 <exit>
     351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     35f:	90                   	nop

00000360 <openiputtest>:
{
     360:	f3 0f 1e fb          	endbr32 
     364:	55                   	push   %ebp
     365:	89 e5                	mov    %esp,%ebp
     367:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     36a:	68 e8 44 00 00       	push   $0x44e8
     36f:	ff 35 f0 64 00 00    	pushl  0x64f0
     375:	e8 76 3d 00 00       	call   40f0 <printf>
  if(mkdir("oidir") < 0){
     37a:	c7 04 24 f7 44 00 00 	movl   $0x44f7,(%esp)
     381:	e8 55 3c 00 00       	call   3fdb <mkdir>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	0f 88 b7 00 00 00    	js     448 <openiputtest+0xe8>
  pid = fork();
     391:	e8 d5 3b 00 00       	call   3f6b <fork>
  if(pid < 0){
     396:	85 c0                	test   %eax,%eax
     398:	0f 88 8c 00 00 00    	js     42a <openiputtest+0xca>
  if(pid == 0){
     39e:	75 38                	jne    3d8 <openiputtest+0x78>
    int fd = open("oidir", O_RDWR);
     3a0:	83 ec 08             	sub    $0x8,%esp
     3a3:	6a 02                	push   $0x2
     3a5:	68 f7 44 00 00       	push   $0x44f7
     3aa:	e8 04 3c 00 00       	call   3fb3 <open>
    if(fd >= 0){
     3af:	83 c4 10             	add    $0x10,%esp
     3b2:	85 c0                	test   %eax,%eax
     3b4:	78 6a                	js     420 <openiputtest+0xc0>
      printf(stdout, "open directory for write succeeded\n");
     3b6:	83 ec 08             	sub    $0x8,%esp
     3b9:	68 7c 54 00 00       	push   $0x547c
     3be:	ff 35 f0 64 00 00    	pushl  0x64f0
     3c4:	e8 27 3d 00 00       	call   40f0 <printf>
      exit(0);
     3c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3d0:	e8 9e 3b 00 00       	call   3f73 <exit>
     3d5:	8d 76 00             	lea    0x0(%esi),%esi
  sleep(1);
     3d8:	83 ec 0c             	sub    $0xc,%esp
     3db:	6a 01                	push   $0x1
     3dd:	e8 21 3c 00 00       	call   4003 <sleep>
  if(unlink("oidir") != 0){
     3e2:	c7 04 24 f7 44 00 00 	movl   $0x44f7,(%esp)
     3e9:	e8 d5 3b 00 00       	call   3fc3 <unlink>
     3ee:	83 c4 10             	add    $0x10,%esp
     3f1:	85 c0                	test   %eax,%eax
     3f3:	75 71                	jne    466 <openiputtest+0x106>
  wait(0);
     3f5:	83 ec 0c             	sub    $0xc,%esp
     3f8:	6a 00                	push   $0x0
     3fa:	e8 7c 3b 00 00       	call   3f7b <wait>
  printf(stdout, "openiput test ok\n");
     3ff:	58                   	pop    %eax
     400:	5a                   	pop    %edx
     401:	68 20 45 00 00       	push   $0x4520
     406:	ff 35 f0 64 00 00    	pushl  0x64f0
     40c:	e8 df 3c 00 00       	call   40f0 <printf>
}
     411:	83 c4 10             	add    $0x10,%esp
     414:	c9                   	leave  
     415:	c3                   	ret    
     416:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     41d:	8d 76 00             	lea    0x0(%esi),%esi
    exit(0);
     420:	83 ec 0c             	sub    $0xc,%esp
     423:	6a 00                	push   $0x0
     425:	e8 49 3b 00 00       	call   3f73 <exit>
    printf(stdout, "fork failed\n");
     42a:	50                   	push   %eax
     42b:	50                   	push   %eax
     42c:	68 99 53 00 00       	push   $0x5399
     431:	ff 35 f0 64 00 00    	pushl  0x64f0
     437:	e8 b4 3c 00 00       	call   40f0 <printf>
    exit(-1);
     43c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     443:	e8 2b 3b 00 00       	call   3f73 <exit>
    printf(stdout, "mkdir oidir failed\n");
     448:	50                   	push   %eax
     449:	50                   	push   %eax
     44a:	68 fd 44 00 00       	push   $0x44fd
     44f:	ff 35 f0 64 00 00    	pushl  0x64f0
     455:	e8 96 3c 00 00       	call   40f0 <printf>
    exit(-1);
     45a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     461:	e8 0d 3b 00 00       	call   3f73 <exit>
    printf(stdout, "unlink failed\n");
     466:	51                   	push   %ecx
     467:	51                   	push   %ecx
     468:	68 11 45 00 00       	push   $0x4511
     46d:	ff 35 f0 64 00 00    	pushl  0x64f0
     473:	e8 78 3c 00 00       	call   40f0 <printf>
    exit(-1);
     478:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     47f:	e8 ef 3a 00 00       	call   3f73 <exit>
     484:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     48f:	90                   	nop

00000490 <opentest>:
{
     490:	f3 0f 1e fb          	endbr32 
     494:	55                   	push   %ebp
     495:	89 e5                	mov    %esp,%ebp
     497:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     49a:	68 32 45 00 00       	push   $0x4532
     49f:	ff 35 f0 64 00 00    	pushl  0x64f0
     4a5:	e8 46 3c 00 00       	call   40f0 <printf>
  fd = open("echo", 0);
     4aa:	58                   	pop    %eax
     4ab:	5a                   	pop    %edx
     4ac:	6a 00                	push   $0x0
     4ae:	68 3d 45 00 00       	push   $0x453d
     4b3:	e8 fb 3a 00 00       	call   3fb3 <open>
  if(fd < 0){
     4b8:	83 c4 10             	add    $0x10,%esp
     4bb:	85 c0                	test   %eax,%eax
     4bd:	78 36                	js     4f5 <opentest+0x65>
  close(fd);
     4bf:	83 ec 0c             	sub    $0xc,%esp
     4c2:	50                   	push   %eax
     4c3:	e8 d3 3a 00 00       	call   3f9b <close>
  fd = open("doesnotexist", 0);
     4c8:	5a                   	pop    %edx
     4c9:	59                   	pop    %ecx
     4ca:	6a 00                	push   $0x0
     4cc:	68 55 45 00 00       	push   $0x4555
     4d1:	e8 dd 3a 00 00       	call   3fb3 <open>
  if(fd >= 0){
     4d6:	83 c4 10             	add    $0x10,%esp
     4d9:	85 c0                	test   %eax,%eax
     4db:	79 36                	jns    513 <opentest+0x83>
  printf(stdout, "open test ok\n");
     4dd:	83 ec 08             	sub    $0x8,%esp
     4e0:	68 80 45 00 00       	push   $0x4580
     4e5:	ff 35 f0 64 00 00    	pushl  0x64f0
     4eb:	e8 00 3c 00 00       	call   40f0 <printf>
}
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	c9                   	leave  
     4f4:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     4f5:	50                   	push   %eax
     4f6:	50                   	push   %eax
     4f7:	68 42 45 00 00       	push   $0x4542
     4fc:	ff 35 f0 64 00 00    	pushl  0x64f0
     502:	e8 e9 3b 00 00       	call   40f0 <printf>
    exit(-1);
     507:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     50e:	e8 60 3a 00 00       	call   3f73 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     513:	50                   	push   %eax
     514:	50                   	push   %eax
     515:	68 62 45 00 00       	push   $0x4562
     51a:	ff 35 f0 64 00 00    	pushl  0x64f0
     520:	e8 cb 3b 00 00       	call   40f0 <printf>
    exit(0);
     525:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     52c:	e8 42 3a 00 00       	call   3f73 <exit>
     531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     538:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     53f:	90                   	nop

00000540 <writetest>:
{
     540:	f3 0f 1e fb          	endbr32 
     544:	55                   	push   %ebp
     545:	89 e5                	mov    %esp,%ebp
     547:	56                   	push   %esi
     548:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     549:	83 ec 08             	sub    $0x8,%esp
     54c:	68 8e 45 00 00       	push   $0x458e
     551:	ff 35 f0 64 00 00    	pushl  0x64f0
     557:	e8 94 3b 00 00       	call   40f0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     55c:	58                   	pop    %eax
     55d:	5a                   	pop    %edx
     55e:	68 02 02 00 00       	push   $0x202
     563:	68 9f 45 00 00       	push   $0x459f
     568:	e8 46 3a 00 00       	call   3fb3 <open>
  if(fd >= 0){
     56d:	83 c4 10             	add    $0x10,%esp
     570:	85 c0                	test   %eax,%eax
     572:	0f 88 b3 01 00 00    	js     72b <writetest+0x1eb>
    printf(stdout, "creat small succeeded; ok\n");
     578:	83 ec 08             	sub    $0x8,%esp
     57b:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
     57d:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     57f:	68 a5 45 00 00       	push   $0x45a5
     584:	ff 35 f0 64 00 00    	pushl  0x64f0
     58a:	e8 61 3b 00 00       	call   40f0 <printf>
     58f:	83 c4 10             	add    $0x10,%esp
     592:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     598:	83 ec 04             	sub    $0x4,%esp
     59b:	6a 0a                	push   $0xa
     59d:	68 dc 45 00 00       	push   $0x45dc
     5a2:	56                   	push   %esi
     5a3:	e8 eb 39 00 00       	call   3f93 <write>
     5a8:	83 c4 10             	add    $0x10,%esp
     5ab:	83 f8 0a             	cmp    $0xa,%eax
     5ae:	0f 85 dd 00 00 00    	jne    691 <writetest+0x151>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     5b4:	83 ec 04             	sub    $0x4,%esp
     5b7:	6a 0a                	push   $0xa
     5b9:	68 e7 45 00 00       	push   $0x45e7
     5be:	56                   	push   %esi
     5bf:	e8 cf 39 00 00       	call   3f93 <write>
     5c4:	83 c4 10             	add    $0x10,%esp
     5c7:	83 f8 0a             	cmp    $0xa,%eax
     5ca:	0f 85 e1 00 00 00    	jne    6b1 <writetest+0x171>
  for(i = 0; i < 100; i++){
     5d0:	83 c3 01             	add    $0x1,%ebx
     5d3:	83 fb 64             	cmp    $0x64,%ebx
     5d6:	75 c0                	jne    598 <writetest+0x58>
  printf(stdout, "writes ok\n");
     5d8:	83 ec 08             	sub    $0x8,%esp
     5db:	68 f2 45 00 00       	push   $0x45f2
     5e0:	ff 35 f0 64 00 00    	pushl  0x64f0
     5e6:	e8 05 3b 00 00       	call   40f0 <printf>
  close(fd);
     5eb:	89 34 24             	mov    %esi,(%esp)
     5ee:	e8 a8 39 00 00       	call   3f9b <close>
  fd = open("small", O_RDONLY);
     5f3:	5b                   	pop    %ebx
     5f4:	5e                   	pop    %esi
     5f5:	6a 00                	push   $0x0
     5f7:	68 9f 45 00 00       	push   $0x459f
     5fc:	e8 b2 39 00 00       	call   3fb3 <open>
  if(fd >= 0){
     601:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
     604:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     606:	85 c0                	test   %eax,%eax
     608:	0f 88 c3 00 00 00    	js     6d1 <writetest+0x191>
    printf(stdout, "open small succeeded ok\n");
     60e:	83 ec 08             	sub    $0x8,%esp
     611:	68 fd 45 00 00       	push   $0x45fd
     616:	ff 35 f0 64 00 00    	pushl  0x64f0
     61c:	e8 cf 3a 00 00       	call   40f0 <printf>
  i = read(fd, buf, 2000);
     621:	83 c4 0c             	add    $0xc,%esp
     624:	68 d0 07 00 00       	push   $0x7d0
     629:	68 e0 8c 00 00       	push   $0x8ce0
     62e:	53                   	push   %ebx
     62f:	e8 57 39 00 00       	call   3f8b <read>
  if(i == 2000){
     634:	83 c4 10             	add    $0x10,%esp
     637:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     63c:	0f 85 ad 00 00 00    	jne    6ef <writetest+0x1af>
    printf(stdout, "read succeeded ok\n");
     642:	83 ec 08             	sub    $0x8,%esp
     645:	68 31 46 00 00       	push   $0x4631
     64a:	ff 35 f0 64 00 00    	pushl  0x64f0
     650:	e8 9b 3a 00 00       	call   40f0 <printf>
  close(fd);
     655:	89 1c 24             	mov    %ebx,(%esp)
     658:	e8 3e 39 00 00       	call   3f9b <close>
  if(unlink("small") < 0){
     65d:	c7 04 24 9f 45 00 00 	movl   $0x459f,(%esp)
     664:	e8 5a 39 00 00       	call   3fc3 <unlink>
     669:	83 c4 10             	add    $0x10,%esp
     66c:	85 c0                	test   %eax,%eax
     66e:	0f 88 99 00 00 00    	js     70d <writetest+0x1cd>
  printf(stdout, "small file test ok\n");
     674:	83 ec 08             	sub    $0x8,%esp
     677:	68 59 46 00 00       	push   $0x4659
     67c:	ff 35 f0 64 00 00    	pushl  0x64f0
     682:	e8 69 3a 00 00       	call   40f0 <printf>
}
     687:	83 c4 10             	add    $0x10,%esp
     68a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     68d:	5b                   	pop    %ebx
     68e:	5e                   	pop    %esi
     68f:	5d                   	pop    %ebp
     690:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     691:	83 ec 04             	sub    $0x4,%esp
     694:	53                   	push   %ebx
     695:	68 a0 54 00 00       	push   $0x54a0
     69a:	ff 35 f0 64 00 00    	pushl  0x64f0
     6a0:	e8 4b 3a 00 00       	call   40f0 <printf>
      exit(-1);
     6a5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     6ac:	e8 c2 38 00 00       	call   3f73 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     6b1:	83 ec 04             	sub    $0x4,%esp
     6b4:	53                   	push   %ebx
     6b5:	68 c4 54 00 00       	push   $0x54c4
     6ba:	ff 35 f0 64 00 00    	pushl  0x64f0
     6c0:	e8 2b 3a 00 00       	call   40f0 <printf>
      exit(-1);
     6c5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     6cc:	e8 a2 38 00 00       	call   3f73 <exit>
    printf(stdout, "error: open small failed!\n");
     6d1:	51                   	push   %ecx
     6d2:	51                   	push   %ecx
     6d3:	68 16 46 00 00       	push   $0x4616
     6d8:	ff 35 f0 64 00 00    	pushl  0x64f0
     6de:	e8 0d 3a 00 00       	call   40f0 <printf>
    exit(-1);
     6e3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     6ea:	e8 84 38 00 00       	call   3f73 <exit>
    printf(stdout, "read failed\n");
     6ef:	52                   	push   %edx
     6f0:	52                   	push   %edx
     6f1:	68 5d 49 00 00       	push   $0x495d
     6f6:	ff 35 f0 64 00 00    	pushl  0x64f0
     6fc:	e8 ef 39 00 00       	call   40f0 <printf>
    exit(-1);
     701:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     708:	e8 66 38 00 00       	call   3f73 <exit>
    printf(stdout, "unlink small failed\n");
     70d:	50                   	push   %eax
     70e:	50                   	push   %eax
     70f:	68 44 46 00 00       	push   $0x4644
     714:	ff 35 f0 64 00 00    	pushl  0x64f0
     71a:	e8 d1 39 00 00       	call   40f0 <printf>
    exit(-1);
     71f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     726:	e8 48 38 00 00       	call   3f73 <exit>
    printf(stdout, "error: creat small failed!\n");
     72b:	50                   	push   %eax
     72c:	50                   	push   %eax
     72d:	68 c0 45 00 00       	push   $0x45c0
     732:	ff 35 f0 64 00 00    	pushl  0x64f0
     738:	e8 b3 39 00 00       	call   40f0 <printf>
    exit(-1);
     73d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     744:	e8 2a 38 00 00       	call   3f73 <exit>
     749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000750 <writetest1>:
{
     750:	f3 0f 1e fb          	endbr32 
     754:	55                   	push   %ebp
     755:	89 e5                	mov    %esp,%ebp
     757:	56                   	push   %esi
     758:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     759:	83 ec 08             	sub    $0x8,%esp
     75c:	68 6d 46 00 00       	push   $0x466d
     761:	ff 35 f0 64 00 00    	pushl  0x64f0
     767:	e8 84 39 00 00       	call   40f0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     76c:	58                   	pop    %eax
     76d:	5a                   	pop    %edx
     76e:	68 02 02 00 00       	push   $0x202
     773:	68 e7 46 00 00       	push   $0x46e7
     778:	e8 36 38 00 00       	call   3fb3 <open>
  if(fd < 0){
     77d:	83 c4 10             	add    $0x10,%esp
     780:	85 c0                	test   %eax,%eax
     782:	0f 88 84 01 00 00    	js     90c <writetest1+0x1bc>
     788:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     78a:	31 db                	xor    %ebx,%ebx
     78c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
     790:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     793:	89 1d e0 8c 00 00    	mov    %ebx,0x8ce0
    if(write(fd, buf, 512) != 512){
     799:	68 00 02 00 00       	push   $0x200
     79e:	68 e0 8c 00 00       	push   $0x8ce0
     7a3:	56                   	push   %esi
     7a4:	e8 ea 37 00 00       	call   3f93 <write>
     7a9:	83 c4 10             	add    $0x10,%esp
     7ac:	3d 00 02 00 00       	cmp    $0x200,%eax
     7b1:	0f 85 b7 00 00 00    	jne    86e <writetest1+0x11e>
  for(i = 0; i < MAXFILE; i++){
     7b7:	83 c3 01             	add    $0x1,%ebx
     7ba:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     7c0:	75 ce                	jne    790 <writetest1+0x40>
  close(fd);
     7c2:	83 ec 0c             	sub    $0xc,%esp
     7c5:	56                   	push   %esi
     7c6:	e8 d0 37 00 00       	call   3f9b <close>
  fd = open("big", O_RDONLY);
     7cb:	5b                   	pop    %ebx
     7cc:	5e                   	pop    %esi
     7cd:	6a 00                	push   $0x0
     7cf:	68 e7 46 00 00       	push   $0x46e7
     7d4:	e8 da 37 00 00       	call   3fb3 <open>
  if(fd < 0){
     7d9:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
     7dc:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     7de:	85 c0                	test   %eax,%eax
     7e0:	0f 88 08 01 00 00    	js     8ee <writetest1+0x19e>
  n = 0;
     7e6:	31 f6                	xor    %esi,%esi
     7e8:	eb 21                	jmp    80b <writetest1+0xbb>
     7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     7f0:	3d 00 02 00 00       	cmp    $0x200,%eax
     7f5:	0f 85 b1 00 00 00    	jne    8ac <writetest1+0x15c>
    if(((int*)buf)[0] != n){
     7fb:	a1 e0 8c 00 00       	mov    0x8ce0,%eax
     800:	39 f0                	cmp    %esi,%eax
     802:	0f 85 86 00 00 00    	jne    88e <writetest1+0x13e>
    n++;
     808:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
     80b:	83 ec 04             	sub    $0x4,%esp
     80e:	68 00 02 00 00       	push   $0x200
     813:	68 e0 8c 00 00       	push   $0x8ce0
     818:	53                   	push   %ebx
     819:	e8 6d 37 00 00       	call   3f8b <read>
    if(i == 0){
     81e:	83 c4 10             	add    $0x10,%esp
     821:	85 c0                	test   %eax,%eax
     823:	75 cb                	jne    7f0 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     825:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
     82b:	0f 84 9b 00 00 00    	je     8cc <writetest1+0x17c>
  close(fd);
     831:	83 ec 0c             	sub    $0xc,%esp
     834:	53                   	push   %ebx
     835:	e8 61 37 00 00       	call   3f9b <close>
  if(unlink("big") < 0){
     83a:	c7 04 24 e7 46 00 00 	movl   $0x46e7,(%esp)
     841:	e8 7d 37 00 00       	call   3fc3 <unlink>
     846:	83 c4 10             	add    $0x10,%esp
     849:	85 c0                	test   %eax,%eax
     84b:	0f 88 d9 00 00 00    	js     92a <writetest1+0x1da>
  printf(stdout, "big files ok\n");
     851:	83 ec 08             	sub    $0x8,%esp
     854:	68 0e 47 00 00       	push   $0x470e
     859:	ff 35 f0 64 00 00    	pushl  0x64f0
     85f:	e8 8c 38 00 00       	call   40f0 <printf>
}
     864:	83 c4 10             	add    $0x10,%esp
     867:	8d 65 f8             	lea    -0x8(%ebp),%esp
     86a:	5b                   	pop    %ebx
     86b:	5e                   	pop    %esi
     86c:	5d                   	pop    %ebp
     86d:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     86e:	83 ec 04             	sub    $0x4,%esp
     871:	53                   	push   %ebx
     872:	68 97 46 00 00       	push   $0x4697
     877:	ff 35 f0 64 00 00    	pushl  0x64f0
     87d:	e8 6e 38 00 00       	call   40f0 <printf>
      exit(-1);
     882:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     889:	e8 e5 36 00 00       	call   3f73 <exit>
      printf(stdout, "read content of block %d is %d\n",
     88e:	50                   	push   %eax
     88f:	56                   	push   %esi
     890:	68 e8 54 00 00       	push   $0x54e8
     895:	ff 35 f0 64 00 00    	pushl  0x64f0
     89b:	e8 50 38 00 00       	call   40f0 <printf>
      exit(0);
     8a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8a7:	e8 c7 36 00 00       	call   3f73 <exit>
      printf(stdout, "read failed %d\n", i);
     8ac:	83 ec 04             	sub    $0x4,%esp
     8af:	50                   	push   %eax
     8b0:	68 eb 46 00 00       	push   $0x46eb
     8b5:	ff 35 f0 64 00 00    	pushl  0x64f0
     8bb:	e8 30 38 00 00       	call   40f0 <printf>
      exit(-1);
     8c0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     8c7:	e8 a7 36 00 00       	call   3f73 <exit>
        printf(stdout, "read only %d blocks from big", n);
     8cc:	52                   	push   %edx
     8cd:	68 8b 00 00 00       	push   $0x8b
     8d2:	68 ce 46 00 00       	push   $0x46ce
     8d7:	ff 35 f0 64 00 00    	pushl  0x64f0
     8dd:	e8 0e 38 00 00       	call   40f0 <printf>
        exit(-1);
     8e2:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     8e9:	e8 85 36 00 00       	call   3f73 <exit>
    printf(stdout, "error: open big failed!\n");
     8ee:	51                   	push   %ecx
     8ef:	51                   	push   %ecx
     8f0:	68 b5 46 00 00       	push   $0x46b5
     8f5:	ff 35 f0 64 00 00    	pushl  0x64f0
     8fb:	e8 f0 37 00 00       	call   40f0 <printf>
    exit(-1);
     900:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     907:	e8 67 36 00 00       	call   3f73 <exit>
    printf(stdout, "error: creat big failed!\n");
     90c:	50                   	push   %eax
     90d:	50                   	push   %eax
     90e:	68 7d 46 00 00       	push   $0x467d
     913:	ff 35 f0 64 00 00    	pushl  0x64f0
     919:	e8 d2 37 00 00       	call   40f0 <printf>
    exit(-1);
     91e:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     925:	e8 49 36 00 00       	call   3f73 <exit>
    printf(stdout, "unlink big failed\n");
     92a:	50                   	push   %eax
     92b:	50                   	push   %eax
     92c:	68 fb 46 00 00       	push   $0x46fb
     931:	ff 35 f0 64 00 00    	pushl  0x64f0
     937:	e8 b4 37 00 00       	call   40f0 <printf>
    exit(-1);
     93c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     943:	e8 2b 36 00 00       	call   3f73 <exit>
     948:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     94f:	90                   	nop

00000950 <createtest>:
{
     950:	f3 0f 1e fb          	endbr32 
     954:	55                   	push   %ebp
     955:	89 e5                	mov    %esp,%ebp
     957:	53                   	push   %ebx
  name[2] = '\0';
     958:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     95d:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     960:	68 08 55 00 00       	push   $0x5508
     965:	ff 35 f0 64 00 00    	pushl  0x64f0
     96b:	e8 80 37 00 00       	call   40f0 <printf>
  name[0] = 'a';
     970:	c6 05 e0 ac 00 00 61 	movb   $0x61,0xace0
  name[2] = '\0';
     977:	83 c4 10             	add    $0x10,%esp
     97a:	c6 05 e2 ac 00 00 00 	movb   $0x0,0xace2
  for(i = 0; i < 52; i++){
     981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    fd = open(name, O_CREATE|O_RDWR);
     988:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     98b:	88 1d e1 ac 00 00    	mov    %bl,0xace1
    fd = open(name, O_CREATE|O_RDWR);
     991:	83 c3 01             	add    $0x1,%ebx
     994:	68 02 02 00 00       	push   $0x202
     999:	68 e0 ac 00 00       	push   $0xace0
     99e:	e8 10 36 00 00       	call   3fb3 <open>
    close(fd);
     9a3:	89 04 24             	mov    %eax,(%esp)
     9a6:	e8 f0 35 00 00       	call   3f9b <close>
  for(i = 0; i < 52; i++){
     9ab:	83 c4 10             	add    $0x10,%esp
     9ae:	80 fb 64             	cmp    $0x64,%bl
     9b1:	75 d5                	jne    988 <createtest+0x38>
  name[0] = 'a';
     9b3:	c6 05 e0 ac 00 00 61 	movb   $0x61,0xace0
  name[2] = '\0';
     9ba:	bb 30 00 00 00       	mov    $0x30,%ebx
     9bf:	c6 05 e2 ac 00 00 00 	movb   $0x0,0xace2
  for(i = 0; i < 52; i++){
     9c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     9cd:	8d 76 00             	lea    0x0(%esi),%esi
    unlink(name);
     9d0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     9d3:	88 1d e1 ac 00 00    	mov    %bl,0xace1
    unlink(name);
     9d9:	83 c3 01             	add    $0x1,%ebx
     9dc:	68 e0 ac 00 00       	push   $0xace0
     9e1:	e8 dd 35 00 00       	call   3fc3 <unlink>
  for(i = 0; i < 52; i++){
     9e6:	83 c4 10             	add    $0x10,%esp
     9e9:	80 fb 64             	cmp    $0x64,%bl
     9ec:	75 e2                	jne    9d0 <createtest+0x80>
  printf(stdout, "many creates, followed by unlink; ok\n");
     9ee:	83 ec 08             	sub    $0x8,%esp
     9f1:	68 30 55 00 00       	push   $0x5530
     9f6:	ff 35 f0 64 00 00    	pushl  0x64f0
     9fc:	e8 ef 36 00 00       	call   40f0 <printf>
}
     a01:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a04:	83 c4 10             	add    $0x10,%esp
     a07:	c9                   	leave  
     a08:	c3                   	ret    
     a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a10 <dirtest>:
{
     a10:	f3 0f 1e fb          	endbr32 
     a14:	55                   	push   %ebp
     a15:	89 e5                	mov    %esp,%ebp
     a17:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     a1a:	68 1c 47 00 00       	push   $0x471c
     a1f:	ff 35 f0 64 00 00    	pushl  0x64f0
     a25:	e8 c6 36 00 00       	call   40f0 <printf>
  if(mkdir("dir0") < 0){
     a2a:	c7 04 24 28 47 00 00 	movl   $0x4728,(%esp)
     a31:	e8 a5 35 00 00       	call   3fdb <mkdir>
     a36:	83 c4 10             	add    $0x10,%esp
     a39:	85 c0                	test   %eax,%eax
     a3b:	78 58                	js     a95 <dirtest+0x85>
  if(chdir("dir0") < 0){
     a3d:	83 ec 0c             	sub    $0xc,%esp
     a40:	68 28 47 00 00       	push   $0x4728
     a45:	e8 99 35 00 00       	call   3fe3 <chdir>
     a4a:	83 c4 10             	add    $0x10,%esp
     a4d:	85 c0                	test   %eax,%eax
     a4f:	0f 88 9a 00 00 00    	js     aef <dirtest+0xdf>
  if(chdir("..") < 0){
     a55:	83 ec 0c             	sub    $0xc,%esp
     a58:	68 cd 4c 00 00       	push   $0x4ccd
     a5d:	e8 81 35 00 00       	call   3fe3 <chdir>
     a62:	83 c4 10             	add    $0x10,%esp
     a65:	85 c0                	test   %eax,%eax
     a67:	78 68                	js     ad1 <dirtest+0xc1>
  if(unlink("dir0") < 0){
     a69:	83 ec 0c             	sub    $0xc,%esp
     a6c:	68 28 47 00 00       	push   $0x4728
     a71:	e8 4d 35 00 00       	call   3fc3 <unlink>
     a76:	83 c4 10             	add    $0x10,%esp
     a79:	85 c0                	test   %eax,%eax
     a7b:	78 36                	js     ab3 <dirtest+0xa3>
  printf(stdout, "mkdir test ok\n");
     a7d:	83 ec 08             	sub    $0x8,%esp
     a80:	68 65 47 00 00       	push   $0x4765
     a85:	ff 35 f0 64 00 00    	pushl  0x64f0
     a8b:	e8 60 36 00 00       	call   40f0 <printf>
}
     a90:	83 c4 10             	add    $0x10,%esp
     a93:	c9                   	leave  
     a94:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     a95:	50                   	push   %eax
     a96:	50                   	push   %eax
     a97:	68 58 44 00 00       	push   $0x4458
     a9c:	ff 35 f0 64 00 00    	pushl  0x64f0
     aa2:	e8 49 36 00 00       	call   40f0 <printf>
    exit(-1);
     aa7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     aae:	e8 c0 34 00 00       	call   3f73 <exit>
    printf(stdout, "unlink dir0 failed\n");
     ab3:	50                   	push   %eax
     ab4:	50                   	push   %eax
     ab5:	68 51 47 00 00       	push   $0x4751
     aba:	ff 35 f0 64 00 00    	pushl  0x64f0
     ac0:	e8 2b 36 00 00       	call   40f0 <printf>
    exit(-1);
     ac5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     acc:	e8 a2 34 00 00       	call   3f73 <exit>
    printf(stdout, "chdir .. failed\n");
     ad1:	52                   	push   %edx
     ad2:	52                   	push   %edx
     ad3:	68 40 47 00 00       	push   $0x4740
     ad8:	ff 35 f0 64 00 00    	pushl  0x64f0
     ade:	e8 0d 36 00 00       	call   40f0 <printf>
    exit(-1);
     ae3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     aea:	e8 84 34 00 00       	call   3f73 <exit>
    printf(stdout, "chdir dir0 failed\n");
     aef:	51                   	push   %ecx
     af0:	51                   	push   %ecx
     af1:	68 2d 47 00 00       	push   $0x472d
     af6:	ff 35 f0 64 00 00    	pushl  0x64f0
     afc:	e8 ef 35 00 00       	call   40f0 <printf>
    exit(-1);
     b01:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     b08:	e8 66 34 00 00       	call   3f73 <exit>
     b0d:	8d 76 00             	lea    0x0(%esi),%esi

00000b10 <exectest>:
{
     b10:	f3 0f 1e fb          	endbr32 
     b14:	55                   	push   %ebp
     b15:	89 e5                	mov    %esp,%ebp
     b17:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     b1a:	68 74 47 00 00       	push   $0x4774
     b1f:	ff 35 f0 64 00 00    	pushl  0x64f0
     b25:	e8 c6 35 00 00       	call   40f0 <printf>
  if(exec("echo", echoargv) < 0){
     b2a:	5a                   	pop    %edx
     b2b:	59                   	pop    %ecx
     b2c:	68 f4 64 00 00       	push   $0x64f4
     b31:	68 3d 45 00 00       	push   $0x453d
     b36:	e8 70 34 00 00       	call   3fab <exec>
     b3b:	83 c4 10             	add    $0x10,%esp
     b3e:	85 c0                	test   %eax,%eax
     b40:	78 02                	js     b44 <exectest+0x34>
}
     b42:	c9                   	leave  
     b43:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     b44:	50                   	push   %eax
     b45:	50                   	push   %eax
     b46:	68 7f 47 00 00       	push   $0x477f
     b4b:	ff 35 f0 64 00 00    	pushl  0x64f0
     b51:	e8 9a 35 00 00       	call   40f0 <printf>
    exit(-1);
     b56:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     b5d:	e8 11 34 00 00       	call   3f73 <exit>
     b62:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b70 <pipe1>:
{
     b70:	f3 0f 1e fb          	endbr32 
     b74:	55                   	push   %ebp
     b75:	89 e5                	mov    %esp,%ebp
     b77:	57                   	push   %edi
     b78:	56                   	push   %esi
  if(pipe(fds) != 0){
     b79:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     b7c:	53                   	push   %ebx
     b7d:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     b80:	50                   	push   %eax
     b81:	e8 fd 33 00 00       	call   3f83 <pipe>
     b86:	83 c4 10             	add    $0x10,%esp
     b89:	85 c0                	test   %eax,%eax
     b8b:	0f 85 4f 01 00 00    	jne    ce0 <pipe1+0x170>
  pid = fork();
     b91:	e8 d5 33 00 00       	call   3f6b <fork>
  if(pid == 0){
     b96:	85 c0                	test   %eax,%eax
     b98:	0f 84 8d 00 00 00    	je     c2b <pipe1+0xbb>
  } else if(pid > 0){
     b9e:	0f 8e 56 01 00 00    	jle    cfa <pipe1+0x18a>
    close(fds[1]);
     ba4:	83 ec 0c             	sub    $0xc,%esp
     ba7:	ff 75 e4             	pushl  -0x1c(%ebp)
  seq = 0;
     baa:	31 db                	xor    %ebx,%ebx
    cc = 1;
     bac:	be 01 00 00 00       	mov    $0x1,%esi
    close(fds[1]);
     bb1:	e8 e5 33 00 00       	call   3f9b <close>
    total = 0;
     bb6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     bbd:	83 c4 10             	add    $0x10,%esp
     bc0:	83 ec 04             	sub    $0x4,%esp
     bc3:	56                   	push   %esi
     bc4:	68 e0 8c 00 00       	push   $0x8ce0
     bc9:	ff 75 e0             	pushl  -0x20(%ebp)
     bcc:	e8 ba 33 00 00       	call   3f8b <read>
     bd1:	83 c4 10             	add    $0x10,%esp
     bd4:	89 c7                	mov    %eax,%edi
     bd6:	85 c0                	test   %eax,%eax
     bd8:	0f 8e b0 00 00 00    	jle    c8e <pipe1+0x11e>
     bde:	8d 0c 3b             	lea    (%ebx,%edi,1),%ecx
      for(i = 0; i < n; i++){
     be1:	31 c0                	xor    %eax,%eax
     be3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     be7:	90                   	nop
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     be8:	89 da                	mov    %ebx,%edx
     bea:	83 c3 01             	add    $0x1,%ebx
     bed:	38 90 e0 8c 00 00    	cmp    %dl,0x8ce0(%eax)
     bf3:	75 1c                	jne    c11 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     bf5:	83 c0 01             	add    $0x1,%eax
     bf8:	39 d9                	cmp    %ebx,%ecx
     bfa:	75 ec                	jne    be8 <pipe1+0x78>
      cc = cc * 2;
     bfc:	01 f6                	add    %esi,%esi
      total += n;
     bfe:	01 7d d4             	add    %edi,-0x2c(%ebp)
     c01:	b8 00 20 00 00       	mov    $0x2000,%eax
     c06:	81 fe 00 20 00 00    	cmp    $0x2000,%esi
     c0c:	0f 4f f0             	cmovg  %eax,%esi
     c0f:	eb af                	jmp    bc0 <pipe1+0x50>
          printf(1, "pipe1 oops 2\n");
     c11:	83 ec 08             	sub    $0x8,%esp
     c14:	68 ae 47 00 00       	push   $0x47ae
     c19:	6a 01                	push   $0x1
     c1b:	e8 d0 34 00 00       	call   40f0 <printf>
          return;
     c20:	83 c4 10             	add    $0x10,%esp
}
     c23:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c26:	5b                   	pop    %ebx
     c27:	5e                   	pop    %esi
     c28:	5f                   	pop    %edi
     c29:	5d                   	pop    %ebp
     c2a:	c3                   	ret    
    close(fds[0]);
     c2b:	83 ec 0c             	sub    $0xc,%esp
     c2e:	ff 75 e0             	pushl  -0x20(%ebp)
  seq = 0;
     c31:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
     c33:	e8 63 33 00 00       	call   3f9b <close>
     c38:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
     c3b:	31 c0                	xor    %eax,%eax
     c3d:	8d 76 00             	lea    0x0(%esi),%esi
        buf[i] = seq++;
     c40:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
     c43:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
     c46:	88 90 df 8c 00 00    	mov    %dl,0x8cdf(%eax)
      for(i = 0; i < 1033; i++)
     c4c:	3d 09 04 00 00       	cmp    $0x409,%eax
     c51:	75 ed                	jne    c40 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
     c53:	83 ec 04             	sub    $0x4,%esp
     c56:	81 c3 09 04 00 00    	add    $0x409,%ebx
     c5c:	68 09 04 00 00       	push   $0x409
     c61:	68 e0 8c 00 00       	push   $0x8ce0
     c66:	ff 75 e4             	pushl  -0x1c(%ebp)
     c69:	e8 25 33 00 00       	call   3f93 <write>
     c6e:	83 c4 10             	add    $0x10,%esp
     c71:	3d 09 04 00 00       	cmp    $0x409,%eax
     c76:	0f 85 98 00 00 00    	jne    d14 <pipe1+0x1a4>
    for(n = 0; n < 5; n++){
     c7c:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     c82:	75 b7                	jne    c3b <pipe1+0xcb>
    exit(0);
     c84:	83 ec 0c             	sub    $0xc,%esp
     c87:	6a 00                	push   $0x0
     c89:	e8 e5 32 00 00       	call   3f73 <exit>
    if(total != 5 * 1033){
     c8e:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     c95:	75 2d                	jne    cc4 <pipe1+0x154>
    close(fds[0]);
     c97:	83 ec 0c             	sub    $0xc,%esp
     c9a:	ff 75 e0             	pushl  -0x20(%ebp)
     c9d:	e8 f9 32 00 00       	call   3f9b <close>
    wait(0);
     ca2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ca9:	e8 cd 32 00 00       	call   3f7b <wait>
  printf(1, "pipe1 ok\n");
     cae:	5a                   	pop    %edx
     caf:	59                   	pop    %ecx
     cb0:	68 d3 47 00 00       	push   $0x47d3
     cb5:	6a 01                	push   $0x1
     cb7:	e8 34 34 00 00       	call   40f0 <printf>
     cbc:	83 c4 10             	add    $0x10,%esp
     cbf:	e9 5f ff ff ff       	jmp    c23 <pipe1+0xb3>
      printf(1, "pipe1 oops 3 total %d\n", total);
     cc4:	53                   	push   %ebx
     cc5:	ff 75 d4             	pushl  -0x2c(%ebp)
     cc8:	68 bc 47 00 00       	push   $0x47bc
     ccd:	6a 01                	push   $0x1
     ccf:	e8 1c 34 00 00       	call   40f0 <printf>
      exit(-1);
     cd4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     cdb:	e8 93 32 00 00       	call   3f73 <exit>
    printf(1, "pipe() failed\n");
     ce0:	57                   	push   %edi
     ce1:	57                   	push   %edi
     ce2:	68 91 47 00 00       	push   $0x4791
     ce7:	6a 01                	push   $0x1
     ce9:	e8 02 34 00 00       	call   40f0 <printf>
    exit(-1);
     cee:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     cf5:	e8 79 32 00 00       	call   3f73 <exit>
    printf(1, "fork() failed\n");
     cfa:	50                   	push   %eax
     cfb:	50                   	push   %eax
     cfc:	68 dd 47 00 00       	push   $0x47dd
     d01:	6a 01                	push   $0x1
     d03:	e8 e8 33 00 00       	call   40f0 <printf>
    exit(-1);
     d08:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     d0f:	e8 5f 32 00 00       	call   3f73 <exit>
        printf(1, "pipe1 oops 1\n");
     d14:	56                   	push   %esi
     d15:	56                   	push   %esi
     d16:	68 a0 47 00 00       	push   $0x47a0
     d1b:	6a 01                	push   $0x1
     d1d:	e8 ce 33 00 00       	call   40f0 <printf>
        exit(-1);
     d22:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     d29:	e8 45 32 00 00       	call   3f73 <exit>
     d2e:	66 90                	xchg   %ax,%ax

00000d30 <preempt>:
{
     d30:	f3 0f 1e fb          	endbr32 
     d34:	55                   	push   %ebp
     d35:	89 e5                	mov    %esp,%ebp
     d37:	57                   	push   %edi
     d38:	56                   	push   %esi
     d39:	53                   	push   %ebx
     d3a:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     d3d:	68 ec 47 00 00       	push   $0x47ec
     d42:	6a 01                	push   $0x1
     d44:	e8 a7 33 00 00       	call   40f0 <printf>
  pid1 = fork();
     d49:	e8 1d 32 00 00       	call   3f6b <fork>
  if(pid1 == 0)
     d4e:	83 c4 10             	add    $0x10,%esp
     d51:	85 c0                	test   %eax,%eax
     d53:	75 0b                	jne    d60 <preempt+0x30>
    for(;;)
     d55:	eb fe                	jmp    d55 <preempt+0x25>
     d57:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d5e:	66 90                	xchg   %ax,%ax
     d60:	89 c7                	mov    %eax,%edi
  pid2 = fork();
     d62:	e8 04 32 00 00       	call   3f6b <fork>
     d67:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     d69:	85 c0                	test   %eax,%eax
     d6b:	75 03                	jne    d70 <preempt+0x40>
    for(;;)
     d6d:	eb fe                	jmp    d6d <preempt+0x3d>
     d6f:	90                   	nop
  pipe(pfds);
     d70:	83 ec 0c             	sub    $0xc,%esp
     d73:	8d 45 e0             	lea    -0x20(%ebp),%eax
     d76:	50                   	push   %eax
     d77:	e8 07 32 00 00       	call   3f83 <pipe>
  pid3 = fork();
     d7c:	e8 ea 31 00 00       	call   3f6b <fork>
  if(pid3 == 0){
     d81:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
     d84:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     d86:	85 c0                	test   %eax,%eax
     d88:	75 3e                	jne    dc8 <preempt+0x98>
    close(pfds[0]);
     d8a:	83 ec 0c             	sub    $0xc,%esp
     d8d:	ff 75 e0             	pushl  -0x20(%ebp)
     d90:	e8 06 32 00 00       	call   3f9b <close>
    if(write(pfds[1], "x", 1) != 1)
     d95:	83 c4 0c             	add    $0xc,%esp
     d98:	6a 01                	push   $0x1
     d9a:	68 b1 4d 00 00       	push   $0x4db1
     d9f:	ff 75 e4             	pushl  -0x1c(%ebp)
     da2:	e8 ec 31 00 00       	call   3f93 <write>
     da7:	83 c4 10             	add    $0x10,%esp
     daa:	83 f8 01             	cmp    $0x1,%eax
     dad:	0f 85 bd 00 00 00    	jne    e70 <preempt+0x140>
    close(pfds[1]);
     db3:	83 ec 0c             	sub    $0xc,%esp
     db6:	ff 75 e4             	pushl  -0x1c(%ebp)
     db9:	e8 dd 31 00 00       	call   3f9b <close>
     dbe:	83 c4 10             	add    $0x10,%esp
    for(;;)
     dc1:	eb fe                	jmp    dc1 <preempt+0x91>
     dc3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     dc7:	90                   	nop
  close(pfds[1]);
     dc8:	83 ec 0c             	sub    $0xc,%esp
     dcb:	ff 75 e4             	pushl  -0x1c(%ebp)
     dce:	e8 c8 31 00 00       	call   3f9b <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     dd3:	83 c4 0c             	add    $0xc,%esp
     dd6:	68 00 20 00 00       	push   $0x2000
     ddb:	68 e0 8c 00 00       	push   $0x8ce0
     de0:	ff 75 e0             	pushl  -0x20(%ebp)
     de3:	e8 a3 31 00 00       	call   3f8b <read>
     de8:	83 c4 10             	add    $0x10,%esp
     deb:	83 f8 01             	cmp    $0x1,%eax
     dee:	0f 85 93 00 00 00    	jne    e87 <preempt+0x157>
  close(pfds[0]);
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	ff 75 e0             	pushl  -0x20(%ebp)
     dfa:	e8 9c 31 00 00       	call   3f9b <close>
  printf(1, "kill... ");
     dff:	58                   	pop    %eax
     e00:	5a                   	pop    %edx
     e01:	68 1d 48 00 00       	push   $0x481d
     e06:	6a 01                	push   $0x1
     e08:	e8 e3 32 00 00       	call   40f0 <printf>
  kill(pid1);
     e0d:	89 3c 24             	mov    %edi,(%esp)
     e10:	e8 8e 31 00 00       	call   3fa3 <kill>
  kill(pid2);
     e15:	89 34 24             	mov    %esi,(%esp)
     e18:	e8 86 31 00 00       	call   3fa3 <kill>
  kill(pid3);
     e1d:	89 1c 24             	mov    %ebx,(%esp)
     e20:	e8 7e 31 00 00       	call   3fa3 <kill>
  printf(1, "wait... ");
     e25:	59                   	pop    %ecx
     e26:	5b                   	pop    %ebx
     e27:	68 26 48 00 00       	push   $0x4826
     e2c:	6a 01                	push   $0x1
     e2e:	e8 bd 32 00 00       	call   40f0 <printf>
  wait(0);
     e33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e3a:	e8 3c 31 00 00       	call   3f7b <wait>
  wait(0);
     e3f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e46:	e8 30 31 00 00       	call   3f7b <wait>
  wait(0);
     e4b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e52:	e8 24 31 00 00       	call   3f7b <wait>
  printf(1, "preempt ok\n");
     e57:	5e                   	pop    %esi
     e58:	5f                   	pop    %edi
     e59:	68 2f 48 00 00       	push   $0x482f
     e5e:	6a 01                	push   $0x1
     e60:	e8 8b 32 00 00       	call   40f0 <printf>
     e65:	83 c4 10             	add    $0x10,%esp
}
     e68:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e6b:	5b                   	pop    %ebx
     e6c:	5e                   	pop    %esi
     e6d:	5f                   	pop    %edi
     e6e:	5d                   	pop    %ebp
     e6f:	c3                   	ret    
      printf(1, "preempt write error");
     e70:	83 ec 08             	sub    $0x8,%esp
     e73:	68 f6 47 00 00       	push   $0x47f6
     e78:	6a 01                	push   $0x1
     e7a:	e8 71 32 00 00       	call   40f0 <printf>
     e7f:	83 c4 10             	add    $0x10,%esp
     e82:	e9 2c ff ff ff       	jmp    db3 <preempt+0x83>
    printf(1, "preempt read error");
     e87:	83 ec 08             	sub    $0x8,%esp
     e8a:	68 0a 48 00 00       	push   $0x480a
     e8f:	6a 01                	push   $0x1
     e91:	e8 5a 32 00 00       	call   40f0 <printf>
    return;
     e96:	83 c4 10             	add    $0x10,%esp
     e99:	eb cd                	jmp    e68 <preempt+0x138>
     e9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e9f:	90                   	nop

00000ea0 <exitwait>:
{
     ea0:	f3 0f 1e fb          	endbr32 
     ea4:	55                   	push   %ebp
     ea5:	89 e5                	mov    %esp,%ebp
     ea7:	56                   	push   %esi
     ea8:	be 64 00 00 00       	mov    $0x64,%esi
     ead:	53                   	push   %ebx
     eae:	eb 18                	jmp    ec8 <exitwait+0x28>
    if(pid){
     eb0:	74 70                	je     f22 <exitwait+0x82>
      if(wait(0) != pid){
     eb2:	83 ec 0c             	sub    $0xc,%esp
     eb5:	6a 00                	push   $0x0
     eb7:	e8 bf 30 00 00       	call   3f7b <wait>
     ebc:	83 c4 10             	add    $0x10,%esp
     ebf:	39 d8                	cmp    %ebx,%eax
     ec1:	75 2d                	jne    ef0 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     ec3:	83 ee 01             	sub    $0x1,%esi
     ec6:	74 41                	je     f09 <exitwait+0x69>
    pid = fork();
     ec8:	e8 9e 30 00 00       	call   3f6b <fork>
     ecd:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     ecf:	85 c0                	test   %eax,%eax
     ed1:	79 dd                	jns    eb0 <exitwait+0x10>
      printf(1, "fork failed\n");
     ed3:	83 ec 08             	sub    $0x8,%esp
     ed6:	68 99 53 00 00       	push   $0x5399
     edb:	6a 01                	push   $0x1
     edd:	e8 0e 32 00 00       	call   40f0 <printf>
      return;
     ee2:	83 c4 10             	add    $0x10,%esp
}
     ee5:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ee8:	5b                   	pop    %ebx
     ee9:	5e                   	pop    %esi
     eea:	5d                   	pop    %ebp
     eeb:	c3                   	ret    
     eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     ef0:	83 ec 08             	sub    $0x8,%esp
     ef3:	68 3b 48 00 00       	push   $0x483b
     ef8:	6a 01                	push   $0x1
     efa:	e8 f1 31 00 00       	call   40f0 <printf>
        return;
     eff:	83 c4 10             	add    $0x10,%esp
}
     f02:	8d 65 f8             	lea    -0x8(%ebp),%esp
     f05:	5b                   	pop    %ebx
     f06:	5e                   	pop    %esi
     f07:	5d                   	pop    %ebp
     f08:	c3                   	ret    
  printf(1, "exitwait ok\n");
     f09:	83 ec 08             	sub    $0x8,%esp
     f0c:	68 4b 48 00 00       	push   $0x484b
     f11:	6a 01                	push   $0x1
     f13:	e8 d8 31 00 00       	call   40f0 <printf>
     f18:	83 c4 10             	add    $0x10,%esp
}
     f1b:	8d 65 f8             	lea    -0x8(%ebp),%esp
     f1e:	5b                   	pop    %ebx
     f1f:	5e                   	pop    %esi
     f20:	5d                   	pop    %ebp
     f21:	c3                   	ret    
      exit(0);
     f22:	83 ec 0c             	sub    $0xc,%esp
     f25:	6a 00                	push   $0x0
     f27:	e8 47 30 00 00       	call   3f73 <exit>
     f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000f30 <mem>:
{
     f30:	f3 0f 1e fb          	endbr32 
     f34:	55                   	push   %ebp
     f35:	89 e5                	mov    %esp,%ebp
     f37:	56                   	push   %esi
     f38:	31 f6                	xor    %esi,%esi
     f3a:	53                   	push   %ebx
  printf(1, "mem test\n");
     f3b:	83 ec 08             	sub    $0x8,%esp
     f3e:	68 58 48 00 00       	push   $0x4858
     f43:	6a 01                	push   $0x1
     f45:	e8 a6 31 00 00       	call   40f0 <printf>
  ppid = getpid();
     f4a:	e8 a4 30 00 00       	call   3ff3 <getpid>
     f4f:	89 c3                	mov    %eax,%ebx
  if((pid = fork()) == 0){
     f51:	e8 15 30 00 00       	call   3f6b <fork>
     f56:	83 c4 10             	add    $0x10,%esp
     f59:	85 c0                	test   %eax,%eax
     f5b:	74 0f                	je     f6c <mem+0x3c>
     f5d:	e9 9e 00 00 00       	jmp    1000 <mem+0xd0>
     f62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
     f68:	89 30                	mov    %esi,(%eax)
     f6a:	89 c6                	mov    %eax,%esi
    while((m2 = malloc(10001)) != 0){
     f6c:	83 ec 0c             	sub    $0xc,%esp
     f6f:	68 11 27 00 00       	push   $0x2711
     f74:	e8 d7 33 00 00       	call   4350 <malloc>
     f79:	83 c4 10             	add    $0x10,%esp
     f7c:	85 c0                	test   %eax,%eax
     f7e:	75 e8                	jne    f68 <mem+0x38>
    while(m1){
     f80:	85 f6                	test   %esi,%esi
     f82:	74 18                	je     f9c <mem+0x6c>
     f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     f88:	89 f0                	mov    %esi,%eax
      free(m1);
     f8a:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
     f8d:	8b 36                	mov    (%esi),%esi
      free(m1);
     f8f:	50                   	push   %eax
     f90:	e8 2b 33 00 00       	call   42c0 <free>
    while(m1){
     f95:	83 c4 10             	add    $0x10,%esp
     f98:	85 f6                	test   %esi,%esi
     f9a:	75 ec                	jne    f88 <mem+0x58>
    m1 = malloc(1024*20);
     f9c:	83 ec 0c             	sub    $0xc,%esp
     f9f:	68 00 50 00 00       	push   $0x5000
     fa4:	e8 a7 33 00 00       	call   4350 <malloc>
    if(m1 == 0){
     fa9:	83 c4 10             	add    $0x10,%esp
     fac:	85 c0                	test   %eax,%eax
     fae:	74 28                	je     fd8 <mem+0xa8>
    free(m1);
     fb0:	83 ec 0c             	sub    $0xc,%esp
     fb3:	50                   	push   %eax
     fb4:	e8 07 33 00 00       	call   42c0 <free>
    printf(1, "mem ok\n");
     fb9:	58                   	pop    %eax
     fba:	5a                   	pop    %edx
     fbb:	68 7c 48 00 00       	push   $0x487c
     fc0:	6a 01                	push   $0x1
     fc2:	e8 29 31 00 00       	call   40f0 <printf>
    exit(0);
     fc7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     fce:	e8 a0 2f 00 00       	call   3f73 <exit>
     fd3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     fd7:	90                   	nop
      printf(1, "couldn't allocate mem?!!\n");
     fd8:	83 ec 08             	sub    $0x8,%esp
     fdb:	68 62 48 00 00       	push   $0x4862
     fe0:	6a 01                	push   $0x1
     fe2:	e8 09 31 00 00       	call   40f0 <printf>
      kill(ppid);
     fe7:	89 1c 24             	mov    %ebx,(%esp)
     fea:	e8 b4 2f 00 00       	call   3fa3 <kill>
      exit(-1);
     fef:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     ff6:	e8 78 2f 00 00       	call   3f73 <exit>
     ffb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     fff:	90                   	nop
    wait(0);
    1000:	83 ec 0c             	sub    $0xc,%esp
    1003:	6a 00                	push   $0x0
    1005:	e8 71 2f 00 00       	call   3f7b <wait>
}
    100a:	83 c4 10             	add    $0x10,%esp
    100d:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1010:	5b                   	pop    %ebx
    1011:	5e                   	pop    %esi
    1012:	5d                   	pop    %ebp
    1013:	c3                   	ret    
    1014:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    101b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    101f:	90                   	nop

00001020 <sharedfd>:
{
    1020:	f3 0f 1e fb          	endbr32 
    1024:	55                   	push   %ebp
    1025:	89 e5                	mov    %esp,%ebp
    1027:	57                   	push   %edi
    1028:	56                   	push   %esi
    1029:	53                   	push   %ebx
    102a:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
    102d:	68 84 48 00 00       	push   $0x4884
    1032:	6a 01                	push   $0x1
    1034:	e8 b7 30 00 00       	call   40f0 <printf>
  unlink("sharedfd");
    1039:	c7 04 24 93 48 00 00 	movl   $0x4893,(%esp)
    1040:	e8 7e 2f 00 00       	call   3fc3 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1045:	5b                   	pop    %ebx
    1046:	5e                   	pop    %esi
    1047:	68 02 02 00 00       	push   $0x202
    104c:	68 93 48 00 00       	push   $0x4893
    1051:	e8 5d 2f 00 00       	call   3fb3 <open>
  if(fd < 0){
    1056:	83 c4 10             	add    $0x10,%esp
    1059:	85 c0                	test   %eax,%eax
    105b:	0f 88 26 01 00 00    	js     1187 <sharedfd+0x167>
    1061:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1063:	8d 75 de             	lea    -0x22(%ebp),%esi
    1066:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    106b:	e8 fb 2e 00 00       	call   3f6b <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1070:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    1073:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1076:	19 c0                	sbb    %eax,%eax
    1078:	83 ec 04             	sub    $0x4,%esp
    107b:	83 e0 f3             	and    $0xfffffff3,%eax
    107e:	6a 0a                	push   $0xa
    1080:	83 c0 70             	add    $0x70,%eax
    1083:	50                   	push   %eax
    1084:	56                   	push   %esi
    1085:	e8 46 2d 00 00       	call   3dd0 <memset>
    108a:	83 c4 10             	add    $0x10,%esp
    108d:	eb 06                	jmp    1095 <sharedfd+0x75>
    108f:	90                   	nop
  for(i = 0; i < 1000; i++){
    1090:	83 eb 01             	sub    $0x1,%ebx
    1093:	74 26                	je     10bb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    1095:	83 ec 04             	sub    $0x4,%esp
    1098:	6a 0a                	push   $0xa
    109a:	56                   	push   %esi
    109b:	57                   	push   %edi
    109c:	e8 f2 2e 00 00       	call   3f93 <write>
    10a1:	83 c4 10             	add    $0x10,%esp
    10a4:	83 f8 0a             	cmp    $0xa,%eax
    10a7:	74 e7                	je     1090 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    10a9:	83 ec 08             	sub    $0x8,%esp
    10ac:	68 84 55 00 00       	push   $0x5584
    10b1:	6a 01                	push   $0x1
    10b3:	e8 38 30 00 00       	call   40f0 <printf>
      break;
    10b8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    10bb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    10be:	85 c9                	test   %ecx,%ecx
    10c0:	0f 84 f5 00 00 00    	je     11bb <sharedfd+0x19b>
    wait(0);
    10c6:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
    10c9:	31 db                	xor    %ebx,%ebx
    wait(0);
    10cb:	6a 00                	push   $0x0
    10cd:	e8 a9 2e 00 00       	call   3f7b <wait>
  close(fd);
    10d2:	89 3c 24             	mov    %edi,(%esp)
    10d5:	8d 7d e8             	lea    -0x18(%ebp),%edi
    10d8:	e8 be 2e 00 00       	call   3f9b <close>
  fd = open("sharedfd", 0);
    10dd:	58                   	pop    %eax
    10de:	5a                   	pop    %edx
    10df:	6a 00                	push   $0x0
    10e1:	68 93 48 00 00       	push   $0x4893
    10e6:	e8 c8 2e 00 00       	call   3fb3 <open>
  if(fd < 0){
    10eb:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
    10ee:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
    10f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    10f3:	85 c0                	test   %eax,%eax
    10f5:	0f 88 a6 00 00 00    	js     11a1 <sharedfd+0x181>
    10fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10ff:	90                   	nop
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1100:	83 ec 04             	sub    $0x4,%esp
    1103:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1106:	6a 0a                	push   $0xa
    1108:	56                   	push   %esi
    1109:	ff 75 d0             	pushl  -0x30(%ebp)
    110c:	e8 7a 2e 00 00       	call   3f8b <read>
    1111:	83 c4 10             	add    $0x10,%esp
    1114:	85 c0                	test   %eax,%eax
    1116:	7e 28                	jle    1140 <sharedfd+0x120>
    for(i = 0; i < sizeof(buf); i++){
    1118:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    111b:	89 f0                	mov    %esi,%eax
    111d:	eb 13                	jmp    1132 <sharedfd+0x112>
    111f:	90                   	nop
        np++;
    1120:	80 f9 70             	cmp    $0x70,%cl
    1123:	0f 94 c1             	sete   %cl
    1126:	0f b6 c9             	movzbl %cl,%ecx
    1129:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    112b:	83 c0 01             	add    $0x1,%eax
    112e:	39 c7                	cmp    %eax,%edi
    1130:	74 ce                	je     1100 <sharedfd+0xe0>
      if(buf[i] == 'c')
    1132:	0f b6 08             	movzbl (%eax),%ecx
    1135:	80 f9 63             	cmp    $0x63,%cl
    1138:	75 e6                	jne    1120 <sharedfd+0x100>
        nc++;
    113a:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
    113d:	eb ec                	jmp    112b <sharedfd+0x10b>
    113f:	90                   	nop
  close(fd);
    1140:	83 ec 0c             	sub    $0xc,%esp
    1143:	ff 75 d0             	pushl  -0x30(%ebp)
    1146:	e8 50 2e 00 00       	call   3f9b <close>
  unlink("sharedfd");
    114b:	c7 04 24 93 48 00 00 	movl   $0x4893,(%esp)
    1152:	e8 6c 2e 00 00       	call   3fc3 <unlink>
  if(nc == 10000 && np == 10000){
    1157:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    115a:	83 c4 10             	add    $0x10,%esp
    115d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1163:	75 60                	jne    11c5 <sharedfd+0x1a5>
    1165:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    116b:	75 58                	jne    11c5 <sharedfd+0x1a5>
    printf(1, "sharedfd ok\n");
    116d:	83 ec 08             	sub    $0x8,%esp
    1170:	68 9c 48 00 00       	push   $0x489c
    1175:	6a 01                	push   $0x1
    1177:	e8 74 2f 00 00       	call   40f0 <printf>
    117c:	83 c4 10             	add    $0x10,%esp
}
    117f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1182:	5b                   	pop    %ebx
    1183:	5e                   	pop    %esi
    1184:	5f                   	pop    %edi
    1185:	5d                   	pop    %ebp
    1186:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    1187:	83 ec 08             	sub    $0x8,%esp
    118a:	68 58 55 00 00       	push   $0x5558
    118f:	6a 01                	push   $0x1
    1191:	e8 5a 2f 00 00       	call   40f0 <printf>
    return;
    1196:	83 c4 10             	add    $0x10,%esp
}
    1199:	8d 65 f4             	lea    -0xc(%ebp),%esp
    119c:	5b                   	pop    %ebx
    119d:	5e                   	pop    %esi
    119e:	5f                   	pop    %edi
    119f:	5d                   	pop    %ebp
    11a0:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    11a1:	83 ec 08             	sub    $0x8,%esp
    11a4:	68 a4 55 00 00       	push   $0x55a4
    11a9:	6a 01                	push   $0x1
    11ab:	e8 40 2f 00 00       	call   40f0 <printf>
    return;
    11b0:	83 c4 10             	add    $0x10,%esp
}
    11b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11b6:	5b                   	pop    %ebx
    11b7:	5e                   	pop    %esi
    11b8:	5f                   	pop    %edi
    11b9:	5d                   	pop    %ebp
    11ba:	c3                   	ret    
    exit(0);
    11bb:	83 ec 0c             	sub    $0xc,%esp
    11be:	6a 00                	push   $0x0
    11c0:	e8 ae 2d 00 00       	call   3f73 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    11c5:	53                   	push   %ebx
    11c6:	52                   	push   %edx
    11c7:	68 a9 48 00 00       	push   $0x48a9
    11cc:	6a 01                	push   $0x1
    11ce:	e8 1d 2f 00 00       	call   40f0 <printf>
    exit(-1);
    11d3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    11da:	e8 94 2d 00 00       	call   3f73 <exit>
    11df:	90                   	nop

000011e0 <fourfiles>:
{
    11e0:	f3 0f 1e fb          	endbr32 
    11e4:	55                   	push   %ebp
    11e5:	89 e5                	mov    %esp,%ebp
    11e7:	57                   	push   %edi
    11e8:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    11e9:	be be 48 00 00       	mov    $0x48be,%esi
{
    11ee:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    11ef:	31 db                	xor    %ebx,%ebx
{
    11f1:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    11f4:	c7 45 d8 be 48 00 00 	movl   $0x48be,-0x28(%ebp)
  printf(1, "fourfiles test\n");
    11fb:	68 c4 48 00 00       	push   $0x48c4
    1200:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    1202:	c7 45 dc 07 4a 00 00 	movl   $0x4a07,-0x24(%ebp)
    1209:	c7 45 e0 0b 4a 00 00 	movl   $0x4a0b,-0x20(%ebp)
    1210:	c7 45 e4 c1 48 00 00 	movl   $0x48c1,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1217:	e8 d4 2e 00 00       	call   40f0 <printf>
    121c:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    121f:	83 ec 0c             	sub    $0xc,%esp
    1222:	56                   	push   %esi
    1223:	e8 9b 2d 00 00       	call   3fc3 <unlink>
    pid = fork();
    1228:	e8 3e 2d 00 00       	call   3f6b <fork>
    if(pid < 0){
    122d:	83 c4 10             	add    $0x10,%esp
    1230:	85 c0                	test   %eax,%eax
    1232:	0f 88 90 01 00 00    	js     13c8 <fourfiles+0x1e8>
    if(pid == 0){
    1238:	0f 84 0c 01 00 00    	je     134a <fourfiles+0x16a>
  for(pi = 0; pi < 4; pi++){
    123e:	83 c3 01             	add    $0x1,%ebx
    1241:	83 fb 04             	cmp    $0x4,%ebx
    1244:	74 06                	je     124c <fourfiles+0x6c>
    1246:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    124a:	eb d3                	jmp    121f <fourfiles+0x3f>
    wait(0);
    124c:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 2; i++){
    124f:	31 f6                	xor    %esi,%esi
    wait(0);
    1251:	6a 00                	push   $0x0
    1253:	e8 23 2d 00 00       	call   3f7b <wait>
    1258:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    125f:	e8 17 2d 00 00       	call   3f7b <wait>
    1264:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    126b:	e8 0b 2d 00 00       	call   3f7b <wait>
    1270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1277:	e8 ff 2c 00 00       	call   3f7b <wait>
    127c:	83 c4 10             	add    $0x10,%esp
    fname = names[i];
    127f:	8b 44 b5 d8          	mov    -0x28(%ebp,%esi,4),%eax
    fd = open(fname, 0);
    1283:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    1286:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    1288:	6a 00                	push   $0x0
    128a:	50                   	push   %eax
    fname = names[i];
    128b:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    128e:	e8 20 2d 00 00       	call   3fb3 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1293:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    1296:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12a0:	83 ec 04             	sub    $0x4,%esp
    12a3:	68 00 20 00 00       	push   $0x2000
    12a8:	68 e0 8c 00 00       	push   $0x8ce0
    12ad:	ff 75 d4             	pushl  -0x2c(%ebp)
    12b0:	e8 d6 2c 00 00       	call   3f8b <read>
    12b5:	83 c4 10             	add    $0x10,%esp
    12b8:	85 c0                	test   %eax,%eax
    12ba:	7e 22                	jle    12de <fourfiles+0xfe>
      for(j = 0; j < n; j++){
    12bc:	31 d2                	xor    %edx,%edx
    12be:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    12c0:	83 fe 01             	cmp    $0x1,%esi
    12c3:	0f be ba e0 8c 00 00 	movsbl 0x8ce0(%edx),%edi
    12ca:	19 c9                	sbb    %ecx,%ecx
    12cc:	83 c1 31             	add    $0x31,%ecx
    12cf:	39 cf                	cmp    %ecx,%edi
    12d1:	75 5c                	jne    132f <fourfiles+0x14f>
      for(j = 0; j < n; j++){
    12d3:	83 c2 01             	add    $0x1,%edx
    12d6:	39 d0                	cmp    %edx,%eax
    12d8:	75 e6                	jne    12c0 <fourfiles+0xe0>
      total += n;
    12da:	01 c3                	add    %eax,%ebx
    12dc:	eb c2                	jmp    12a0 <fourfiles+0xc0>
    close(fd);
    12de:	83 ec 0c             	sub    $0xc,%esp
    12e1:	ff 75 d4             	pushl  -0x2c(%ebp)
    12e4:	e8 b2 2c 00 00       	call   3f9b <close>
    if(total != 12*500){
    12e9:	83 c4 10             	add    $0x10,%esp
    12ec:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    12f2:	0f 85 eb 00 00 00    	jne    13e3 <fourfiles+0x203>
    unlink(fname);
    12f8:	83 ec 0c             	sub    $0xc,%esp
    12fb:	ff 75 d0             	pushl  -0x30(%ebp)
    12fe:	e8 c0 2c 00 00       	call   3fc3 <unlink>
  for(i = 0; i < 2; i++){
    1303:	83 c4 10             	add    $0x10,%esp
    1306:	83 fe 01             	cmp    $0x1,%esi
    1309:	75 1a                	jne    1325 <fourfiles+0x145>
  printf(1, "fourfiles ok\n");
    130b:	83 ec 08             	sub    $0x8,%esp
    130e:	68 02 49 00 00       	push   $0x4902
    1313:	6a 01                	push   $0x1
    1315:	e8 d6 2d 00 00       	call   40f0 <printf>
}
    131a:	83 c4 10             	add    $0x10,%esp
    131d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1320:	5b                   	pop    %ebx
    1321:	5e                   	pop    %esi
    1322:	5f                   	pop    %edi
    1323:	5d                   	pop    %ebp
    1324:	c3                   	ret    
    1325:	be 01 00 00 00       	mov    $0x1,%esi
    132a:	e9 50 ff ff ff       	jmp    127f <fourfiles+0x9f>
          printf(1, "wrong char\n");
    132f:	83 ec 08             	sub    $0x8,%esp
    1332:	68 e5 48 00 00       	push   $0x48e5
    1337:	6a 01                	push   $0x1
    1339:	e8 b2 2d 00 00       	call   40f0 <printf>
          exit(-1);
    133e:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1345:	e8 29 2c 00 00       	call   3f73 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    134a:	83 ec 08             	sub    $0x8,%esp
    134d:	68 02 02 00 00       	push   $0x202
    1352:	56                   	push   %esi
    1353:	e8 5b 2c 00 00       	call   3fb3 <open>
      if(fd < 0){
    1358:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    135b:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    135d:	85 c0                	test   %eax,%eax
    135f:	78 4a                	js     13ab <fourfiles+0x1cb>
      memset(buf, '0'+pi, 512);
    1361:	83 ec 04             	sub    $0x4,%esp
    1364:	83 c3 30             	add    $0x30,%ebx
    1367:	68 00 02 00 00       	push   $0x200
    136c:	53                   	push   %ebx
    136d:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1372:	68 e0 8c 00 00       	push   $0x8ce0
    1377:	e8 54 2a 00 00       	call   3dd0 <memset>
    137c:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    137f:	83 ec 04             	sub    $0x4,%esp
    1382:	68 f4 01 00 00       	push   $0x1f4
    1387:	68 e0 8c 00 00       	push   $0x8ce0
    138c:	56                   	push   %esi
    138d:	e8 01 2c 00 00       	call   3f93 <write>
    1392:	83 c4 10             	add    $0x10,%esp
    1395:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    139a:	75 61                	jne    13fd <fourfiles+0x21d>
      for(i = 0; i < 12; i++){
    139c:	83 eb 01             	sub    $0x1,%ebx
    139f:	75 de                	jne    137f <fourfiles+0x19f>
      exit(0);
    13a1:	83 ec 0c             	sub    $0xc,%esp
    13a4:	6a 00                	push   $0x0
    13a6:	e8 c8 2b 00 00       	call   3f73 <exit>
        printf(1, "create failed\n");
    13ab:	51                   	push   %ecx
    13ac:	51                   	push   %ecx
    13ad:	68 5f 4b 00 00       	push   $0x4b5f
    13b2:	6a 01                	push   $0x1
    13b4:	e8 37 2d 00 00       	call   40f0 <printf>
        exit(-1);
    13b9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    13c0:	e8 ae 2b 00 00       	call   3f73 <exit>
    13c5:	8d 76 00             	lea    0x0(%esi),%esi
      printf(1, "fork failed\n");
    13c8:	83 ec 08             	sub    $0x8,%esp
    13cb:	68 99 53 00 00       	push   $0x5399
    13d0:	6a 01                	push   $0x1
    13d2:	e8 19 2d 00 00       	call   40f0 <printf>
      exit(-1);
    13d7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    13de:	e8 90 2b 00 00       	call   3f73 <exit>
      printf(1, "wrong length %d\n", total);
    13e3:	50                   	push   %eax
    13e4:	53                   	push   %ebx
    13e5:	68 f1 48 00 00       	push   $0x48f1
    13ea:	6a 01                	push   $0x1
    13ec:	e8 ff 2c 00 00       	call   40f0 <printf>
      exit(-1);
    13f1:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    13f8:	e8 76 2b 00 00       	call   3f73 <exit>
          printf(1, "write failed %d\n", n);
    13fd:	52                   	push   %edx
    13fe:	50                   	push   %eax
    13ff:	68 d4 48 00 00       	push   $0x48d4
    1404:	6a 01                	push   $0x1
    1406:	e8 e5 2c 00 00       	call   40f0 <printf>
          exit(-1);
    140b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1412:	e8 5c 2b 00 00       	call   3f73 <exit>
    1417:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    141e:	66 90                	xchg   %ax,%ax

00001420 <createdelete>:
{
    1420:	f3 0f 1e fb          	endbr32 
    1424:	55                   	push   %ebp
    1425:	89 e5                	mov    %esp,%ebp
    1427:	57                   	push   %edi
    1428:	56                   	push   %esi
    1429:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    142a:	31 db                	xor    %ebx,%ebx
{
    142c:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    142f:	68 10 49 00 00       	push   $0x4910
    1434:	6a 01                	push   $0x1
    1436:	e8 b5 2c 00 00       	call   40f0 <printf>
    143b:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    143e:	e8 28 2b 00 00       	call   3f6b <fork>
    if(pid < 0){
    1443:	85 c0                	test   %eax,%eax
    1445:	0f 88 09 02 00 00    	js     1654 <createdelete+0x234>
    if(pid == 0){
    144b:	0f 84 37 01 00 00    	je     1588 <createdelete+0x168>
  for(pi = 0; pi < 4; pi++){
    1451:	83 c3 01             	add    $0x1,%ebx
    1454:	83 fb 04             	cmp    $0x4,%ebx
    1457:	75 e5                	jne    143e <createdelete+0x1e>
    wait(0);
    1459:	83 ec 0c             	sub    $0xc,%esp
    145c:	8d 7d c8             	lea    -0x38(%ebp),%edi
  name[0] = name[1] = name[2] = 0;
    145f:	be ff ff ff ff       	mov    $0xffffffff,%esi
    wait(0);
    1464:	6a 00                	push   $0x0
    1466:	e8 10 2b 00 00       	call   3f7b <wait>
    146b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1472:	e8 04 2b 00 00       	call   3f7b <wait>
    1477:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    147e:	e8 f8 2a 00 00       	call   3f7b <wait>
    1483:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    148a:	e8 ec 2a 00 00       	call   3f7b <wait>
  name[0] = name[1] = name[2] = 0;
    148f:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1493:	83 c4 10             	add    $0x10,%esp
    1496:	89 7d c0             	mov    %edi,-0x40(%ebp)
    1499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    for(pi = 0; pi < 4; pi++){
    14a0:	8d 46 31             	lea    0x31(%esi),%eax
    14a3:	89 f7                	mov    %esi,%edi
    14a5:	83 c6 01             	add    $0x1,%esi
    14a8:	83 fe 09             	cmp    $0x9,%esi
    14ab:	88 45 c7             	mov    %al,-0x39(%ebp)
    14ae:	0f 9f c3             	setg   %bl
    14b1:	85 f6                	test   %esi,%esi
    14b3:	0f 94 c0             	sete   %al
    14b6:	09 c3                	or     %eax,%ebx
    14b8:	88 5d c6             	mov    %bl,-0x3a(%ebp)
      name[2] = '\0';
    14bb:	bb 70 00 00 00       	mov    $0x70,%ebx
      fd = open(name, 0);
    14c0:	83 ec 08             	sub    $0x8,%esp
      name[1] = '0' + i;
    14c3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      name[0] = 'p' + pi;
    14c7:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    14ca:	6a 00                	push   $0x0
    14cc:	ff 75 c0             	pushl  -0x40(%ebp)
      name[1] = '0' + i;
    14cf:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    14d2:	e8 dc 2a 00 00       	call   3fb3 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    14d7:	83 c4 10             	add    $0x10,%esp
    14da:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    14de:	0f 84 8c 00 00 00    	je     1570 <createdelete+0x150>
    14e4:	85 c0                	test   %eax,%eax
    14e6:	0f 88 2e 01 00 00    	js     161a <createdelete+0x1fa>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    14ec:	83 ff 08             	cmp    $0x8,%edi
    14ef:	0f 86 82 01 00 00    	jbe    1677 <createdelete+0x257>
        close(fd);
    14f5:	83 ec 0c             	sub    $0xc,%esp
    14f8:	50                   	push   %eax
    14f9:	e8 9d 2a 00 00       	call   3f9b <close>
    14fe:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    1501:	83 c3 01             	add    $0x1,%ebx
    1504:	80 fb 74             	cmp    $0x74,%bl
    1507:	75 b7                	jne    14c0 <createdelete+0xa0>
  for(i = 0; i < N; i++){
    1509:	83 fe 13             	cmp    $0x13,%esi
    150c:	75 92                	jne    14a0 <createdelete+0x80>
    150e:	8b 7d c0             	mov    -0x40(%ebp),%edi
    1511:	be 70 00 00 00       	mov    $0x70,%esi
    1516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    151d:	8d 76 00             	lea    0x0(%esi),%esi
    for(pi = 0; pi < 4; pi++){
    1520:	8d 46 c0             	lea    -0x40(%esi),%eax
  name[0] = name[1] = name[2] = 0;
    1523:	bb 04 00 00 00       	mov    $0x4,%ebx
    1528:	88 45 c7             	mov    %al,-0x39(%ebp)
      unlink(name);
    152b:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    152e:	89 f0                	mov    %esi,%eax
      unlink(name);
    1530:	57                   	push   %edi
      name[0] = 'p' + i;
    1531:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1534:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    1538:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    153b:	e8 83 2a 00 00       	call   3fc3 <unlink>
    for(pi = 0; pi < 4; pi++){
    1540:	83 c4 10             	add    $0x10,%esp
    1543:	83 eb 01             	sub    $0x1,%ebx
    1546:	75 e3                	jne    152b <createdelete+0x10b>
  for(i = 0; i < N; i++){
    1548:	83 c6 01             	add    $0x1,%esi
    154b:	89 f0                	mov    %esi,%eax
    154d:	3c 84                	cmp    $0x84,%al
    154f:	75 cf                	jne    1520 <createdelete+0x100>
  printf(1, "createdelete ok\n");
    1551:	83 ec 08             	sub    $0x8,%esp
    1554:	68 23 49 00 00       	push   $0x4923
    1559:	6a 01                	push   $0x1
    155b:	e8 90 2b 00 00       	call   40f0 <printf>
}
    1560:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1563:	5b                   	pop    %ebx
    1564:	5e                   	pop    %esi
    1565:	5f                   	pop    %edi
    1566:	5d                   	pop    %ebp
    1567:	c3                   	ret    
    1568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    156f:	90                   	nop
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1570:	83 ff 08             	cmp    $0x8,%edi
    1573:	0f 86 f6 00 00 00    	jbe    166f <createdelete+0x24f>
      if(fd >= 0)
    1579:	85 c0                	test   %eax,%eax
    157b:	78 84                	js     1501 <createdelete+0xe1>
    157d:	e9 73 ff ff ff       	jmp    14f5 <createdelete+0xd5>
    1582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      name[0] = 'p' + pi;
    1588:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    158b:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    158f:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    1592:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    1595:	31 db                	xor    %ebx,%ebx
    1597:	eb 0f                	jmp    15a8 <createdelete+0x188>
    1599:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    15a0:	83 fb 13             	cmp    $0x13,%ebx
    15a3:	74 6b                	je     1610 <createdelete+0x1f0>
    15a5:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    15a8:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    15ab:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    15ae:	68 02 02 00 00       	push   $0x202
    15b3:	57                   	push   %edi
        name[1] = '0' + i;
    15b4:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    15b7:	e8 f7 29 00 00       	call   3fb3 <open>
        if(fd < 0){
    15bc:	83 c4 10             	add    $0x10,%esp
    15bf:	85 c0                	test   %eax,%eax
    15c1:	78 76                	js     1639 <createdelete+0x219>
        close(fd);
    15c3:	83 ec 0c             	sub    $0xc,%esp
    15c6:	50                   	push   %eax
    15c7:	e8 cf 29 00 00       	call   3f9b <close>
        if(i > 0 && (i % 2 ) == 0){
    15cc:	83 c4 10             	add    $0x10,%esp
    15cf:	85 db                	test   %ebx,%ebx
    15d1:	74 d2                	je     15a5 <createdelete+0x185>
    15d3:	f6 c3 01             	test   $0x1,%bl
    15d6:	75 c8                	jne    15a0 <createdelete+0x180>
          if(unlink(name) < 0){
    15d8:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    15db:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    15dd:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    15de:	d1 f8                	sar    %eax
    15e0:	83 c0 30             	add    $0x30,%eax
    15e3:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    15e6:	e8 d8 29 00 00       	call   3fc3 <unlink>
    15eb:	83 c4 10             	add    $0x10,%esp
    15ee:	85 c0                	test   %eax,%eax
    15f0:	79 ae                	jns    15a0 <createdelete+0x180>
            printf(1, "unlink failed\n");
    15f2:	52                   	push   %edx
    15f3:	52                   	push   %edx
    15f4:	68 11 45 00 00       	push   $0x4511
    15f9:	6a 01                	push   $0x1
    15fb:	e8 f0 2a 00 00       	call   40f0 <printf>
            exit(-1);
    1600:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1607:	e8 67 29 00 00       	call   3f73 <exit>
    160c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(0);
    1610:	83 ec 0c             	sub    $0xc,%esp
    1613:	6a 00                	push   $0x0
    1615:	e8 59 29 00 00       	call   3f73 <exit>
    161a:	8b 7d c0             	mov    -0x40(%ebp),%edi
        printf(1, "oops createdelete %s didn't exist\n", name);
    161d:	83 ec 04             	sub    $0x4,%esp
    1620:	57                   	push   %edi
    1621:	68 d0 55 00 00       	push   $0x55d0
    1626:	6a 01                	push   $0x1
    1628:	e8 c3 2a 00 00       	call   40f0 <printf>
        exit(-1);
    162d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1634:	e8 3a 29 00 00       	call   3f73 <exit>
          printf(1, "create failed\n");
    1639:	83 ec 08             	sub    $0x8,%esp
    163c:	68 5f 4b 00 00       	push   $0x4b5f
    1641:	6a 01                	push   $0x1
    1643:	e8 a8 2a 00 00       	call   40f0 <printf>
          exit(-1);
    1648:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    164f:	e8 1f 29 00 00       	call   3f73 <exit>
      printf(1, "fork failed\n");
    1654:	83 ec 08             	sub    $0x8,%esp
    1657:	68 99 53 00 00       	push   $0x5399
    165c:	6a 01                	push   $0x1
    165e:	e8 8d 2a 00 00       	call   40f0 <printf>
      exit(-1);
    1663:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    166a:	e8 04 29 00 00       	call   3f73 <exit>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    166f:	85 c0                	test   %eax,%eax
    1671:	0f 88 8a fe ff ff    	js     1501 <createdelete+0xe1>
    1677:	8b 7d c0             	mov    -0x40(%ebp),%edi
        printf(1, "oops createdelete %s did exist\n", name);
    167a:	50                   	push   %eax
    167b:	57                   	push   %edi
    167c:	68 f4 55 00 00       	push   $0x55f4
    1681:	6a 01                	push   $0x1
    1683:	e8 68 2a 00 00       	call   40f0 <printf>
        exit(-1);
    1688:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    168f:	e8 df 28 00 00       	call   3f73 <exit>
    1694:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    169b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    169f:	90                   	nop

000016a0 <unlinkread>:
{
    16a0:	f3 0f 1e fb          	endbr32 
    16a4:	55                   	push   %ebp
    16a5:	89 e5                	mov    %esp,%ebp
    16a7:	56                   	push   %esi
    16a8:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    16a9:	83 ec 08             	sub    $0x8,%esp
    16ac:	68 34 49 00 00       	push   $0x4934
    16b1:	6a 01                	push   $0x1
    16b3:	e8 38 2a 00 00       	call   40f0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    16b8:	5b                   	pop    %ebx
    16b9:	5e                   	pop    %esi
    16ba:	68 02 02 00 00       	push   $0x202
    16bf:	68 45 49 00 00       	push   $0x4945
    16c4:	e8 ea 28 00 00       	call   3fb3 <open>
  if(fd < 0){
    16c9:	83 c4 10             	add    $0x10,%esp
    16cc:	85 c0                	test   %eax,%eax
    16ce:	0f 88 e6 00 00 00    	js     17ba <unlinkread+0x11a>
  write(fd, "hello", 5);
    16d4:	83 ec 04             	sub    $0x4,%esp
    16d7:	89 c3                	mov    %eax,%ebx
    16d9:	6a 05                	push   $0x5
    16db:	68 6a 49 00 00       	push   $0x496a
    16e0:	50                   	push   %eax
    16e1:	e8 ad 28 00 00       	call   3f93 <write>
  close(fd);
    16e6:	89 1c 24             	mov    %ebx,(%esp)
    16e9:	e8 ad 28 00 00       	call   3f9b <close>
  fd = open("unlinkread", O_RDWR);
    16ee:	58                   	pop    %eax
    16ef:	5a                   	pop    %edx
    16f0:	6a 02                	push   $0x2
    16f2:	68 45 49 00 00       	push   $0x4945
    16f7:	e8 b7 28 00 00       	call   3fb3 <open>
  if(fd < 0){
    16fc:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    16ff:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1701:	85 c0                	test   %eax,%eax
    1703:	0f 88 33 01 00 00    	js     183c <unlinkread+0x19c>
  if(unlink("unlinkread") != 0){
    1709:	83 ec 0c             	sub    $0xc,%esp
    170c:	68 45 49 00 00       	push   $0x4945
    1711:	e8 ad 28 00 00       	call   3fc3 <unlink>
    1716:	83 c4 10             	add    $0x10,%esp
    1719:	85 c0                	test   %eax,%eax
    171b:	0f 85 01 01 00 00    	jne    1822 <unlinkread+0x182>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1721:	83 ec 08             	sub    $0x8,%esp
    1724:	68 02 02 00 00       	push   $0x202
    1729:	68 45 49 00 00       	push   $0x4945
    172e:	e8 80 28 00 00       	call   3fb3 <open>
  write(fd1, "yyy", 3);
    1733:	83 c4 0c             	add    $0xc,%esp
    1736:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1738:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    173a:	68 a2 49 00 00       	push   $0x49a2
    173f:	50                   	push   %eax
    1740:	e8 4e 28 00 00       	call   3f93 <write>
  close(fd1);
    1745:	89 34 24             	mov    %esi,(%esp)
    1748:	e8 4e 28 00 00       	call   3f9b <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    174d:	83 c4 0c             	add    $0xc,%esp
    1750:	68 00 20 00 00       	push   $0x2000
    1755:	68 e0 8c 00 00       	push   $0x8ce0
    175a:	53                   	push   %ebx
    175b:	e8 2b 28 00 00       	call   3f8b <read>
    1760:	83 c4 10             	add    $0x10,%esp
    1763:	83 f8 05             	cmp    $0x5,%eax
    1766:	0f 85 9c 00 00 00    	jne    1808 <unlinkread+0x168>
  if(buf[0] != 'h'){
    176c:	80 3d e0 8c 00 00 68 	cmpb   $0x68,0x8ce0
    1773:	75 79                	jne    17ee <unlinkread+0x14e>
  if(write(fd, buf, 10) != 10){
    1775:	83 ec 04             	sub    $0x4,%esp
    1778:	6a 0a                	push   $0xa
    177a:	68 e0 8c 00 00       	push   $0x8ce0
    177f:	53                   	push   %ebx
    1780:	e8 0e 28 00 00       	call   3f93 <write>
    1785:	83 c4 10             	add    $0x10,%esp
    1788:	83 f8 0a             	cmp    $0xa,%eax
    178b:	75 47                	jne    17d4 <unlinkread+0x134>
  close(fd);
    178d:	83 ec 0c             	sub    $0xc,%esp
    1790:	53                   	push   %ebx
    1791:	e8 05 28 00 00       	call   3f9b <close>
  unlink("unlinkread");
    1796:	c7 04 24 45 49 00 00 	movl   $0x4945,(%esp)
    179d:	e8 21 28 00 00       	call   3fc3 <unlink>
  printf(1, "unlinkread ok\n");
    17a2:	58                   	pop    %eax
    17a3:	5a                   	pop    %edx
    17a4:	68 ed 49 00 00       	push   $0x49ed
    17a9:	6a 01                	push   $0x1
    17ab:	e8 40 29 00 00       	call   40f0 <printf>
}
    17b0:	83 c4 10             	add    $0x10,%esp
    17b3:	8d 65 f8             	lea    -0x8(%ebp),%esp
    17b6:	5b                   	pop    %ebx
    17b7:	5e                   	pop    %esi
    17b8:	5d                   	pop    %ebp
    17b9:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    17ba:	51                   	push   %ecx
    17bb:	51                   	push   %ecx
    17bc:	68 50 49 00 00       	push   $0x4950
    17c1:	6a 01                	push   $0x1
    17c3:	e8 28 29 00 00       	call   40f0 <printf>
    exit(-1);
    17c8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    17cf:	e8 9f 27 00 00       	call   3f73 <exit>
    printf(1, "unlinkread write failed\n");
    17d4:	51                   	push   %ecx
    17d5:	51                   	push   %ecx
    17d6:	68 d4 49 00 00       	push   $0x49d4
    17db:	6a 01                	push   $0x1
    17dd:	e8 0e 29 00 00       	call   40f0 <printf>
    exit(-1);
    17e2:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    17e9:	e8 85 27 00 00       	call   3f73 <exit>
    printf(1, "unlinkread wrong data\n");
    17ee:	53                   	push   %ebx
    17ef:	53                   	push   %ebx
    17f0:	68 bd 49 00 00       	push   $0x49bd
    17f5:	6a 01                	push   $0x1
    17f7:	e8 f4 28 00 00       	call   40f0 <printf>
    exit(-1);
    17fc:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1803:	e8 6b 27 00 00       	call   3f73 <exit>
    printf(1, "unlinkread read failed");
    1808:	56                   	push   %esi
    1809:	56                   	push   %esi
    180a:	68 a6 49 00 00       	push   $0x49a6
    180f:	6a 01                	push   $0x1
    1811:	e8 da 28 00 00       	call   40f0 <printf>
    exit(-1);
    1816:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    181d:	e8 51 27 00 00       	call   3f73 <exit>
    printf(1, "unlink unlinkread failed\n");
    1822:	50                   	push   %eax
    1823:	50                   	push   %eax
    1824:	68 88 49 00 00       	push   $0x4988
    1829:	6a 01                	push   $0x1
    182b:	e8 c0 28 00 00       	call   40f0 <printf>
    exit(-1);
    1830:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1837:	e8 37 27 00 00       	call   3f73 <exit>
    printf(1, "open unlinkread failed\n");
    183c:	50                   	push   %eax
    183d:	50                   	push   %eax
    183e:	68 70 49 00 00       	push   $0x4970
    1843:	6a 01                	push   $0x1
    1845:	e8 a6 28 00 00       	call   40f0 <printf>
    exit(-1);
    184a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1851:	e8 1d 27 00 00       	call   3f73 <exit>
    1856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    185d:	8d 76 00             	lea    0x0(%esi),%esi

00001860 <linktest>:
{
    1860:	f3 0f 1e fb          	endbr32 
    1864:	55                   	push   %ebp
    1865:	89 e5                	mov    %esp,%ebp
    1867:	53                   	push   %ebx
    1868:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    186b:	68 fc 49 00 00       	push   $0x49fc
    1870:	6a 01                	push   $0x1
    1872:	e8 79 28 00 00       	call   40f0 <printf>
  unlink("lf1");
    1877:	c7 04 24 06 4a 00 00 	movl   $0x4a06,(%esp)
    187e:	e8 40 27 00 00       	call   3fc3 <unlink>
  unlink("lf2");
    1883:	c7 04 24 0a 4a 00 00 	movl   $0x4a0a,(%esp)
    188a:	e8 34 27 00 00       	call   3fc3 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    188f:	58                   	pop    %eax
    1890:	5a                   	pop    %edx
    1891:	68 02 02 00 00       	push   $0x202
    1896:	68 06 4a 00 00       	push   $0x4a06
    189b:	e8 13 27 00 00       	call   3fb3 <open>
  if(fd < 0){
    18a0:	83 c4 10             	add    $0x10,%esp
    18a3:	85 c0                	test   %eax,%eax
    18a5:	0f 88 1e 01 00 00    	js     19c9 <linktest+0x169>
  if(write(fd, "hello", 5) != 5){
    18ab:	83 ec 04             	sub    $0x4,%esp
    18ae:	89 c3                	mov    %eax,%ebx
    18b0:	6a 05                	push   $0x5
    18b2:	68 6a 49 00 00       	push   $0x496a
    18b7:	50                   	push   %eax
    18b8:	e8 d6 26 00 00       	call   3f93 <write>
    18bd:	83 c4 10             	add    $0x10,%esp
    18c0:	83 f8 05             	cmp    $0x5,%eax
    18c3:	0f 85 d0 01 00 00    	jne    1a99 <linktest+0x239>
  close(fd);
    18c9:	83 ec 0c             	sub    $0xc,%esp
    18cc:	53                   	push   %ebx
    18cd:	e8 c9 26 00 00       	call   3f9b <close>
  if(link("lf1", "lf2") < 0){
    18d2:	5b                   	pop    %ebx
    18d3:	58                   	pop    %eax
    18d4:	68 0a 4a 00 00       	push   $0x4a0a
    18d9:	68 06 4a 00 00       	push   $0x4a06
    18de:	e8 f0 26 00 00       	call   3fd3 <link>
    18e3:	83 c4 10             	add    $0x10,%esp
    18e6:	85 c0                	test   %eax,%eax
    18e8:	0f 88 91 01 00 00    	js     1a7f <linktest+0x21f>
  unlink("lf1");
    18ee:	83 ec 0c             	sub    $0xc,%esp
    18f1:	68 06 4a 00 00       	push   $0x4a06
    18f6:	e8 c8 26 00 00       	call   3fc3 <unlink>
  if(open("lf1", 0) >= 0){
    18fb:	58                   	pop    %eax
    18fc:	5a                   	pop    %edx
    18fd:	6a 00                	push   $0x0
    18ff:	68 06 4a 00 00       	push   $0x4a06
    1904:	e8 aa 26 00 00       	call   3fb3 <open>
    1909:	83 c4 10             	add    $0x10,%esp
    190c:	85 c0                	test   %eax,%eax
    190e:	0f 89 51 01 00 00    	jns    1a65 <linktest+0x205>
  fd = open("lf2", 0);
    1914:	83 ec 08             	sub    $0x8,%esp
    1917:	6a 00                	push   $0x0
    1919:	68 0a 4a 00 00       	push   $0x4a0a
    191e:	e8 90 26 00 00       	call   3fb3 <open>
  if(fd < 0){
    1923:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1926:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1928:	85 c0                	test   %eax,%eax
    192a:	0f 88 1b 01 00 00    	js     1a4b <linktest+0x1eb>
  if(read(fd, buf, sizeof(buf)) != 5){
    1930:	83 ec 04             	sub    $0x4,%esp
    1933:	68 00 20 00 00       	push   $0x2000
    1938:	68 e0 8c 00 00       	push   $0x8ce0
    193d:	50                   	push   %eax
    193e:	e8 48 26 00 00       	call   3f8b <read>
    1943:	83 c4 10             	add    $0x10,%esp
    1946:	83 f8 05             	cmp    $0x5,%eax
    1949:	0f 85 e2 00 00 00    	jne    1a31 <linktest+0x1d1>
  close(fd);
    194f:	83 ec 0c             	sub    $0xc,%esp
    1952:	53                   	push   %ebx
    1953:	e8 43 26 00 00       	call   3f9b <close>
  if(link("lf2", "lf2") >= 0){
    1958:	58                   	pop    %eax
    1959:	5a                   	pop    %edx
    195a:	68 0a 4a 00 00       	push   $0x4a0a
    195f:	68 0a 4a 00 00       	push   $0x4a0a
    1964:	e8 6a 26 00 00       	call   3fd3 <link>
    1969:	83 c4 10             	add    $0x10,%esp
    196c:	85 c0                	test   %eax,%eax
    196e:	0f 89 a3 00 00 00    	jns    1a17 <linktest+0x1b7>
  unlink("lf2");
    1974:	83 ec 0c             	sub    $0xc,%esp
    1977:	68 0a 4a 00 00       	push   $0x4a0a
    197c:	e8 42 26 00 00       	call   3fc3 <unlink>
  if(link("lf2", "lf1") >= 0){
    1981:	59                   	pop    %ecx
    1982:	5b                   	pop    %ebx
    1983:	68 06 4a 00 00       	push   $0x4a06
    1988:	68 0a 4a 00 00       	push   $0x4a0a
    198d:	e8 41 26 00 00       	call   3fd3 <link>
    1992:	83 c4 10             	add    $0x10,%esp
    1995:	85 c0                	test   %eax,%eax
    1997:	79 64                	jns    19fd <linktest+0x19d>
  if(link(".", "lf1") >= 0){
    1999:	83 ec 08             	sub    $0x8,%esp
    199c:	68 06 4a 00 00       	push   $0x4a06
    19a1:	68 ce 4c 00 00       	push   $0x4cce
    19a6:	e8 28 26 00 00       	call   3fd3 <link>
    19ab:	83 c4 10             	add    $0x10,%esp
    19ae:	85 c0                	test   %eax,%eax
    19b0:	79 31                	jns    19e3 <linktest+0x183>
  printf(1, "linktest ok\n");
    19b2:	83 ec 08             	sub    $0x8,%esp
    19b5:	68 a4 4a 00 00       	push   $0x4aa4
    19ba:	6a 01                	push   $0x1
    19bc:	e8 2f 27 00 00       	call   40f0 <printf>
}
    19c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    19c4:	83 c4 10             	add    $0x10,%esp
    19c7:	c9                   	leave  
    19c8:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    19c9:	50                   	push   %eax
    19ca:	50                   	push   %eax
    19cb:	68 0e 4a 00 00       	push   $0x4a0e
    19d0:	6a 01                	push   $0x1
    19d2:	e8 19 27 00 00       	call   40f0 <printf>
    exit(-1);
    19d7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    19de:	e8 90 25 00 00       	call   3f73 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    19e3:	50                   	push   %eax
    19e4:	50                   	push   %eax
    19e5:	68 88 4a 00 00       	push   $0x4a88
    19ea:	6a 01                	push   $0x1
    19ec:	e8 ff 26 00 00       	call   40f0 <printf>
    exit(-1);
    19f1:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    19f8:	e8 76 25 00 00       	call   3f73 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    19fd:	52                   	push   %edx
    19fe:	52                   	push   %edx
    19ff:	68 3c 56 00 00       	push   $0x563c
    1a04:	6a 01                	push   $0x1
    1a06:	e8 e5 26 00 00       	call   40f0 <printf>
    exit(-1);
    1a0b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a12:	e8 5c 25 00 00       	call   3f73 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1a17:	50                   	push   %eax
    1a18:	50                   	push   %eax
    1a19:	68 6a 4a 00 00       	push   $0x4a6a
    1a1e:	6a 01                	push   $0x1
    1a20:	e8 cb 26 00 00       	call   40f0 <printf>
    exit(-1);
    1a25:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a2c:	e8 42 25 00 00       	call   3f73 <exit>
    printf(1, "read lf2 failed\n");
    1a31:	51                   	push   %ecx
    1a32:	51                   	push   %ecx
    1a33:	68 59 4a 00 00       	push   $0x4a59
    1a38:	6a 01                	push   $0x1
    1a3a:	e8 b1 26 00 00       	call   40f0 <printf>
    exit(-1);
    1a3f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a46:	e8 28 25 00 00       	call   3f73 <exit>
    printf(1, "open lf2 failed\n");
    1a4b:	53                   	push   %ebx
    1a4c:	53                   	push   %ebx
    1a4d:	68 48 4a 00 00       	push   $0x4a48
    1a52:	6a 01                	push   $0x1
    1a54:	e8 97 26 00 00       	call   40f0 <printf>
    exit(-1);
    1a59:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a60:	e8 0e 25 00 00       	call   3f73 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1a65:	50                   	push   %eax
    1a66:	50                   	push   %eax
    1a67:	68 14 56 00 00       	push   $0x5614
    1a6c:	6a 01                	push   $0x1
    1a6e:	e8 7d 26 00 00       	call   40f0 <printf>
    exit(-1);
    1a73:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a7a:	e8 f4 24 00 00       	call   3f73 <exit>
    printf(1, "link lf1 lf2 failed\n");
    1a7f:	51                   	push   %ecx
    1a80:	51                   	push   %ecx
    1a81:	68 33 4a 00 00       	push   $0x4a33
    1a86:	6a 01                	push   $0x1
    1a88:	e8 63 26 00 00       	call   40f0 <printf>
    exit(-1);
    1a8d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a94:	e8 da 24 00 00       	call   3f73 <exit>
    printf(1, "write lf1 failed\n");
    1a99:	50                   	push   %eax
    1a9a:	50                   	push   %eax
    1a9b:	68 21 4a 00 00       	push   $0x4a21
    1aa0:	6a 01                	push   $0x1
    1aa2:	e8 49 26 00 00       	call   40f0 <printf>
    exit(-1);
    1aa7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1aae:	e8 c0 24 00 00       	call   3f73 <exit>
    1ab3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001ac0 <concreate>:
{
    1ac0:	f3 0f 1e fb          	endbr32 
    1ac4:	55                   	push   %ebp
    1ac5:	89 e5                	mov    %esp,%ebp
    1ac7:	57                   	push   %edi
    1ac8:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    1ac9:	31 f6                	xor    %esi,%esi
{
    1acb:	53                   	push   %ebx
    1acc:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    1acf:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    1ad2:	68 b1 4a 00 00       	push   $0x4ab1
    1ad7:	6a 01                	push   $0x1
    1ad9:	e8 12 26 00 00       	call   40f0 <printf>
  file[0] = 'C';
    1ade:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1ae2:	83 c4 10             	add    $0x10,%esp
    1ae5:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    1ae9:	eb 50                	jmp    1b3b <concreate+0x7b>
    1aeb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1aef:	90                   	nop
    1af0:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    1af6:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    1afb:	0f 83 bf 00 00 00    	jae    1bc0 <concreate+0x100>
      fd = open(file, O_CREATE | O_RDWR);
    1b01:	83 ec 08             	sub    $0x8,%esp
    1b04:	68 02 02 00 00       	push   $0x202
    1b09:	53                   	push   %ebx
    1b0a:	e8 a4 24 00 00       	call   3fb3 <open>
      if(fd < 0){
    1b0f:	83 c4 10             	add    $0x10,%esp
    1b12:	85 c0                	test   %eax,%eax
    1b14:	78 67                	js     1b7d <concreate+0xbd>
      close(fd);
    1b16:	83 ec 0c             	sub    $0xc,%esp
    1b19:	50                   	push   %eax
    1b1a:	e8 7c 24 00 00       	call   3f9b <close>
    1b1f:	83 c4 10             	add    $0x10,%esp
      wait(0);
    1b22:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1b25:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1b28:	6a 00                	push   $0x0
    1b2a:	e8 4c 24 00 00       	call   3f7b <wait>
  for(i = 0; i < 40; i++){
    1b2f:	83 c4 10             	add    $0x10,%esp
    1b32:	83 fe 28             	cmp    $0x28,%esi
    1b35:	0f 84 a5 00 00 00    	je     1be0 <concreate+0x120>
    unlink(file);
    1b3b:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1b3e:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1b41:	53                   	push   %ebx
    file[1] = '0' + i;
    1b42:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1b45:	e8 79 24 00 00       	call   3fc3 <unlink>
    pid = fork();
    1b4a:	e8 1c 24 00 00       	call   3f6b <fork>
    if(pid && (i % 3) == 1){
    1b4f:	83 c4 10             	add    $0x10,%esp
    1b52:	85 c0                	test   %eax,%eax
    1b54:	75 9a                	jne    1af0 <concreate+0x30>
      link("C0", file);
    1b56:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    1b5c:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    1b62:	73 3c                	jae    1ba0 <concreate+0xe0>
      fd = open(file, O_CREATE | O_RDWR);
    1b64:	83 ec 08             	sub    $0x8,%esp
    1b67:	68 02 02 00 00       	push   $0x202
    1b6c:	53                   	push   %ebx
    1b6d:	e8 41 24 00 00       	call   3fb3 <open>
      if(fd < 0){
    1b72:	83 c4 10             	add    $0x10,%esp
    1b75:	85 c0                	test   %eax,%eax
    1b77:	0f 89 5d 02 00 00    	jns    1dda <concreate+0x31a>
        printf(1, "concreate create %s failed\n", file);
    1b7d:	83 ec 04             	sub    $0x4,%esp
    1b80:	53                   	push   %ebx
    1b81:	68 c4 4a 00 00       	push   $0x4ac4
    1b86:	6a 01                	push   $0x1
    1b88:	e8 63 25 00 00       	call   40f0 <printf>
        exit(-1);
    1b8d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1b94:	e8 da 23 00 00       	call   3f73 <exit>
    1b99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      link("C0", file);
    1ba0:	83 ec 08             	sub    $0x8,%esp
    1ba3:	53                   	push   %ebx
    1ba4:	68 c1 4a 00 00       	push   $0x4ac1
    1ba9:	e8 25 24 00 00       	call   3fd3 <link>
    1bae:	83 c4 10             	add    $0x10,%esp
      exit(0);
    1bb1:	83 ec 0c             	sub    $0xc,%esp
    1bb4:	6a 00                	push   $0x0
    1bb6:	e8 b8 23 00 00       	call   3f73 <exit>
    1bbb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1bbf:	90                   	nop
      link("C0", file);
    1bc0:	83 ec 08             	sub    $0x8,%esp
    1bc3:	53                   	push   %ebx
    1bc4:	68 c1 4a 00 00       	push   $0x4ac1
    1bc9:	e8 05 24 00 00       	call   3fd3 <link>
    1bce:	83 c4 10             	add    $0x10,%esp
    1bd1:	e9 4c ff ff ff       	jmp    1b22 <concreate+0x62>
    1bd6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bdd:	8d 76 00             	lea    0x0(%esi),%esi
  memset(fa, 0, sizeof(fa));
    1be0:	83 ec 04             	sub    $0x4,%esp
    1be3:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1be6:	6a 28                	push   $0x28
    1be8:	6a 00                	push   $0x0
    1bea:	50                   	push   %eax
    1beb:	e8 e0 21 00 00       	call   3dd0 <memset>
  fd = open(".", 0);
    1bf0:	5e                   	pop    %esi
    1bf1:	5f                   	pop    %edi
    1bf2:	6a 00                	push   $0x0
    1bf4:	68 ce 4c 00 00       	push   $0x4cce
    1bf9:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1bfc:	e8 b2 23 00 00       	call   3fb3 <open>
  n = 0;
    1c01:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  while(read(fd, &de, sizeof(de)) > 0){
    1c08:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    1c0b:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1c0d:	8d 76 00             	lea    0x0(%esi),%esi
    1c10:	83 ec 04             	sub    $0x4,%esp
    1c13:	6a 10                	push   $0x10
    1c15:	57                   	push   %edi
    1c16:	56                   	push   %esi
    1c17:	e8 6f 23 00 00       	call   3f8b <read>
    1c1c:	83 c4 10             	add    $0x10,%esp
    1c1f:	85 c0                	test   %eax,%eax
    1c21:	7e 3d                	jle    1c60 <concreate+0x1a0>
    if(de.inum == 0)
    1c23:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1c28:	74 e6                	je     1c10 <concreate+0x150>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1c2a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1c2e:	75 e0                	jne    1c10 <concreate+0x150>
    1c30:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1c34:	75 da                	jne    1c10 <concreate+0x150>
      i = de.name[1] - '0';
    1c36:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1c3a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1c3d:	83 f8 27             	cmp    $0x27,%eax
    1c40:	0f 87 75 01 00 00    	ja     1dbb <concreate+0x2fb>
      if(fa[i]){
    1c46:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1c4b:	0f 85 4b 01 00 00    	jne    1d9c <concreate+0x2dc>
      n++;
    1c51:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    1c55:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1c5a:	eb b4                	jmp    1c10 <concreate+0x150>
    1c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1c60:	83 ec 0c             	sub    $0xc,%esp
    1c63:	56                   	push   %esi
    1c64:	e8 32 23 00 00       	call   3f9b <close>
  if(n != 40){
    1c69:	83 c4 10             	add    $0x10,%esp
    1c6c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1c70:	0f 85 0c 01 00 00    	jne    1d82 <concreate+0x2c2>
  for(i = 0; i < 40; i++){
    1c76:	31 f6                	xor    %esi,%esi
    1c78:	eb 54                	jmp    1cce <concreate+0x20e>
    1c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1c80:	85 ff                	test   %edi,%edi
    1c82:	74 05                	je     1c89 <concreate+0x1c9>
    1c84:	83 f8 01             	cmp    $0x1,%eax
    1c87:	74 74                	je     1cfd <concreate+0x23d>
      unlink(file);
    1c89:	83 ec 0c             	sub    $0xc,%esp
    1c8c:	53                   	push   %ebx
    1c8d:	e8 31 23 00 00       	call   3fc3 <unlink>
      unlink(file);
    1c92:	89 1c 24             	mov    %ebx,(%esp)
    1c95:	e8 29 23 00 00       	call   3fc3 <unlink>
      unlink(file);
    1c9a:	89 1c 24             	mov    %ebx,(%esp)
    1c9d:	e8 21 23 00 00       	call   3fc3 <unlink>
      unlink(file);
    1ca2:	89 1c 24             	mov    %ebx,(%esp)
    1ca5:	e8 19 23 00 00       	call   3fc3 <unlink>
    1caa:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    1cad:	85 ff                	test   %edi,%edi
    1caf:	0f 84 fc fe ff ff    	je     1bb1 <concreate+0xf1>
      wait(0);
    1cb5:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1cb8:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1cbb:	6a 00                	push   $0x0
    1cbd:	e8 b9 22 00 00       	call   3f7b <wait>
  for(i = 0; i < 40; i++){
    1cc2:	83 c4 10             	add    $0x10,%esp
    1cc5:	83 fe 28             	cmp    $0x28,%esi
    1cc8:	0f 84 82 00 00 00    	je     1d50 <concreate+0x290>
    file[1] = '0' + i;
    1cce:	8d 46 30             	lea    0x30(%esi),%eax
    1cd1:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1cd4:	e8 92 22 00 00       	call   3f6b <fork>
    1cd9:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1cdb:	85 c0                	test   %eax,%eax
    1cdd:	0f 88 84 00 00 00    	js     1d67 <concreate+0x2a7>
    if(((i % 3) == 0 && pid == 0) ||
    1ce3:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    1ce8:	f7 e6                	mul    %esi
    1cea:	89 d0                	mov    %edx,%eax
    1cec:	83 e2 fe             	and    $0xfffffffe,%edx
    1cef:	d1 e8                	shr    %eax
    1cf1:	01 c2                	add    %eax,%edx
    1cf3:	89 f0                	mov    %esi,%eax
    1cf5:	29 d0                	sub    %edx,%eax
    1cf7:	89 c1                	mov    %eax,%ecx
    1cf9:	09 f9                	or     %edi,%ecx
    1cfb:	75 83                	jne    1c80 <concreate+0x1c0>
      close(open(file, 0));
    1cfd:	83 ec 08             	sub    $0x8,%esp
    1d00:	6a 00                	push   $0x0
    1d02:	53                   	push   %ebx
    1d03:	e8 ab 22 00 00       	call   3fb3 <open>
    1d08:	89 04 24             	mov    %eax,(%esp)
    1d0b:	e8 8b 22 00 00       	call   3f9b <close>
      close(open(file, 0));
    1d10:	58                   	pop    %eax
    1d11:	5a                   	pop    %edx
    1d12:	6a 00                	push   $0x0
    1d14:	53                   	push   %ebx
    1d15:	e8 99 22 00 00       	call   3fb3 <open>
    1d1a:	89 04 24             	mov    %eax,(%esp)
    1d1d:	e8 79 22 00 00       	call   3f9b <close>
      close(open(file, 0));
    1d22:	59                   	pop    %ecx
    1d23:	58                   	pop    %eax
    1d24:	6a 00                	push   $0x0
    1d26:	53                   	push   %ebx
    1d27:	e8 87 22 00 00       	call   3fb3 <open>
    1d2c:	89 04 24             	mov    %eax,(%esp)
    1d2f:	e8 67 22 00 00       	call   3f9b <close>
      close(open(file, 0));
    1d34:	58                   	pop    %eax
    1d35:	5a                   	pop    %edx
    1d36:	6a 00                	push   $0x0
    1d38:	53                   	push   %ebx
    1d39:	e8 75 22 00 00       	call   3fb3 <open>
    1d3e:	89 04 24             	mov    %eax,(%esp)
    1d41:	e8 55 22 00 00       	call   3f9b <close>
    1d46:	83 c4 10             	add    $0x10,%esp
    1d49:	e9 5f ff ff ff       	jmp    1cad <concreate+0x1ed>
    1d4e:	66 90                	xchg   %ax,%ax
  printf(1, "concreate ok\n");
    1d50:	83 ec 08             	sub    $0x8,%esp
    1d53:	68 16 4b 00 00       	push   $0x4b16
    1d58:	6a 01                	push   $0x1
    1d5a:	e8 91 23 00 00       	call   40f0 <printf>
}
    1d5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1d62:	5b                   	pop    %ebx
    1d63:	5e                   	pop    %esi
    1d64:	5f                   	pop    %edi
    1d65:	5d                   	pop    %ebp
    1d66:	c3                   	ret    
      printf(1, "fork failed\n");
    1d67:	83 ec 08             	sub    $0x8,%esp
    1d6a:	68 99 53 00 00       	push   $0x5399
    1d6f:	6a 01                	push   $0x1
    1d71:	e8 7a 23 00 00       	call   40f0 <printf>
      exit(-1);
    1d76:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1d7d:	e8 f1 21 00 00       	call   3f73 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1d82:	51                   	push   %ecx
    1d83:	51                   	push   %ecx
    1d84:	68 60 56 00 00       	push   $0x5660
    1d89:	6a 01                	push   $0x1
    1d8b:	e8 60 23 00 00       	call   40f0 <printf>
    exit(-1);
    1d90:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1d97:	e8 d7 21 00 00       	call   3f73 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1d9c:	83 ec 04             	sub    $0x4,%esp
    1d9f:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1da2:	50                   	push   %eax
    1da3:	68 f9 4a 00 00       	push   $0x4af9
    1da8:	6a 01                	push   $0x1
    1daa:	e8 41 23 00 00       	call   40f0 <printf>
        exit(-1);
    1daf:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1db6:	e8 b8 21 00 00       	call   3f73 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1dbb:	83 ec 04             	sub    $0x4,%esp
    1dbe:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1dc1:	50                   	push   %eax
    1dc2:	68 e0 4a 00 00       	push   $0x4ae0
    1dc7:	6a 01                	push   $0x1
    1dc9:	e8 22 23 00 00       	call   40f0 <printf>
        exit(-1);
    1dce:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1dd5:	e8 99 21 00 00       	call   3f73 <exit>
      close(fd);
    1dda:	83 ec 0c             	sub    $0xc,%esp
    1ddd:	50                   	push   %eax
    1dde:	e8 b8 21 00 00       	call   3f9b <close>
    1de3:	83 c4 10             	add    $0x10,%esp
    1de6:	e9 c6 fd ff ff       	jmp    1bb1 <concreate+0xf1>
    1deb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1def:	90                   	nop

00001df0 <linkunlink>:
{
    1df0:	f3 0f 1e fb          	endbr32 
    1df4:	55                   	push   %ebp
    1df5:	89 e5                	mov    %esp,%ebp
    1df7:	57                   	push   %edi
    1df8:	56                   	push   %esi
    1df9:	53                   	push   %ebx
    1dfa:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1dfd:	68 24 4b 00 00       	push   $0x4b24
    1e02:	6a 01                	push   $0x1
    1e04:	e8 e7 22 00 00       	call   40f0 <printf>
  unlink("x");
    1e09:	c7 04 24 b1 4d 00 00 	movl   $0x4db1,(%esp)
    1e10:	e8 ae 21 00 00       	call   3fc3 <unlink>
  pid = fork();
    1e15:	e8 51 21 00 00       	call   3f6b <fork>
  if(pid < 0){
    1e1a:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    1e1d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1e20:	85 c0                	test   %eax,%eax
    1e22:	0f 88 c2 00 00 00    	js     1eea <linkunlink+0xfa>
  unsigned int x = (pid ? 1 : 97);
    1e28:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1e2c:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1e31:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1e36:	19 ff                	sbb    %edi,%edi
    1e38:	83 e7 60             	and    $0x60,%edi
    1e3b:	83 c7 01             	add    $0x1,%edi
    1e3e:	eb 1e                	jmp    1e5e <linkunlink+0x6e>
    } else if((x % 3) == 1){
    1e40:	83 f8 01             	cmp    $0x1,%eax
    1e43:	0f 84 87 00 00 00    	je     1ed0 <linkunlink+0xe0>
      unlink("x");
    1e49:	83 ec 0c             	sub    $0xc,%esp
    1e4c:	68 b1 4d 00 00       	push   $0x4db1
    1e51:	e8 6d 21 00 00       	call   3fc3 <unlink>
    1e56:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1e59:	83 eb 01             	sub    $0x1,%ebx
    1e5c:	74 41                	je     1e9f <linkunlink+0xaf>
    x = x * 1103515245 + 12345;
    1e5e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1e64:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1e6a:	89 f8                	mov    %edi,%eax
    1e6c:	f7 e6                	mul    %esi
    1e6e:	89 d0                	mov    %edx,%eax
    1e70:	83 e2 fe             	and    $0xfffffffe,%edx
    1e73:	d1 e8                	shr    %eax
    1e75:	01 c2                	add    %eax,%edx
    1e77:	89 f8                	mov    %edi,%eax
    1e79:	29 d0                	sub    %edx,%eax
    1e7b:	75 c3                	jne    1e40 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1e7d:	83 ec 08             	sub    $0x8,%esp
    1e80:	68 02 02 00 00       	push   $0x202
    1e85:	68 b1 4d 00 00       	push   $0x4db1
    1e8a:	e8 24 21 00 00       	call   3fb3 <open>
    1e8f:	89 04 24             	mov    %eax,(%esp)
    1e92:	e8 04 21 00 00       	call   3f9b <close>
    1e97:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1e9a:	83 eb 01             	sub    $0x1,%ebx
    1e9d:	75 bf                	jne    1e5e <linkunlink+0x6e>
  if(pid)
    1e9f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    1ea2:	85 c9                	test   %ecx,%ecx
    1ea4:	74 5e                	je     1f04 <linkunlink+0x114>
    wait(0);
    1ea6:	83 ec 0c             	sub    $0xc,%esp
    1ea9:	6a 00                	push   $0x0
    1eab:	e8 cb 20 00 00       	call   3f7b <wait>
  printf(1, "linkunlink ok\n");
    1eb0:	58                   	pop    %eax
    1eb1:	5a                   	pop    %edx
    1eb2:	68 39 4b 00 00       	push   $0x4b39
    1eb7:	6a 01                	push   $0x1
    1eb9:	e8 32 22 00 00       	call   40f0 <printf>
}
    1ebe:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1ec1:	5b                   	pop    %ebx
    1ec2:	5e                   	pop    %esi
    1ec3:	5f                   	pop    %edi
    1ec4:	5d                   	pop    %ebp
    1ec5:	c3                   	ret    
    1ec6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1ecd:	8d 76 00             	lea    0x0(%esi),%esi
      link("cat", "x");
    1ed0:	83 ec 08             	sub    $0x8,%esp
    1ed3:	68 b1 4d 00 00       	push   $0x4db1
    1ed8:	68 35 4b 00 00       	push   $0x4b35
    1edd:	e8 f1 20 00 00       	call   3fd3 <link>
    1ee2:	83 c4 10             	add    $0x10,%esp
    1ee5:	e9 6f ff ff ff       	jmp    1e59 <linkunlink+0x69>
    printf(1, "fork failed\n");
    1eea:	53                   	push   %ebx
    1eeb:	53                   	push   %ebx
    1eec:	68 99 53 00 00       	push   $0x5399
    1ef1:	6a 01                	push   $0x1
    1ef3:	e8 f8 21 00 00       	call   40f0 <printf>
    exit(-1);
    1ef8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1eff:	e8 6f 20 00 00       	call   3f73 <exit>
    exit(0);
    1f04:	83 ec 0c             	sub    $0xc,%esp
    1f07:	6a 00                	push   $0x0
    1f09:	e8 65 20 00 00       	call   3f73 <exit>
    1f0e:	66 90                	xchg   %ax,%ax

00001f10 <bigdir>:
{
    1f10:	f3 0f 1e fb          	endbr32 
    1f14:	55                   	push   %ebp
    1f15:	89 e5                	mov    %esp,%ebp
    1f17:	57                   	push   %edi
    1f18:	56                   	push   %esi
    1f19:	53                   	push   %ebx
    1f1a:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1f1d:	68 48 4b 00 00       	push   $0x4b48
    1f22:	6a 01                	push   $0x1
    1f24:	e8 c7 21 00 00       	call   40f0 <printf>
  unlink("bd");
    1f29:	c7 04 24 55 4b 00 00 	movl   $0x4b55,(%esp)
    1f30:	e8 8e 20 00 00       	call   3fc3 <unlink>
  fd = open("bd", O_CREATE);
    1f35:	5a                   	pop    %edx
    1f36:	59                   	pop    %ecx
    1f37:	68 00 02 00 00       	push   $0x200
    1f3c:	68 55 4b 00 00       	push   $0x4b55
    1f41:	e8 6d 20 00 00       	call   3fb3 <open>
  if(fd < 0){
    1f46:	83 c4 10             	add    $0x10,%esp
    1f49:	85 c0                	test   %eax,%eax
    1f4b:	0f 88 f8 00 00 00    	js     2049 <bigdir+0x139>
  close(fd);
    1f51:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1f54:	31 f6                	xor    %esi,%esi
    1f56:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    1f59:	50                   	push   %eax
    1f5a:	e8 3c 20 00 00       	call   3f9b <close>
    1f5f:	83 c4 10             	add    $0x10,%esp
    1f62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + (i / 64);
    1f68:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1f6a:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1f6d:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1f71:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    1f74:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    1f75:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1f78:	68 55 4b 00 00       	push   $0x4b55
    name[1] = '0' + (i / 64);
    1f7d:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1f80:	89 f0                	mov    %esi,%eax
    1f82:	83 e0 3f             	and    $0x3f,%eax
    name[3] = '\0';
    1f85:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[2] = '0' + (i % 64);
    1f89:	83 c0 30             	add    $0x30,%eax
    1f8c:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1f8f:	e8 3f 20 00 00       	call   3fd3 <link>
    1f94:	83 c4 10             	add    $0x10,%esp
    1f97:	89 c3                	mov    %eax,%ebx
    1f99:	85 c0                	test   %eax,%eax
    1f9b:	75 76                	jne    2013 <bigdir+0x103>
  for(i = 0; i < 500; i++){
    1f9d:	83 c6 01             	add    $0x1,%esi
    1fa0:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1fa6:	75 c0                	jne    1f68 <bigdir+0x58>
  unlink("bd");
    1fa8:	83 ec 0c             	sub    $0xc,%esp
    1fab:	68 55 4b 00 00       	push   $0x4b55
    1fb0:	e8 0e 20 00 00       	call   3fc3 <unlink>
    1fb5:	83 c4 10             	add    $0x10,%esp
    1fb8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1fbf:	90                   	nop
    name[1] = '0' + (i / 64);
    1fc0:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1fc2:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1fc5:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1fc9:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    1fcc:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    1fcd:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    1fd0:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1fd4:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1fd7:	89 d8                	mov    %ebx,%eax
    1fd9:	83 e0 3f             	and    $0x3f,%eax
    1fdc:	83 c0 30             	add    $0x30,%eax
    1fdf:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1fe2:	e8 dc 1f 00 00       	call   3fc3 <unlink>
    1fe7:	83 c4 10             	add    $0x10,%esp
    1fea:	85 c0                	test   %eax,%eax
    1fec:	75 40                	jne    202e <bigdir+0x11e>
  for(i = 0; i < 500; i++){
    1fee:	83 c3 01             	add    $0x1,%ebx
    1ff1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1ff7:	75 c7                	jne    1fc0 <bigdir+0xb0>
  printf(1, "bigdir ok\n");
    1ff9:	83 ec 08             	sub    $0x8,%esp
    1ffc:	68 97 4b 00 00       	push   $0x4b97
    2001:	6a 01                	push   $0x1
    2003:	e8 e8 20 00 00       	call   40f0 <printf>
    2008:	83 c4 10             	add    $0x10,%esp
}
    200b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    200e:	5b                   	pop    %ebx
    200f:	5e                   	pop    %esi
    2010:	5f                   	pop    %edi
    2011:	5d                   	pop    %ebp
    2012:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    2013:	83 ec 08             	sub    $0x8,%esp
    2016:	68 6e 4b 00 00       	push   $0x4b6e
    201b:	6a 01                	push   $0x1
    201d:	e8 ce 20 00 00       	call   40f0 <printf>
      exit(-1);
    2022:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2029:	e8 45 1f 00 00       	call   3f73 <exit>
      printf(1, "bigdir unlink failed");
    202e:	83 ec 08             	sub    $0x8,%esp
    2031:	68 82 4b 00 00       	push   $0x4b82
    2036:	6a 01                	push   $0x1
    2038:	e8 b3 20 00 00       	call   40f0 <printf>
      exit(-1);
    203d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2044:	e8 2a 1f 00 00       	call   3f73 <exit>
    printf(1, "bigdir create failed\n");
    2049:	50                   	push   %eax
    204a:	50                   	push   %eax
    204b:	68 58 4b 00 00       	push   $0x4b58
    2050:	6a 01                	push   $0x1
    2052:	e8 99 20 00 00       	call   40f0 <printf>
    exit(-1);
    2057:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    205e:	e8 10 1f 00 00       	call   3f73 <exit>
    2063:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    206a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00002070 <subdir>:
{
    2070:	f3 0f 1e fb          	endbr32 
    2074:	55                   	push   %ebp
    2075:	89 e5                	mov    %esp,%ebp
    2077:	53                   	push   %ebx
    2078:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    207b:	68 a2 4b 00 00       	push   $0x4ba2
    2080:	6a 01                	push   $0x1
    2082:	e8 69 20 00 00       	call   40f0 <printf>
  unlink("ff");
    2087:	c7 04 24 2b 4c 00 00 	movl   $0x4c2b,(%esp)
    208e:	e8 30 1f 00 00       	call   3fc3 <unlink>
  if(mkdir("dd") != 0){
    2093:	c7 04 24 c8 4c 00 00 	movl   $0x4cc8,(%esp)
    209a:	e8 3c 1f 00 00       	call   3fdb <mkdir>
    209f:	83 c4 10             	add    $0x10,%esp
    20a2:	85 c0                	test   %eax,%eax
    20a4:	0f 85 4d 06 00 00    	jne    26f7 <subdir+0x687>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    20aa:	83 ec 08             	sub    $0x8,%esp
    20ad:	68 02 02 00 00       	push   $0x202
    20b2:	68 01 4c 00 00       	push   $0x4c01
    20b7:	e8 f7 1e 00 00       	call   3fb3 <open>
  if(fd < 0){
    20bc:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    20bf:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20c1:	85 c0                	test   %eax,%eax
    20c3:	0f 88 14 06 00 00    	js     26dd <subdir+0x66d>
  write(fd, "ff", 2);
    20c9:	83 ec 04             	sub    $0x4,%esp
    20cc:	6a 02                	push   $0x2
    20ce:	68 2b 4c 00 00       	push   $0x4c2b
    20d3:	50                   	push   %eax
    20d4:	e8 ba 1e 00 00       	call   3f93 <write>
  close(fd);
    20d9:	89 1c 24             	mov    %ebx,(%esp)
    20dc:	e8 ba 1e 00 00       	call   3f9b <close>
  if(unlink("dd") >= 0){
    20e1:	c7 04 24 c8 4c 00 00 	movl   $0x4cc8,(%esp)
    20e8:	e8 d6 1e 00 00       	call   3fc3 <unlink>
    20ed:	83 c4 10             	add    $0x10,%esp
    20f0:	85 c0                	test   %eax,%eax
    20f2:	0f 89 cb 05 00 00    	jns    26c3 <subdir+0x653>
  if(mkdir("/dd/dd") != 0){
    20f8:	83 ec 0c             	sub    $0xc,%esp
    20fb:	68 dc 4b 00 00       	push   $0x4bdc
    2100:	e8 d6 1e 00 00       	call   3fdb <mkdir>
    2105:	83 c4 10             	add    $0x10,%esp
    2108:	85 c0                	test   %eax,%eax
    210a:	0f 85 95 04 00 00    	jne    25a5 <subdir+0x535>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2110:	83 ec 08             	sub    $0x8,%esp
    2113:	68 02 02 00 00       	push   $0x202
    2118:	68 fe 4b 00 00       	push   $0x4bfe
    211d:	e8 91 1e 00 00       	call   3fb3 <open>
  if(fd < 0){
    2122:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2125:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2127:	85 c0                	test   %eax,%eax
    2129:	0f 88 aa 04 00 00    	js     25d9 <subdir+0x569>
  write(fd, "FF", 2);
    212f:	83 ec 04             	sub    $0x4,%esp
    2132:	6a 02                	push   $0x2
    2134:	68 1f 4c 00 00       	push   $0x4c1f
    2139:	50                   	push   %eax
    213a:	e8 54 1e 00 00       	call   3f93 <write>
  close(fd);
    213f:	89 1c 24             	mov    %ebx,(%esp)
    2142:	e8 54 1e 00 00       	call   3f9b <close>
  fd = open("dd/dd/../ff", 0);
    2147:	58                   	pop    %eax
    2148:	5a                   	pop    %edx
    2149:	6a 00                	push   $0x0
    214b:	68 22 4c 00 00       	push   $0x4c22
    2150:	e8 5e 1e 00 00       	call   3fb3 <open>
  if(fd < 0){
    2155:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    2158:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    215a:	85 c0                	test   %eax,%eax
    215c:	0f 88 5d 04 00 00    	js     25bf <subdir+0x54f>
  cc = read(fd, buf, sizeof(buf));
    2162:	83 ec 04             	sub    $0x4,%esp
    2165:	68 00 20 00 00       	push   $0x2000
    216a:	68 e0 8c 00 00       	push   $0x8ce0
    216f:	50                   	push   %eax
    2170:	e8 16 1e 00 00       	call   3f8b <read>
  if(cc != 2 || buf[0] != 'f'){
    2175:	83 c4 10             	add    $0x10,%esp
    2178:	83 f8 02             	cmp    $0x2,%eax
    217b:	0f 85 3a 03 00 00    	jne    24bb <subdir+0x44b>
    2181:	80 3d e0 8c 00 00 66 	cmpb   $0x66,0x8ce0
    2188:	0f 85 2d 03 00 00    	jne    24bb <subdir+0x44b>
  close(fd);
    218e:	83 ec 0c             	sub    $0xc,%esp
    2191:	53                   	push   %ebx
    2192:	e8 04 1e 00 00       	call   3f9b <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2197:	59                   	pop    %ecx
    2198:	5b                   	pop    %ebx
    2199:	68 62 4c 00 00       	push   $0x4c62
    219e:	68 fe 4b 00 00       	push   $0x4bfe
    21a3:	e8 2b 1e 00 00       	call   3fd3 <link>
    21a8:	83 c4 10             	add    $0x10,%esp
    21ab:	85 c0                	test   %eax,%eax
    21ad:	0f 85 96 06 00 00    	jne    2849 <subdir+0x7d9>
  if(unlink("dd/dd/ff") != 0){
    21b3:	83 ec 0c             	sub    $0xc,%esp
    21b6:	68 fe 4b 00 00       	push   $0x4bfe
    21bb:	e8 03 1e 00 00       	call   3fc3 <unlink>
    21c0:	83 c4 10             	add    $0x10,%esp
    21c3:	85 c0                	test   %eax,%eax
    21c5:	0f 85 64 06 00 00    	jne    282f <subdir+0x7bf>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    21cb:	83 ec 08             	sub    $0x8,%esp
    21ce:	6a 00                	push   $0x0
    21d0:	68 fe 4b 00 00       	push   $0x4bfe
    21d5:	e8 d9 1d 00 00       	call   3fb3 <open>
    21da:	83 c4 10             	add    $0x10,%esp
    21dd:	85 c0                	test   %eax,%eax
    21df:	0f 89 30 06 00 00    	jns    2815 <subdir+0x7a5>
  if(chdir("dd") != 0){
    21e5:	83 ec 0c             	sub    $0xc,%esp
    21e8:	68 c8 4c 00 00       	push   $0x4cc8
    21ed:	e8 f1 1d 00 00       	call   3fe3 <chdir>
    21f2:	83 c4 10             	add    $0x10,%esp
    21f5:	85 c0                	test   %eax,%eax
    21f7:	0f 85 8e 03 00 00    	jne    258b <subdir+0x51b>
  if(chdir("dd/../../dd") != 0){
    21fd:	83 ec 0c             	sub    $0xc,%esp
    2200:	68 96 4c 00 00       	push   $0x4c96
    2205:	e8 d9 1d 00 00       	call   3fe3 <chdir>
    220a:	83 c4 10             	add    $0x10,%esp
    220d:	85 c0                	test   %eax,%eax
    220f:	0f 85 c0 02 00 00    	jne    24d5 <subdir+0x465>
  if(chdir("dd/../../../dd") != 0){
    2215:	83 ec 0c             	sub    $0xc,%esp
    2218:	68 bc 4c 00 00       	push   $0x4cbc
    221d:	e8 c1 1d 00 00       	call   3fe3 <chdir>
    2222:	83 c4 10             	add    $0x10,%esp
    2225:	85 c0                	test   %eax,%eax
    2227:	0f 85 a8 02 00 00    	jne    24d5 <subdir+0x465>
  if(chdir("./..") != 0){
    222d:	83 ec 0c             	sub    $0xc,%esp
    2230:	68 cb 4c 00 00       	push   $0x4ccb
    2235:	e8 a9 1d 00 00       	call   3fe3 <chdir>
    223a:	83 c4 10             	add    $0x10,%esp
    223d:	85 c0                	test   %eax,%eax
    223f:	0f 85 30 04 00 00    	jne    2675 <subdir+0x605>
  fd = open("dd/dd/ffff", 0);
    2245:	83 ec 08             	sub    $0x8,%esp
    2248:	6a 00                	push   $0x0
    224a:	68 62 4c 00 00       	push   $0x4c62
    224f:	e8 5f 1d 00 00       	call   3fb3 <open>
  if(fd < 0){
    2254:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    2257:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2259:	85 c0                	test   %eax,%eax
    225b:	0f 88 48 04 00 00    	js     26a9 <subdir+0x639>
  if(read(fd, buf, sizeof(buf)) != 2){
    2261:	83 ec 04             	sub    $0x4,%esp
    2264:	68 00 20 00 00       	push   $0x2000
    2269:	68 e0 8c 00 00       	push   $0x8ce0
    226e:	50                   	push   %eax
    226f:	e8 17 1d 00 00       	call   3f8b <read>
    2274:	83 c4 10             	add    $0x10,%esp
    2277:	83 f8 02             	cmp    $0x2,%eax
    227a:	0f 85 0f 04 00 00    	jne    268f <subdir+0x61f>
  close(fd);
    2280:	83 ec 0c             	sub    $0xc,%esp
    2283:	53                   	push   %ebx
    2284:	e8 12 1d 00 00       	call   3f9b <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2289:	58                   	pop    %eax
    228a:	5a                   	pop    %edx
    228b:	6a 00                	push   $0x0
    228d:	68 fe 4b 00 00       	push   $0x4bfe
    2292:	e8 1c 1d 00 00       	call   3fb3 <open>
    2297:	83 c4 10             	add    $0x10,%esp
    229a:	85 c0                	test   %eax,%eax
    229c:	0f 89 67 02 00 00    	jns    2509 <subdir+0x499>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    22a2:	83 ec 08             	sub    $0x8,%esp
    22a5:	68 02 02 00 00       	push   $0x202
    22aa:	68 16 4d 00 00       	push   $0x4d16
    22af:	e8 ff 1c 00 00       	call   3fb3 <open>
    22b4:	83 c4 10             	add    $0x10,%esp
    22b7:	85 c0                	test   %eax,%eax
    22b9:	0f 89 30 02 00 00    	jns    24ef <subdir+0x47f>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    22bf:	83 ec 08             	sub    $0x8,%esp
    22c2:	68 02 02 00 00       	push   $0x202
    22c7:	68 3b 4d 00 00       	push   $0x4d3b
    22cc:	e8 e2 1c 00 00       	call   3fb3 <open>
    22d1:	83 c4 10             	add    $0x10,%esp
    22d4:	85 c0                	test   %eax,%eax
    22d6:	0f 89 47 02 00 00    	jns    2523 <subdir+0x4b3>
  if(open("dd", O_CREATE) >= 0){
    22dc:	83 ec 08             	sub    $0x8,%esp
    22df:	68 00 02 00 00       	push   $0x200
    22e4:	68 c8 4c 00 00       	push   $0x4cc8
    22e9:	e8 c5 1c 00 00       	call   3fb3 <open>
    22ee:	83 c4 10             	add    $0x10,%esp
    22f1:	85 c0                	test   %eax,%eax
    22f3:	0f 89 62 03 00 00    	jns    265b <subdir+0x5eb>
  if(open("dd", O_RDWR) >= 0){
    22f9:	83 ec 08             	sub    $0x8,%esp
    22fc:	6a 02                	push   $0x2
    22fe:	68 c8 4c 00 00       	push   $0x4cc8
    2303:	e8 ab 1c 00 00       	call   3fb3 <open>
    2308:	83 c4 10             	add    $0x10,%esp
    230b:	85 c0                	test   %eax,%eax
    230d:	0f 89 2e 03 00 00    	jns    2641 <subdir+0x5d1>
  if(open("dd", O_WRONLY) >= 0){
    2313:	83 ec 08             	sub    $0x8,%esp
    2316:	6a 01                	push   $0x1
    2318:	68 c8 4c 00 00       	push   $0x4cc8
    231d:	e8 91 1c 00 00       	call   3fb3 <open>
    2322:	83 c4 10             	add    $0x10,%esp
    2325:	85 c0                	test   %eax,%eax
    2327:	0f 89 fa 02 00 00    	jns    2627 <subdir+0x5b7>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    232d:	83 ec 08             	sub    $0x8,%esp
    2330:	68 aa 4d 00 00       	push   $0x4daa
    2335:	68 16 4d 00 00       	push   $0x4d16
    233a:	e8 94 1c 00 00       	call   3fd3 <link>
    233f:	83 c4 10             	add    $0x10,%esp
    2342:	85 c0                	test   %eax,%eax
    2344:	0f 84 c3 02 00 00    	je     260d <subdir+0x59d>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    234a:	83 ec 08             	sub    $0x8,%esp
    234d:	68 aa 4d 00 00       	push   $0x4daa
    2352:	68 3b 4d 00 00       	push   $0x4d3b
    2357:	e8 77 1c 00 00       	call   3fd3 <link>
    235c:	83 c4 10             	add    $0x10,%esp
    235f:	85 c0                	test   %eax,%eax
    2361:	0f 84 8c 02 00 00    	je     25f3 <subdir+0x583>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2367:	83 ec 08             	sub    $0x8,%esp
    236a:	68 62 4c 00 00       	push   $0x4c62
    236f:	68 01 4c 00 00       	push   $0x4c01
    2374:	e8 5a 1c 00 00       	call   3fd3 <link>
    2379:	83 c4 10             	add    $0x10,%esp
    237c:	85 c0                	test   %eax,%eax
    237e:	0f 84 d3 01 00 00    	je     2557 <subdir+0x4e7>
  if(mkdir("dd/ff/ff") == 0){
    2384:	83 ec 0c             	sub    $0xc,%esp
    2387:	68 16 4d 00 00       	push   $0x4d16
    238c:	e8 4a 1c 00 00       	call   3fdb <mkdir>
    2391:	83 c4 10             	add    $0x10,%esp
    2394:	85 c0                	test   %eax,%eax
    2396:	0f 84 a1 01 00 00    	je     253d <subdir+0x4cd>
  if(mkdir("dd/xx/ff") == 0){
    239c:	83 ec 0c             	sub    $0xc,%esp
    239f:	68 3b 4d 00 00       	push   $0x4d3b
    23a4:	e8 32 1c 00 00       	call   3fdb <mkdir>
    23a9:	83 c4 10             	add    $0x10,%esp
    23ac:	85 c0                	test   %eax,%eax
    23ae:	0f 84 bd 01 00 00    	je     2571 <subdir+0x501>
  if(mkdir("dd/dd/ffff") == 0){
    23b4:	83 ec 0c             	sub    $0xc,%esp
    23b7:	68 62 4c 00 00       	push   $0x4c62
    23bc:	e8 1a 1c 00 00       	call   3fdb <mkdir>
    23c1:	83 c4 10             	add    $0x10,%esp
    23c4:	85 c0                	test   %eax,%eax
    23c6:	0f 84 2f 04 00 00    	je     27fb <subdir+0x78b>
  if(unlink("dd/xx/ff") == 0){
    23cc:	83 ec 0c             	sub    $0xc,%esp
    23cf:	68 3b 4d 00 00       	push   $0x4d3b
    23d4:	e8 ea 1b 00 00       	call   3fc3 <unlink>
    23d9:	83 c4 10             	add    $0x10,%esp
    23dc:	85 c0                	test   %eax,%eax
    23de:	0f 84 fd 03 00 00    	je     27e1 <subdir+0x771>
  if(unlink("dd/ff/ff") == 0){
    23e4:	83 ec 0c             	sub    $0xc,%esp
    23e7:	68 16 4d 00 00       	push   $0x4d16
    23ec:	e8 d2 1b 00 00       	call   3fc3 <unlink>
    23f1:	83 c4 10             	add    $0x10,%esp
    23f4:	85 c0                	test   %eax,%eax
    23f6:	0f 84 cb 03 00 00    	je     27c7 <subdir+0x757>
  if(chdir("dd/ff") == 0){
    23fc:	83 ec 0c             	sub    $0xc,%esp
    23ff:	68 01 4c 00 00       	push   $0x4c01
    2404:	e8 da 1b 00 00       	call   3fe3 <chdir>
    2409:	83 c4 10             	add    $0x10,%esp
    240c:	85 c0                	test   %eax,%eax
    240e:	0f 84 99 03 00 00    	je     27ad <subdir+0x73d>
  if(chdir("dd/xx") == 0){
    2414:	83 ec 0c             	sub    $0xc,%esp
    2417:	68 ad 4d 00 00       	push   $0x4dad
    241c:	e8 c2 1b 00 00       	call   3fe3 <chdir>
    2421:	83 c4 10             	add    $0x10,%esp
    2424:	85 c0                	test   %eax,%eax
    2426:	0f 84 67 03 00 00    	je     2793 <subdir+0x723>
  if(unlink("dd/dd/ffff") != 0){
    242c:	83 ec 0c             	sub    $0xc,%esp
    242f:	68 62 4c 00 00       	push   $0x4c62
    2434:	e8 8a 1b 00 00       	call   3fc3 <unlink>
    2439:	83 c4 10             	add    $0x10,%esp
    243c:	85 c0                	test   %eax,%eax
    243e:	0f 85 35 03 00 00    	jne    2779 <subdir+0x709>
  if(unlink("dd/ff") != 0){
    2444:	83 ec 0c             	sub    $0xc,%esp
    2447:	68 01 4c 00 00       	push   $0x4c01
    244c:	e8 72 1b 00 00       	call   3fc3 <unlink>
    2451:	83 c4 10             	add    $0x10,%esp
    2454:	85 c0                	test   %eax,%eax
    2456:	0f 85 03 03 00 00    	jne    275f <subdir+0x6ef>
  if(unlink("dd") == 0){
    245c:	83 ec 0c             	sub    $0xc,%esp
    245f:	68 c8 4c 00 00       	push   $0x4cc8
    2464:	e8 5a 1b 00 00       	call   3fc3 <unlink>
    2469:	83 c4 10             	add    $0x10,%esp
    246c:	85 c0                	test   %eax,%eax
    246e:	0f 84 d1 02 00 00    	je     2745 <subdir+0x6d5>
  if(unlink("dd/dd") < 0){
    2474:	83 ec 0c             	sub    $0xc,%esp
    2477:	68 dd 4b 00 00       	push   $0x4bdd
    247c:	e8 42 1b 00 00       	call   3fc3 <unlink>
    2481:	83 c4 10             	add    $0x10,%esp
    2484:	85 c0                	test   %eax,%eax
    2486:	0f 88 9f 02 00 00    	js     272b <subdir+0x6bb>
  if(unlink("dd") < 0){
    248c:	83 ec 0c             	sub    $0xc,%esp
    248f:	68 c8 4c 00 00       	push   $0x4cc8
    2494:	e8 2a 1b 00 00       	call   3fc3 <unlink>
    2499:	83 c4 10             	add    $0x10,%esp
    249c:	85 c0                	test   %eax,%eax
    249e:	0f 88 6d 02 00 00    	js     2711 <subdir+0x6a1>
  printf(1, "subdir ok\n");
    24a4:	83 ec 08             	sub    $0x8,%esp
    24a7:	68 aa 4e 00 00       	push   $0x4eaa
    24ac:	6a 01                	push   $0x1
    24ae:	e8 3d 1c 00 00       	call   40f0 <printf>
}
    24b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    24b6:	83 c4 10             	add    $0x10,%esp
    24b9:	c9                   	leave  
    24ba:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    24bb:	50                   	push   %eax
    24bc:	50                   	push   %eax
    24bd:	68 47 4c 00 00       	push   $0x4c47
    24c2:	6a 01                	push   $0x1
    24c4:	e8 27 1c 00 00       	call   40f0 <printf>
    exit(-1);
    24c9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    24d0:	e8 9e 1a 00 00       	call   3f73 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    24d5:	50                   	push   %eax
    24d6:	50                   	push   %eax
    24d7:	68 a2 4c 00 00       	push   $0x4ca2
    24dc:	6a 01                	push   $0x1
    24de:	e8 0d 1c 00 00       	call   40f0 <printf>
    exit(-1);
    24e3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    24ea:	e8 84 1a 00 00       	call   3f73 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    24ef:	53                   	push   %ebx
    24f0:	53                   	push   %ebx
    24f1:	68 1f 4d 00 00       	push   $0x4d1f
    24f6:	6a 01                	push   $0x1
    24f8:	e8 f3 1b 00 00       	call   40f0 <printf>
    exit(0);
    24fd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2504:	e8 6a 1a 00 00       	call   3f73 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2509:	50                   	push   %eax
    250a:	50                   	push   %eax
    250b:	68 04 57 00 00       	push   $0x5704
    2510:	6a 01                	push   $0x1
    2512:	e8 d9 1b 00 00       	call   40f0 <printf>
    exit(0);
    2517:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    251e:	e8 50 1a 00 00       	call   3f73 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2523:	51                   	push   %ecx
    2524:	51                   	push   %ecx
    2525:	68 44 4d 00 00       	push   $0x4d44
    252a:	6a 01                	push   $0x1
    252c:	e8 bf 1b 00 00       	call   40f0 <printf>
    exit(0);
    2531:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2538:	e8 36 1a 00 00       	call   3f73 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    253d:	53                   	push   %ebx
    253e:	53                   	push   %ebx
    253f:	68 b3 4d 00 00       	push   $0x4db3
    2544:	6a 01                	push   $0x1
    2546:	e8 a5 1b 00 00       	call   40f0 <printf>
    exit(0);
    254b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2552:	e8 1c 1a 00 00       	call   3f73 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2557:	50                   	push   %eax
    2558:	50                   	push   %eax
    2559:	68 74 57 00 00       	push   $0x5774
    255e:	6a 01                	push   $0x1
    2560:	e8 8b 1b 00 00       	call   40f0 <printf>
    exit(0);
    2565:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    256c:	e8 02 1a 00 00       	call   3f73 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2571:	51                   	push   %ecx
    2572:	51                   	push   %ecx
    2573:	68 ce 4d 00 00       	push   $0x4dce
    2578:	6a 01                	push   $0x1
    257a:	e8 71 1b 00 00       	call   40f0 <printf>
    exit(0);
    257f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2586:	e8 e8 19 00 00       	call   3f73 <exit>
    printf(1, "chdir dd failed\n");
    258b:	50                   	push   %eax
    258c:	50                   	push   %eax
    258d:	68 85 4c 00 00       	push   $0x4c85
    2592:	6a 01                	push   $0x1
    2594:	e8 57 1b 00 00       	call   40f0 <printf>
    exit(-1);
    2599:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    25a0:	e8 ce 19 00 00       	call   3f73 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    25a5:	53                   	push   %ebx
    25a6:	53                   	push   %ebx
    25a7:	68 e3 4b 00 00       	push   $0x4be3
    25ac:	6a 01                	push   $0x1
    25ae:	e8 3d 1b 00 00       	call   40f0 <printf>
    exit(-1);
    25b3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    25ba:	e8 b4 19 00 00       	call   3f73 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    25bf:	50                   	push   %eax
    25c0:	50                   	push   %eax
    25c1:	68 2e 4c 00 00       	push   $0x4c2e
    25c6:	6a 01                	push   $0x1
    25c8:	e8 23 1b 00 00       	call   40f0 <printf>
    exit(-1);
    25cd:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    25d4:	e8 9a 19 00 00       	call   3f73 <exit>
    printf(1, "create dd/dd/ff failed\n");
    25d9:	51                   	push   %ecx
    25da:	51                   	push   %ecx
    25db:	68 07 4c 00 00       	push   $0x4c07
    25e0:	6a 01                	push   $0x1
    25e2:	e8 09 1b 00 00       	call   40f0 <printf>
    exit(-1);
    25e7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    25ee:	e8 80 19 00 00       	call   3f73 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    25f3:	50                   	push   %eax
    25f4:	50                   	push   %eax
    25f5:	68 50 57 00 00       	push   $0x5750
    25fa:	6a 01                	push   $0x1
    25fc:	e8 ef 1a 00 00       	call   40f0 <printf>
    exit(0);
    2601:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2608:	e8 66 19 00 00       	call   3f73 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    260d:	50                   	push   %eax
    260e:	50                   	push   %eax
    260f:	68 2c 57 00 00       	push   $0x572c
    2614:	6a 01                	push   $0x1
    2616:	e8 d5 1a 00 00       	call   40f0 <printf>
    exit(0);
    261b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2622:	e8 4c 19 00 00       	call   3f73 <exit>
    printf(1, "open dd wronly succeeded!\n");
    2627:	50                   	push   %eax
    2628:	50                   	push   %eax
    2629:	68 8f 4d 00 00       	push   $0x4d8f
    262e:	6a 01                	push   $0x1
    2630:	e8 bb 1a 00 00       	call   40f0 <printf>
    exit(0);
    2635:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    263c:	e8 32 19 00 00       	call   3f73 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    2641:	50                   	push   %eax
    2642:	50                   	push   %eax
    2643:	68 76 4d 00 00       	push   $0x4d76
    2648:	6a 01                	push   $0x1
    264a:	e8 a1 1a 00 00       	call   40f0 <printf>
    exit(0);
    264f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2656:	e8 18 19 00 00       	call   3f73 <exit>
    printf(1, "create dd succeeded!\n");
    265b:	52                   	push   %edx
    265c:	52                   	push   %edx
    265d:	68 60 4d 00 00       	push   $0x4d60
    2662:	6a 01                	push   $0x1
    2664:	e8 87 1a 00 00       	call   40f0 <printf>
    exit(0);
    2669:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2670:	e8 fe 18 00 00       	call   3f73 <exit>
    printf(1, "chdir ./.. failed\n");
    2675:	50                   	push   %eax
    2676:	50                   	push   %eax
    2677:	68 d0 4c 00 00       	push   $0x4cd0
    267c:	6a 01                	push   $0x1
    267e:	e8 6d 1a 00 00       	call   40f0 <printf>
    exit(-1);
    2683:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    268a:	e8 e4 18 00 00       	call   3f73 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    268f:	51                   	push   %ecx
    2690:	51                   	push   %ecx
    2691:	68 fb 4c 00 00       	push   $0x4cfb
    2696:	6a 01                	push   $0x1
    2698:	e8 53 1a 00 00       	call   40f0 <printf>
    exit(-1);
    269d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26a4:	e8 ca 18 00 00       	call   3f73 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    26a9:	53                   	push   %ebx
    26aa:	53                   	push   %ebx
    26ab:	68 e3 4c 00 00       	push   $0x4ce3
    26b0:	6a 01                	push   $0x1
    26b2:	e8 39 1a 00 00       	call   40f0 <printf>
    exit(-1);
    26b7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26be:	e8 b0 18 00 00       	call   3f73 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    26c3:	50                   	push   %eax
    26c4:	50                   	push   %eax
    26c5:	68 94 56 00 00       	push   $0x5694
    26ca:	6a 01                	push   $0x1
    26cc:	e8 1f 1a 00 00       	call   40f0 <printf>
    exit(-1);
    26d1:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26d8:	e8 96 18 00 00       	call   3f73 <exit>
    printf(1, "create dd/ff failed\n");
    26dd:	50                   	push   %eax
    26de:	50                   	push   %eax
    26df:	68 c7 4b 00 00       	push   $0x4bc7
    26e4:	6a 01                	push   $0x1
    26e6:	e8 05 1a 00 00       	call   40f0 <printf>
    exit(-1);
    26eb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26f2:	e8 7c 18 00 00       	call   3f73 <exit>
    printf(1, "subdir mkdir dd failed\n");
    26f7:	50                   	push   %eax
    26f8:	50                   	push   %eax
    26f9:	68 af 4b 00 00       	push   $0x4baf
    26fe:	6a 01                	push   $0x1
    2700:	e8 eb 19 00 00       	call   40f0 <printf>
    exit(-1);
    2705:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    270c:	e8 62 18 00 00       	call   3f73 <exit>
    printf(1, "unlink dd failed\n");
    2711:	50                   	push   %eax
    2712:	50                   	push   %eax
    2713:	68 98 4e 00 00       	push   $0x4e98
    2718:	6a 01                	push   $0x1
    271a:	e8 d1 19 00 00       	call   40f0 <printf>
    exit(0);
    271f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2726:	e8 48 18 00 00       	call   3f73 <exit>
    printf(1, "unlink dd/dd failed\n");
    272b:	52                   	push   %edx
    272c:	52                   	push   %edx
    272d:	68 83 4e 00 00       	push   $0x4e83
    2732:	6a 01                	push   $0x1
    2734:	e8 b7 19 00 00       	call   40f0 <printf>
    exit(0);
    2739:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2740:	e8 2e 18 00 00       	call   3f73 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2745:	51                   	push   %ecx
    2746:	51                   	push   %ecx
    2747:	68 98 57 00 00       	push   $0x5798
    274c:	6a 01                	push   $0x1
    274e:	e8 9d 19 00 00       	call   40f0 <printf>
    exit(0);
    2753:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    275a:	e8 14 18 00 00       	call   3f73 <exit>
    printf(1, "unlink dd/ff failed\n");
    275f:	53                   	push   %ebx
    2760:	53                   	push   %ebx
    2761:	68 6e 4e 00 00       	push   $0x4e6e
    2766:	6a 01                	push   $0x1
    2768:	e8 83 19 00 00       	call   40f0 <printf>
    exit(0);
    276d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2774:	e8 fa 17 00 00       	call   3f73 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    2779:	50                   	push   %eax
    277a:	50                   	push   %eax
    277b:	68 6d 4c 00 00       	push   $0x4c6d
    2780:	6a 01                	push   $0x1
    2782:	e8 69 19 00 00       	call   40f0 <printf>
    exit(0);
    2787:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    278e:	e8 e0 17 00 00       	call   3f73 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    2793:	50                   	push   %eax
    2794:	50                   	push   %eax
    2795:	68 56 4e 00 00       	push   $0x4e56
    279a:	6a 01                	push   $0x1
    279c:	e8 4f 19 00 00       	call   40f0 <printf>
    exit(0);
    27a1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a8:	e8 c6 17 00 00       	call   3f73 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    27ad:	50                   	push   %eax
    27ae:	50                   	push   %eax
    27af:	68 3e 4e 00 00       	push   $0x4e3e
    27b4:	6a 01                	push   $0x1
    27b6:	e8 35 19 00 00       	call   40f0 <printf>
    exit(0);
    27bb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c2:	e8 ac 17 00 00       	call   3f73 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    27c7:	50                   	push   %eax
    27c8:	50                   	push   %eax
    27c9:	68 22 4e 00 00       	push   $0x4e22
    27ce:	6a 01                	push   $0x1
    27d0:	e8 1b 19 00 00       	call   40f0 <printf>
    exit(0);
    27d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27dc:	e8 92 17 00 00       	call   3f73 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    27e1:	50                   	push   %eax
    27e2:	50                   	push   %eax
    27e3:	68 06 4e 00 00       	push   $0x4e06
    27e8:	6a 01                	push   $0x1
    27ea:	e8 01 19 00 00       	call   40f0 <printf>
    exit(0);
    27ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27f6:	e8 78 17 00 00       	call   3f73 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    27fb:	52                   	push   %edx
    27fc:	52                   	push   %edx
    27fd:	68 e9 4d 00 00       	push   $0x4de9
    2802:	6a 01                	push   $0x1
    2804:	e8 e7 18 00 00       	call   40f0 <printf>
    exit(0);
    2809:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2810:	e8 5e 17 00 00       	call   3f73 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    2815:	50                   	push   %eax
    2816:	50                   	push   %eax
    2817:	68 e0 56 00 00       	push   $0x56e0
    281c:	6a 01                	push   $0x1
    281e:	e8 cd 18 00 00       	call   40f0 <printf>
    exit(0);
    2823:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    282a:	e8 44 17 00 00       	call   3f73 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    282f:	50                   	push   %eax
    2830:	50                   	push   %eax
    2831:	68 6d 4c 00 00       	push   $0x4c6d
    2836:	6a 01                	push   $0x1
    2838:	e8 b3 18 00 00       	call   40f0 <printf>
    exit(-1);
    283d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2844:	e8 2a 17 00 00       	call   3f73 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2849:	52                   	push   %edx
    284a:	52                   	push   %edx
    284b:	68 bc 56 00 00       	push   $0x56bc
    2850:	6a 01                	push   $0x1
    2852:	e8 99 18 00 00       	call   40f0 <printf>
    exit(-1);
    2857:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    285e:	e8 10 17 00 00       	call   3f73 <exit>
    2863:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    286a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00002870 <bigwrite>:
{
    2870:	f3 0f 1e fb          	endbr32 
    2874:	55                   	push   %ebp
    2875:	89 e5                	mov    %esp,%ebp
    2877:	56                   	push   %esi
    2878:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2879:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    287e:	83 ec 08             	sub    $0x8,%esp
    2881:	68 b5 4e 00 00       	push   $0x4eb5
    2886:	6a 01                	push   $0x1
    2888:	e8 63 18 00 00       	call   40f0 <printf>
  unlink("bigwrite");
    288d:	c7 04 24 c4 4e 00 00 	movl   $0x4ec4,(%esp)
    2894:	e8 2a 17 00 00       	call   3fc3 <unlink>
    2899:	83 c4 10             	add    $0x10,%esp
    289c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28a0:	83 ec 08             	sub    $0x8,%esp
    28a3:	68 02 02 00 00       	push   $0x202
    28a8:	68 c4 4e 00 00       	push   $0x4ec4
    28ad:	e8 01 17 00 00       	call   3fb3 <open>
    if(fd < 0){
    28b2:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28b5:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    28b7:	85 c0                	test   %eax,%eax
    28b9:	0f 88 85 00 00 00    	js     2944 <bigwrite+0xd4>
      int cc = write(fd, buf, sz);
    28bf:	83 ec 04             	sub    $0x4,%esp
    28c2:	53                   	push   %ebx
    28c3:	68 e0 8c 00 00       	push   $0x8ce0
    28c8:	50                   	push   %eax
    28c9:	e8 c5 16 00 00       	call   3f93 <write>
      if(cc != sz){
    28ce:	83 c4 10             	add    $0x10,%esp
    28d1:	39 d8                	cmp    %ebx,%eax
    28d3:	75 55                	jne    292a <bigwrite+0xba>
      int cc = write(fd, buf, sz);
    28d5:	83 ec 04             	sub    $0x4,%esp
    28d8:	53                   	push   %ebx
    28d9:	68 e0 8c 00 00       	push   $0x8ce0
    28de:	56                   	push   %esi
    28df:	e8 af 16 00 00       	call   3f93 <write>
      if(cc != sz){
    28e4:	83 c4 10             	add    $0x10,%esp
    28e7:	39 d8                	cmp    %ebx,%eax
    28e9:	75 3f                	jne    292a <bigwrite+0xba>
    close(fd);
    28eb:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    28ee:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    28f4:	56                   	push   %esi
    28f5:	e8 a1 16 00 00       	call   3f9b <close>
    unlink("bigwrite");
    28fa:	c7 04 24 c4 4e 00 00 	movl   $0x4ec4,(%esp)
    2901:	e8 bd 16 00 00       	call   3fc3 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2906:	83 c4 10             	add    $0x10,%esp
    2909:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    290f:	75 8f                	jne    28a0 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    2911:	83 ec 08             	sub    $0x8,%esp
    2914:	68 f7 4e 00 00       	push   $0x4ef7
    2919:	6a 01                	push   $0x1
    291b:	e8 d0 17 00 00       	call   40f0 <printf>
}
    2920:	83 c4 10             	add    $0x10,%esp
    2923:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2926:	5b                   	pop    %ebx
    2927:	5e                   	pop    %esi
    2928:	5d                   	pop    %ebp
    2929:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    292a:	50                   	push   %eax
    292b:	53                   	push   %ebx
    292c:	68 e5 4e 00 00       	push   $0x4ee5
    2931:	6a 01                	push   $0x1
    2933:	e8 b8 17 00 00       	call   40f0 <printf>
        exit(0);
    2938:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    293f:	e8 2f 16 00 00       	call   3f73 <exit>
      printf(1, "cannot create bigwrite\n");
    2944:	83 ec 08             	sub    $0x8,%esp
    2947:	68 cd 4e 00 00       	push   $0x4ecd
    294c:	6a 01                	push   $0x1
    294e:	e8 9d 17 00 00       	call   40f0 <printf>
      exit(-1);
    2953:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    295a:	e8 14 16 00 00       	call   3f73 <exit>
    295f:	90                   	nop

00002960 <bigfile>:
{
    2960:	f3 0f 1e fb          	endbr32 
    2964:	55                   	push   %ebp
    2965:	89 e5                	mov    %esp,%ebp
    2967:	57                   	push   %edi
    2968:	56                   	push   %esi
    2969:	53                   	push   %ebx
    296a:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    296d:	68 04 4f 00 00       	push   $0x4f04
    2972:	6a 01                	push   $0x1
    2974:	e8 77 17 00 00       	call   40f0 <printf>
  unlink("bigfile");
    2979:	c7 04 24 20 4f 00 00 	movl   $0x4f20,(%esp)
    2980:	e8 3e 16 00 00       	call   3fc3 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2985:	58                   	pop    %eax
    2986:	5a                   	pop    %edx
    2987:	68 02 02 00 00       	push   $0x202
    298c:	68 20 4f 00 00       	push   $0x4f20
    2991:	e8 1d 16 00 00       	call   3fb3 <open>
  if(fd < 0){
    2996:	83 c4 10             	add    $0x10,%esp
    2999:	85 c0                	test   %eax,%eax
    299b:	0f 88 7d 01 00 00    	js     2b1e <bigfile+0x1be>
    29a1:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    29a3:	31 db                	xor    %ebx,%ebx
    29a5:	8d 76 00             	lea    0x0(%esi),%esi
    memset(buf, i, 600);
    29a8:	83 ec 04             	sub    $0x4,%esp
    29ab:	68 58 02 00 00       	push   $0x258
    29b0:	53                   	push   %ebx
    29b1:	68 e0 8c 00 00       	push   $0x8ce0
    29b6:	e8 15 14 00 00       	call   3dd0 <memset>
    if(write(fd, buf, 600) != 600){
    29bb:	83 c4 0c             	add    $0xc,%esp
    29be:	68 58 02 00 00       	push   $0x258
    29c3:	68 e0 8c 00 00       	push   $0x8ce0
    29c8:	56                   	push   %esi
    29c9:	e8 c5 15 00 00       	call   3f93 <write>
    29ce:	83 c4 10             	add    $0x10,%esp
    29d1:	3d 58 02 00 00       	cmp    $0x258,%eax
    29d6:	0f 85 0d 01 00 00    	jne    2ae9 <bigfile+0x189>
  for(i = 0; i < 20; i++){
    29dc:	83 c3 01             	add    $0x1,%ebx
    29df:	83 fb 14             	cmp    $0x14,%ebx
    29e2:	75 c4                	jne    29a8 <bigfile+0x48>
  close(fd);
    29e4:	83 ec 0c             	sub    $0xc,%esp
    29e7:	56                   	push   %esi
    29e8:	e8 ae 15 00 00       	call   3f9b <close>
  fd = open("bigfile", 0);
    29ed:	5e                   	pop    %esi
    29ee:	5f                   	pop    %edi
    29ef:	6a 00                	push   $0x0
    29f1:	68 20 4f 00 00       	push   $0x4f20
    29f6:	e8 b8 15 00 00       	call   3fb3 <open>
  if(fd < 0){
    29fb:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    29fe:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a00:	85 c0                	test   %eax,%eax
    2a02:	0f 88 fc 00 00 00    	js     2b04 <bigfile+0x1a4>
  total = 0;
    2a08:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    2a0a:	31 ff                	xor    %edi,%edi
    2a0c:	eb 30                	jmp    2a3e <bigfile+0xde>
    2a0e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    2a10:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2a15:	0f 85 98 00 00 00    	jne    2ab3 <bigfile+0x153>
    if(buf[0] != i/2 || buf[299] != i/2){
    2a1b:	89 fa                	mov    %edi,%edx
    2a1d:	0f be 05 e0 8c 00 00 	movsbl 0x8ce0,%eax
    2a24:	d1 fa                	sar    %edx
    2a26:	39 d0                	cmp    %edx,%eax
    2a28:	75 6e                	jne    2a98 <bigfile+0x138>
    2a2a:	0f be 15 0b 8e 00 00 	movsbl 0x8e0b,%edx
    2a31:	39 d0                	cmp    %edx,%eax
    2a33:	75 63                	jne    2a98 <bigfile+0x138>
    total += cc;
    2a35:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    2a3b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    2a3e:	83 ec 04             	sub    $0x4,%esp
    2a41:	68 2c 01 00 00       	push   $0x12c
    2a46:	68 e0 8c 00 00       	push   $0x8ce0
    2a4b:	56                   	push   %esi
    2a4c:	e8 3a 15 00 00       	call   3f8b <read>
    if(cc < 0){
    2a51:	83 c4 10             	add    $0x10,%esp
    2a54:	85 c0                	test   %eax,%eax
    2a56:	78 76                	js     2ace <bigfile+0x16e>
    if(cc == 0)
    2a58:	75 b6                	jne    2a10 <bigfile+0xb0>
  close(fd);
    2a5a:	83 ec 0c             	sub    $0xc,%esp
    2a5d:	56                   	push   %esi
    2a5e:	e8 38 15 00 00       	call   3f9b <close>
  if(total != 20*600){
    2a63:	83 c4 10             	add    $0x10,%esp
    2a66:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    2a6c:	0f 85 c6 00 00 00    	jne    2b38 <bigfile+0x1d8>
  unlink("bigfile");
    2a72:	83 ec 0c             	sub    $0xc,%esp
    2a75:	68 20 4f 00 00       	push   $0x4f20
    2a7a:	e8 44 15 00 00       	call   3fc3 <unlink>
  printf(1, "bigfile test ok\n");
    2a7f:	58                   	pop    %eax
    2a80:	5a                   	pop    %edx
    2a81:	68 af 4f 00 00       	push   $0x4faf
    2a86:	6a 01                	push   $0x1
    2a88:	e8 63 16 00 00       	call   40f0 <printf>
}
    2a8d:	83 c4 10             	add    $0x10,%esp
    2a90:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2a93:	5b                   	pop    %ebx
    2a94:	5e                   	pop    %esi
    2a95:	5f                   	pop    %edi
    2a96:	5d                   	pop    %ebp
    2a97:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2a98:	83 ec 08             	sub    $0x8,%esp
    2a9b:	68 7c 4f 00 00       	push   $0x4f7c
    2aa0:	6a 01                	push   $0x1
    2aa2:	e8 49 16 00 00       	call   40f0 <printf>
      exit(-1);
    2aa7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2aae:	e8 c0 14 00 00       	call   3f73 <exit>
      printf(1, "short read bigfile\n");
    2ab3:	83 ec 08             	sub    $0x8,%esp
    2ab6:	68 68 4f 00 00       	push   $0x4f68
    2abb:	6a 01                	push   $0x1
    2abd:	e8 2e 16 00 00       	call   40f0 <printf>
      exit(-1);
    2ac2:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ac9:	e8 a5 14 00 00       	call   3f73 <exit>
      printf(1, "read bigfile failed\n");
    2ace:	83 ec 08             	sub    $0x8,%esp
    2ad1:	68 53 4f 00 00       	push   $0x4f53
    2ad6:	6a 01                	push   $0x1
    2ad8:	e8 13 16 00 00       	call   40f0 <printf>
      exit(-1);
    2add:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ae4:	e8 8a 14 00 00       	call   3f73 <exit>
      printf(1, "write bigfile failed\n");
    2ae9:	83 ec 08             	sub    $0x8,%esp
    2aec:	68 28 4f 00 00       	push   $0x4f28
    2af1:	6a 01                	push   $0x1
    2af3:	e8 f8 15 00 00       	call   40f0 <printf>
      exit(-1);
    2af8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2aff:	e8 6f 14 00 00       	call   3f73 <exit>
    printf(1, "cannot open bigfile\n");
    2b04:	53                   	push   %ebx
    2b05:	53                   	push   %ebx
    2b06:	68 3e 4f 00 00       	push   $0x4f3e
    2b0b:	6a 01                	push   $0x1
    2b0d:	e8 de 15 00 00       	call   40f0 <printf>
    exit(-1);
    2b12:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b19:	e8 55 14 00 00       	call   3f73 <exit>
    printf(1, "cannot create bigfile");
    2b1e:	50                   	push   %eax
    2b1f:	50                   	push   %eax
    2b20:	68 12 4f 00 00       	push   $0x4f12
    2b25:	6a 01                	push   $0x1
    2b27:	e8 c4 15 00 00       	call   40f0 <printf>
    exit(-1);
    2b2c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b33:	e8 3b 14 00 00       	call   3f73 <exit>
    printf(1, "read bigfile wrong total\n");
    2b38:	51                   	push   %ecx
    2b39:	51                   	push   %ecx
    2b3a:	68 95 4f 00 00       	push   $0x4f95
    2b3f:	6a 01                	push   $0x1
    2b41:	e8 aa 15 00 00       	call   40f0 <printf>
    exit(-1);
    2b46:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b4d:	e8 21 14 00 00       	call   3f73 <exit>
    2b52:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002b60 <fourteen>:
{
    2b60:	f3 0f 1e fb          	endbr32 
    2b64:	55                   	push   %ebp
    2b65:	89 e5                	mov    %esp,%ebp
    2b67:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    2b6a:	68 c0 4f 00 00       	push   $0x4fc0
    2b6f:	6a 01                	push   $0x1
    2b71:	e8 7a 15 00 00       	call   40f0 <printf>
  if(mkdir("12345678901234") != 0){
    2b76:	c7 04 24 fb 4f 00 00 	movl   $0x4ffb,(%esp)
    2b7d:	e8 59 14 00 00       	call   3fdb <mkdir>
    2b82:	83 c4 10             	add    $0x10,%esp
    2b85:	85 c0                	test   %eax,%eax
    2b87:	0f 85 9b 00 00 00    	jne    2c28 <fourteen+0xc8>
  if(mkdir("12345678901234/123456789012345") != 0){
    2b8d:	83 ec 0c             	sub    $0xc,%esp
    2b90:	68 b8 57 00 00       	push   $0x57b8
    2b95:	e8 41 14 00 00       	call   3fdb <mkdir>
    2b9a:	83 c4 10             	add    $0x10,%esp
    2b9d:	85 c0                	test   %eax,%eax
    2b9f:	0f 85 05 01 00 00    	jne    2caa <fourteen+0x14a>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2ba5:	83 ec 08             	sub    $0x8,%esp
    2ba8:	68 00 02 00 00       	push   $0x200
    2bad:	68 08 58 00 00       	push   $0x5808
    2bb2:	e8 fc 13 00 00       	call   3fb3 <open>
  if(fd < 0){
    2bb7:	83 c4 10             	add    $0x10,%esp
    2bba:	85 c0                	test   %eax,%eax
    2bbc:	0f 88 ce 00 00 00    	js     2c90 <fourteen+0x130>
  close(fd);
    2bc2:	83 ec 0c             	sub    $0xc,%esp
    2bc5:	50                   	push   %eax
    2bc6:	e8 d0 13 00 00       	call   3f9b <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2bcb:	58                   	pop    %eax
    2bcc:	5a                   	pop    %edx
    2bcd:	6a 00                	push   $0x0
    2bcf:	68 78 58 00 00       	push   $0x5878
    2bd4:	e8 da 13 00 00       	call   3fb3 <open>
  if(fd < 0){
    2bd9:	83 c4 10             	add    $0x10,%esp
    2bdc:	85 c0                	test   %eax,%eax
    2bde:	0f 88 92 00 00 00    	js     2c76 <fourteen+0x116>
  close(fd);
    2be4:	83 ec 0c             	sub    $0xc,%esp
    2be7:	50                   	push   %eax
    2be8:	e8 ae 13 00 00       	call   3f9b <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2bed:	c7 04 24 ec 4f 00 00 	movl   $0x4fec,(%esp)
    2bf4:	e8 e2 13 00 00       	call   3fdb <mkdir>
    2bf9:	83 c4 10             	add    $0x10,%esp
    2bfc:	85 c0                	test   %eax,%eax
    2bfe:	74 5c                	je     2c5c <fourteen+0xfc>
  if(mkdir("123456789012345/12345678901234") == 0){
    2c00:	83 ec 0c             	sub    $0xc,%esp
    2c03:	68 14 59 00 00       	push   $0x5914
    2c08:	e8 ce 13 00 00       	call   3fdb <mkdir>
    2c0d:	83 c4 10             	add    $0x10,%esp
    2c10:	85 c0                	test   %eax,%eax
    2c12:	74 2e                	je     2c42 <fourteen+0xe2>
  printf(1, "fourteen ok\n");
    2c14:	83 ec 08             	sub    $0x8,%esp
    2c17:	68 0a 50 00 00       	push   $0x500a
    2c1c:	6a 01                	push   $0x1
    2c1e:	e8 cd 14 00 00       	call   40f0 <printf>
}
    2c23:	83 c4 10             	add    $0x10,%esp
    2c26:	c9                   	leave  
    2c27:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2c28:	50                   	push   %eax
    2c29:	50                   	push   %eax
    2c2a:	68 cf 4f 00 00       	push   $0x4fcf
    2c2f:	6a 01                	push   $0x1
    2c31:	e8 ba 14 00 00       	call   40f0 <printf>
    exit(-1);
    2c36:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2c3d:	e8 31 13 00 00       	call   3f73 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2c42:	50                   	push   %eax
    2c43:	50                   	push   %eax
    2c44:	68 34 59 00 00       	push   $0x5934
    2c49:	6a 01                	push   $0x1
    2c4b:	e8 a0 14 00 00       	call   40f0 <printf>
    exit(-1);
    2c50:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2c57:	e8 17 13 00 00       	call   3f73 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2c5c:	52                   	push   %edx
    2c5d:	52                   	push   %edx
    2c5e:	68 e4 58 00 00       	push   $0x58e4
    2c63:	6a 01                	push   $0x1
    2c65:	e8 86 14 00 00       	call   40f0 <printf>
    exit(-1);
    2c6a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2c71:	e8 fd 12 00 00       	call   3f73 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2c76:	51                   	push   %ecx
    2c77:	51                   	push   %ecx
    2c78:	68 a8 58 00 00       	push   $0x58a8
    2c7d:	6a 01                	push   $0x1
    2c7f:	e8 6c 14 00 00       	call   40f0 <printf>
    exit(-1);
    2c84:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2c8b:	e8 e3 12 00 00       	call   3f73 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2c90:	51                   	push   %ecx
    2c91:	51                   	push   %ecx
    2c92:	68 38 58 00 00       	push   $0x5838
    2c97:	6a 01                	push   $0x1
    2c99:	e8 52 14 00 00       	call   40f0 <printf>
    exit(-1);
    2c9e:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ca5:	e8 c9 12 00 00       	call   3f73 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2caa:	50                   	push   %eax
    2cab:	50                   	push   %eax
    2cac:	68 d8 57 00 00       	push   $0x57d8
    2cb1:	6a 01                	push   $0x1
    2cb3:	e8 38 14 00 00       	call   40f0 <printf>
    exit(-1);
    2cb8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2cbf:	e8 af 12 00 00       	call   3f73 <exit>
    2cc4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2ccb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2ccf:	90                   	nop

00002cd0 <rmdot>:
{
    2cd0:	f3 0f 1e fb          	endbr32 
    2cd4:	55                   	push   %ebp
    2cd5:	89 e5                	mov    %esp,%ebp
    2cd7:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    2cda:	68 17 50 00 00       	push   $0x5017
    2cdf:	6a 01                	push   $0x1
    2ce1:	e8 0a 14 00 00       	call   40f0 <printf>
  if(mkdir("dots") != 0){
    2ce6:	c7 04 24 23 50 00 00 	movl   $0x5023,(%esp)
    2ced:	e8 e9 12 00 00       	call   3fdb <mkdir>
    2cf2:	83 c4 10             	add    $0x10,%esp
    2cf5:	85 c0                	test   %eax,%eax
    2cf7:	0f 85 b4 00 00 00    	jne    2db1 <rmdot+0xe1>
  if(chdir("dots") != 0){
    2cfd:	83 ec 0c             	sub    $0xc,%esp
    2d00:	68 23 50 00 00       	push   $0x5023
    2d05:	e8 d9 12 00 00       	call   3fe3 <chdir>
    2d0a:	83 c4 10             	add    $0x10,%esp
    2d0d:	85 c0                	test   %eax,%eax
    2d0f:	0f 85 52 01 00 00    	jne    2e67 <rmdot+0x197>
  if(unlink(".") == 0){
    2d15:	83 ec 0c             	sub    $0xc,%esp
    2d18:	68 ce 4c 00 00       	push   $0x4cce
    2d1d:	e8 a1 12 00 00       	call   3fc3 <unlink>
    2d22:	83 c4 10             	add    $0x10,%esp
    2d25:	85 c0                	test   %eax,%eax
    2d27:	0f 84 20 01 00 00    	je     2e4d <rmdot+0x17d>
  if(unlink("..") == 0){
    2d2d:	83 ec 0c             	sub    $0xc,%esp
    2d30:	68 cd 4c 00 00       	push   $0x4ccd
    2d35:	e8 89 12 00 00       	call   3fc3 <unlink>
    2d3a:	83 c4 10             	add    $0x10,%esp
    2d3d:	85 c0                	test   %eax,%eax
    2d3f:	0f 84 ee 00 00 00    	je     2e33 <rmdot+0x163>
  if(chdir("/") != 0){
    2d45:	83 ec 0c             	sub    $0xc,%esp
    2d48:	68 a1 44 00 00       	push   $0x44a1
    2d4d:	e8 91 12 00 00       	call   3fe3 <chdir>
    2d52:	83 c4 10             	add    $0x10,%esp
    2d55:	85 c0                	test   %eax,%eax
    2d57:	0f 85 bc 00 00 00    	jne    2e19 <rmdot+0x149>
  if(unlink("dots/.") == 0){
    2d5d:	83 ec 0c             	sub    $0xc,%esp
    2d60:	68 6b 50 00 00       	push   $0x506b
    2d65:	e8 59 12 00 00       	call   3fc3 <unlink>
    2d6a:	83 c4 10             	add    $0x10,%esp
    2d6d:	85 c0                	test   %eax,%eax
    2d6f:	0f 84 8a 00 00 00    	je     2dff <rmdot+0x12f>
  if(unlink("dots/..") == 0){
    2d75:	83 ec 0c             	sub    $0xc,%esp
    2d78:	68 89 50 00 00       	push   $0x5089
    2d7d:	e8 41 12 00 00       	call   3fc3 <unlink>
    2d82:	83 c4 10             	add    $0x10,%esp
    2d85:	85 c0                	test   %eax,%eax
    2d87:	74 5c                	je     2de5 <rmdot+0x115>
  if(unlink("dots") != 0){
    2d89:	83 ec 0c             	sub    $0xc,%esp
    2d8c:	68 23 50 00 00       	push   $0x5023
    2d91:	e8 2d 12 00 00       	call   3fc3 <unlink>
    2d96:	83 c4 10             	add    $0x10,%esp
    2d99:	85 c0                	test   %eax,%eax
    2d9b:	75 2e                	jne    2dcb <rmdot+0xfb>
  printf(1, "rmdot ok\n");
    2d9d:	83 ec 08             	sub    $0x8,%esp
    2da0:	68 be 50 00 00       	push   $0x50be
    2da5:	6a 01                	push   $0x1
    2da7:	e8 44 13 00 00       	call   40f0 <printf>
}
    2dac:	83 c4 10             	add    $0x10,%esp
    2daf:	c9                   	leave  
    2db0:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2db1:	50                   	push   %eax
    2db2:	50                   	push   %eax
    2db3:	68 28 50 00 00       	push   $0x5028
    2db8:	6a 01                	push   $0x1
    2dba:	e8 31 13 00 00       	call   40f0 <printf>
    exit(-1);
    2dbf:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2dc6:	e8 a8 11 00 00       	call   3f73 <exit>
    printf(1, "unlink dots failed!\n");
    2dcb:	50                   	push   %eax
    2dcc:	50                   	push   %eax
    2dcd:	68 a9 50 00 00       	push   $0x50a9
    2dd2:	6a 01                	push   $0x1
    2dd4:	e8 17 13 00 00       	call   40f0 <printf>
    exit(-1);
    2dd9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2de0:	e8 8e 11 00 00       	call   3f73 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2de5:	52                   	push   %edx
    2de6:	52                   	push   %edx
    2de7:	68 91 50 00 00       	push   $0x5091
    2dec:	6a 01                	push   $0x1
    2dee:	e8 fd 12 00 00       	call   40f0 <printf>
    exit(-1);
    2df3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2dfa:	e8 74 11 00 00       	call   3f73 <exit>
    printf(1, "unlink dots/. worked!\n");
    2dff:	51                   	push   %ecx
    2e00:	51                   	push   %ecx
    2e01:	68 72 50 00 00       	push   $0x5072
    2e06:	6a 01                	push   $0x1
    2e08:	e8 e3 12 00 00       	call   40f0 <printf>
    exit(-1);
    2e0d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e14:	e8 5a 11 00 00       	call   3f73 <exit>
    printf(1, "chdir / failed\n");
    2e19:	50                   	push   %eax
    2e1a:	50                   	push   %eax
    2e1b:	68 a3 44 00 00       	push   $0x44a3
    2e20:	6a 01                	push   $0x1
    2e22:	e8 c9 12 00 00       	call   40f0 <printf>
    exit(-1);
    2e27:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e2e:	e8 40 11 00 00       	call   3f73 <exit>
    printf(1, "rm .. worked!\n");
    2e33:	50                   	push   %eax
    2e34:	50                   	push   %eax
    2e35:	68 5c 50 00 00       	push   $0x505c
    2e3a:	6a 01                	push   $0x1
    2e3c:	e8 af 12 00 00       	call   40f0 <printf>
    exit(-1);
    2e41:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e48:	e8 26 11 00 00       	call   3f73 <exit>
    printf(1, "rm . worked!\n");
    2e4d:	50                   	push   %eax
    2e4e:	50                   	push   %eax
    2e4f:	68 4e 50 00 00       	push   $0x504e
    2e54:	6a 01                	push   $0x1
    2e56:	e8 95 12 00 00       	call   40f0 <printf>
    exit(-1);
    2e5b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e62:	e8 0c 11 00 00       	call   3f73 <exit>
    printf(1, "chdir dots failed\n");
    2e67:	50                   	push   %eax
    2e68:	50                   	push   %eax
    2e69:	68 3b 50 00 00       	push   $0x503b
    2e6e:	6a 01                	push   $0x1
    2e70:	e8 7b 12 00 00       	call   40f0 <printf>
    exit(-1);
    2e75:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e7c:	e8 f2 10 00 00       	call   3f73 <exit>
    2e81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2e88:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2e8f:	90                   	nop

00002e90 <dirfile>:
{
    2e90:	f3 0f 1e fb          	endbr32 
    2e94:	55                   	push   %ebp
    2e95:	89 e5                	mov    %esp,%ebp
    2e97:	53                   	push   %ebx
    2e98:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2e9b:	68 c8 50 00 00       	push   $0x50c8
    2ea0:	6a 01                	push   $0x1
    2ea2:	e8 49 12 00 00       	call   40f0 <printf>
  fd = open("dirfile", O_CREATE);
    2ea7:	5b                   	pop    %ebx
    2ea8:	58                   	pop    %eax
    2ea9:	68 00 02 00 00       	push   $0x200
    2eae:	68 d5 50 00 00       	push   $0x50d5
    2eb3:	e8 fb 10 00 00       	call   3fb3 <open>
  if(fd < 0){
    2eb8:	83 c4 10             	add    $0x10,%esp
    2ebb:	85 c0                	test   %eax,%eax
    2ebd:	0f 88 51 01 00 00    	js     3014 <dirfile+0x184>
  close(fd);
    2ec3:	83 ec 0c             	sub    $0xc,%esp
    2ec6:	50                   	push   %eax
    2ec7:	e8 cf 10 00 00       	call   3f9b <close>
  if(chdir("dirfile") == 0){
    2ecc:	c7 04 24 d5 50 00 00 	movl   $0x50d5,(%esp)
    2ed3:	e8 0b 11 00 00       	call   3fe3 <chdir>
    2ed8:	83 c4 10             	add    $0x10,%esp
    2edb:	85 c0                	test   %eax,%eax
    2edd:	0f 84 17 01 00 00    	je     2ffa <dirfile+0x16a>
  fd = open("dirfile/xx", 0);
    2ee3:	83 ec 08             	sub    $0x8,%esp
    2ee6:	6a 00                	push   $0x0
    2ee8:	68 0e 51 00 00       	push   $0x510e
    2eed:	e8 c1 10 00 00       	call   3fb3 <open>
  if(fd >= 0){
    2ef2:	83 c4 10             	add    $0x10,%esp
    2ef5:	85 c0                	test   %eax,%eax
    2ef7:	0f 89 e3 00 00 00    	jns    2fe0 <dirfile+0x150>
  fd = open("dirfile/xx", O_CREATE);
    2efd:	83 ec 08             	sub    $0x8,%esp
    2f00:	68 00 02 00 00       	push   $0x200
    2f05:	68 0e 51 00 00       	push   $0x510e
    2f0a:	e8 a4 10 00 00       	call   3fb3 <open>
  if(fd >= 0){
    2f0f:	83 c4 10             	add    $0x10,%esp
    2f12:	85 c0                	test   %eax,%eax
    2f14:	0f 89 c6 00 00 00    	jns    2fe0 <dirfile+0x150>
  if(mkdir("dirfile/xx") == 0){
    2f1a:	83 ec 0c             	sub    $0xc,%esp
    2f1d:	68 0e 51 00 00       	push   $0x510e
    2f22:	e8 b4 10 00 00       	call   3fdb <mkdir>
    2f27:	83 c4 10             	add    $0x10,%esp
    2f2a:	85 c0                	test   %eax,%eax
    2f2c:	0f 84 7e 01 00 00    	je     30b0 <dirfile+0x220>
  if(unlink("dirfile/xx") == 0){
    2f32:	83 ec 0c             	sub    $0xc,%esp
    2f35:	68 0e 51 00 00       	push   $0x510e
    2f3a:	e8 84 10 00 00       	call   3fc3 <unlink>
    2f3f:	83 c4 10             	add    $0x10,%esp
    2f42:	85 c0                	test   %eax,%eax
    2f44:	0f 84 4c 01 00 00    	je     3096 <dirfile+0x206>
  if(link("README", "dirfile/xx") == 0){
    2f4a:	83 ec 08             	sub    $0x8,%esp
    2f4d:	68 0e 51 00 00       	push   $0x510e
    2f52:	68 72 51 00 00       	push   $0x5172
    2f57:	e8 77 10 00 00       	call   3fd3 <link>
    2f5c:	83 c4 10             	add    $0x10,%esp
    2f5f:	85 c0                	test   %eax,%eax
    2f61:	0f 84 15 01 00 00    	je     307c <dirfile+0x1ec>
  if(unlink("dirfile") != 0){
    2f67:	83 ec 0c             	sub    $0xc,%esp
    2f6a:	68 d5 50 00 00       	push   $0x50d5
    2f6f:	e8 4f 10 00 00       	call   3fc3 <unlink>
    2f74:	83 c4 10             	add    $0x10,%esp
    2f77:	85 c0                	test   %eax,%eax
    2f79:	0f 85 e3 00 00 00    	jne    3062 <dirfile+0x1d2>
  fd = open(".", O_RDWR);
    2f7f:	83 ec 08             	sub    $0x8,%esp
    2f82:	6a 02                	push   $0x2
    2f84:	68 ce 4c 00 00       	push   $0x4cce
    2f89:	e8 25 10 00 00       	call   3fb3 <open>
  if(fd >= 0){
    2f8e:	83 c4 10             	add    $0x10,%esp
    2f91:	85 c0                	test   %eax,%eax
    2f93:	0f 89 af 00 00 00    	jns    3048 <dirfile+0x1b8>
  fd = open(".", 0);
    2f99:	83 ec 08             	sub    $0x8,%esp
    2f9c:	6a 00                	push   $0x0
    2f9e:	68 ce 4c 00 00       	push   $0x4cce
    2fa3:	e8 0b 10 00 00       	call   3fb3 <open>
  if(write(fd, "x", 1) > 0){
    2fa8:	83 c4 0c             	add    $0xc,%esp
    2fab:	6a 01                	push   $0x1
  fd = open(".", 0);
    2fad:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2faf:	68 b1 4d 00 00       	push   $0x4db1
    2fb4:	50                   	push   %eax
    2fb5:	e8 d9 0f 00 00       	call   3f93 <write>
    2fba:	83 c4 10             	add    $0x10,%esp
    2fbd:	85 c0                	test   %eax,%eax
    2fbf:	7f 6d                	jg     302e <dirfile+0x19e>
  close(fd);
    2fc1:	83 ec 0c             	sub    $0xc,%esp
    2fc4:	53                   	push   %ebx
    2fc5:	e8 d1 0f 00 00       	call   3f9b <close>
  printf(1, "dir vs file OK\n");
    2fca:	58                   	pop    %eax
    2fcb:	5a                   	pop    %edx
    2fcc:	68 a5 51 00 00       	push   $0x51a5
    2fd1:	6a 01                	push   $0x1
    2fd3:	e8 18 11 00 00       	call   40f0 <printf>
}
    2fd8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2fdb:	83 c4 10             	add    $0x10,%esp
    2fde:	c9                   	leave  
    2fdf:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    2fe0:	50                   	push   %eax
    2fe1:	50                   	push   %eax
    2fe2:	68 19 51 00 00       	push   $0x5119
    2fe7:	6a 01                	push   $0x1
    2fe9:	e8 02 11 00 00       	call   40f0 <printf>
    exit(0);
    2fee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ff5:	e8 79 0f 00 00       	call   3f73 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2ffa:	52                   	push   %edx
    2ffb:	52                   	push   %edx
    2ffc:	68 f4 50 00 00       	push   $0x50f4
    3001:	6a 01                	push   $0x1
    3003:	e8 e8 10 00 00       	call   40f0 <printf>
    exit(0);
    3008:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    300f:	e8 5f 0f 00 00       	call   3f73 <exit>
    printf(1, "create dirfile failed\n");
    3014:	51                   	push   %ecx
    3015:	51                   	push   %ecx
    3016:	68 dd 50 00 00       	push   $0x50dd
    301b:	6a 01                	push   $0x1
    301d:	e8 ce 10 00 00       	call   40f0 <printf>
    exit(0);
    3022:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3029:	e8 45 0f 00 00       	call   3f73 <exit>
    printf(1, "write . succeeded!\n");
    302e:	51                   	push   %ecx
    302f:	51                   	push   %ecx
    3030:	68 91 51 00 00       	push   $0x5191
    3035:	6a 01                	push   $0x1
    3037:	e8 b4 10 00 00       	call   40f0 <printf>
    exit(0);
    303c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3043:	e8 2b 0f 00 00       	call   3f73 <exit>
    printf(1, "open . for writing succeeded!\n");
    3048:	53                   	push   %ebx
    3049:	53                   	push   %ebx
    304a:	68 88 59 00 00       	push   $0x5988
    304f:	6a 01                	push   $0x1
    3051:	e8 9a 10 00 00       	call   40f0 <printf>
    exit(0);
    3056:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    305d:	e8 11 0f 00 00       	call   3f73 <exit>
    printf(1, "unlink dirfile failed!\n");
    3062:	50                   	push   %eax
    3063:	50                   	push   %eax
    3064:	68 79 51 00 00       	push   $0x5179
    3069:	6a 01                	push   $0x1
    306b:	e8 80 10 00 00       	call   40f0 <printf>
    exit(0);
    3070:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3077:	e8 f7 0e 00 00       	call   3f73 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    307c:	50                   	push   %eax
    307d:	50                   	push   %eax
    307e:	68 68 59 00 00       	push   $0x5968
    3083:	6a 01                	push   $0x1
    3085:	e8 66 10 00 00       	call   40f0 <printf>
    exit(0);
    308a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3091:	e8 dd 0e 00 00       	call   3f73 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    3096:	50                   	push   %eax
    3097:	50                   	push   %eax
    3098:	68 54 51 00 00       	push   $0x5154
    309d:	6a 01                	push   $0x1
    309f:	e8 4c 10 00 00       	call   40f0 <printf>
    exit(0);
    30a4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30ab:	e8 c3 0e 00 00       	call   3f73 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    30b0:	50                   	push   %eax
    30b1:	50                   	push   %eax
    30b2:	68 37 51 00 00       	push   $0x5137
    30b7:	6a 01                	push   $0x1
    30b9:	e8 32 10 00 00       	call   40f0 <printf>
    exit(0);
    30be:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30c5:	e8 a9 0e 00 00       	call   3f73 <exit>
    30ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000030d0 <iref>:
{
    30d0:	f3 0f 1e fb          	endbr32 
    30d4:	55                   	push   %ebp
    30d5:	89 e5                	mov    %esp,%ebp
    30d7:	53                   	push   %ebx
  printf(1, "empty file name\n");
    30d8:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    30dd:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    30e0:	68 b5 51 00 00       	push   $0x51b5
    30e5:	6a 01                	push   $0x1
    30e7:	e8 04 10 00 00       	call   40f0 <printf>
    30ec:	83 c4 10             	add    $0x10,%esp
    30ef:	90                   	nop
    if(mkdir("irefd") != 0){
    30f0:	83 ec 0c             	sub    $0xc,%esp
    30f3:	68 c6 51 00 00       	push   $0x51c6
    30f8:	e8 de 0e 00 00       	call   3fdb <mkdir>
    30fd:	83 c4 10             	add    $0x10,%esp
    3100:	85 c0                	test   %eax,%eax
    3102:	0f 85 bb 00 00 00    	jne    31c3 <iref+0xf3>
    if(chdir("irefd") != 0){
    3108:	83 ec 0c             	sub    $0xc,%esp
    310b:	68 c6 51 00 00       	push   $0x51c6
    3110:	e8 ce 0e 00 00       	call   3fe3 <chdir>
    3115:	83 c4 10             	add    $0x10,%esp
    3118:	85 c0                	test   %eax,%eax
    311a:	0f 85 be 00 00 00    	jne    31de <iref+0x10e>
    mkdir("");
    3120:	83 ec 0c             	sub    $0xc,%esp
    3123:	68 7b 48 00 00       	push   $0x487b
    3128:	e8 ae 0e 00 00       	call   3fdb <mkdir>
    link("README", "");
    312d:	59                   	pop    %ecx
    312e:	58                   	pop    %eax
    312f:	68 7b 48 00 00       	push   $0x487b
    3134:	68 72 51 00 00       	push   $0x5172
    3139:	e8 95 0e 00 00       	call   3fd3 <link>
    fd = open("", O_CREATE);
    313e:	58                   	pop    %eax
    313f:	5a                   	pop    %edx
    3140:	68 00 02 00 00       	push   $0x200
    3145:	68 7b 48 00 00       	push   $0x487b
    314a:	e8 64 0e 00 00       	call   3fb3 <open>
    if(fd >= 0)
    314f:	83 c4 10             	add    $0x10,%esp
    3152:	85 c0                	test   %eax,%eax
    3154:	78 0c                	js     3162 <iref+0x92>
      close(fd);
    3156:	83 ec 0c             	sub    $0xc,%esp
    3159:	50                   	push   %eax
    315a:	e8 3c 0e 00 00       	call   3f9b <close>
    315f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    3162:	83 ec 08             	sub    $0x8,%esp
    3165:	68 00 02 00 00       	push   $0x200
    316a:	68 b0 4d 00 00       	push   $0x4db0
    316f:	e8 3f 0e 00 00       	call   3fb3 <open>
    if(fd >= 0)
    3174:	83 c4 10             	add    $0x10,%esp
    3177:	85 c0                	test   %eax,%eax
    3179:	78 0c                	js     3187 <iref+0xb7>
      close(fd);
    317b:	83 ec 0c             	sub    $0xc,%esp
    317e:	50                   	push   %eax
    317f:	e8 17 0e 00 00       	call   3f9b <close>
    3184:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    3187:	83 ec 0c             	sub    $0xc,%esp
    318a:	68 b0 4d 00 00       	push   $0x4db0
    318f:	e8 2f 0e 00 00       	call   3fc3 <unlink>
  for(i = 0; i < 50 + 1; i++){
    3194:	83 c4 10             	add    $0x10,%esp
    3197:	83 eb 01             	sub    $0x1,%ebx
    319a:	0f 85 50 ff ff ff    	jne    30f0 <iref+0x20>
  chdir("/");
    31a0:	83 ec 0c             	sub    $0xc,%esp
    31a3:	68 a1 44 00 00       	push   $0x44a1
    31a8:	e8 36 0e 00 00       	call   3fe3 <chdir>
  printf(1, "empty file name OK\n");
    31ad:	58                   	pop    %eax
    31ae:	5a                   	pop    %edx
    31af:	68 f4 51 00 00       	push   $0x51f4
    31b4:	6a 01                	push   $0x1
    31b6:	e8 35 0f 00 00       	call   40f0 <printf>
}
    31bb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31be:	83 c4 10             	add    $0x10,%esp
    31c1:	c9                   	leave  
    31c2:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    31c3:	83 ec 08             	sub    $0x8,%esp
    31c6:	68 cc 51 00 00       	push   $0x51cc
    31cb:	6a 01                	push   $0x1
    31cd:	e8 1e 0f 00 00       	call   40f0 <printf>
      exit(-1);
    31d2:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    31d9:	e8 95 0d 00 00       	call   3f73 <exit>
      printf(1, "chdir irefd failed\n");
    31de:	83 ec 08             	sub    $0x8,%esp
    31e1:	68 e0 51 00 00       	push   $0x51e0
    31e6:	6a 01                	push   $0x1
    31e8:	e8 03 0f 00 00       	call   40f0 <printf>
      exit(-1);
    31ed:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    31f4:	e8 7a 0d 00 00       	call   3f73 <exit>
    31f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003200 <forktest>:
{
    3200:	f3 0f 1e fb          	endbr32 
    3204:	55                   	push   %ebp
    3205:	89 e5                	mov    %esp,%ebp
    3207:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3208:	31 db                	xor    %ebx,%ebx
{
    320a:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    320d:	68 08 52 00 00       	push   $0x5208
    3212:	6a 01                	push   $0x1
    3214:	e8 d7 0e 00 00       	call   40f0 <printf>
    3219:	83 c4 10             	add    $0x10,%esp
    321c:	eb 13                	jmp    3231 <forktest+0x31>
    321e:	66 90                	xchg   %ax,%ax
    if(pid == 0)
    3220:	74 5a                	je     327c <forktest+0x7c>
  for(n=0; n<1000; n++){
    3222:	83 c3 01             	add    $0x1,%ebx
    3225:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    322b:	0f 84 8a 00 00 00    	je     32bb <forktest+0xbb>
    pid = fork();
    3231:	e8 35 0d 00 00       	call   3f6b <fork>
    if(pid < 0)
    3236:	85 c0                	test   %eax,%eax
    3238:	79 e6                	jns    3220 <forktest+0x20>
  for(; n > 0; n--){
    323a:	85 db                	test   %ebx,%ebx
    323c:	74 18                	je     3256 <forktest+0x56>
    323e:	66 90                	xchg   %ax,%ax
    if(wait(0) < 0){
    3240:	83 ec 0c             	sub    $0xc,%esp
    3243:	6a 00                	push   $0x0
    3245:	e8 31 0d 00 00       	call   3f7b <wait>
    324a:	83 c4 10             	add    $0x10,%esp
    324d:	85 c0                	test   %eax,%eax
    324f:	78 35                	js     3286 <forktest+0x86>
  for(; n > 0; n--){
    3251:	83 eb 01             	sub    $0x1,%ebx
    3254:	75 ea                	jne    3240 <forktest+0x40>
  if(wait(0) != -1){
    3256:	83 ec 0c             	sub    $0xc,%esp
    3259:	6a 00                	push   $0x0
    325b:	e8 1b 0d 00 00       	call   3f7b <wait>
    3260:	83 c4 10             	add    $0x10,%esp
    3263:	83 f8 ff             	cmp    $0xffffffff,%eax
    3266:	75 39                	jne    32a1 <forktest+0xa1>
  printf(1, "fork test OK\n");
    3268:	83 ec 08             	sub    $0x8,%esp
    326b:	68 3a 52 00 00       	push   $0x523a
    3270:	6a 01                	push   $0x1
    3272:	e8 79 0e 00 00       	call   40f0 <printf>
}
    3277:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    327a:	c9                   	leave  
    327b:	c3                   	ret    
      exit(0);
    327c:	83 ec 0c             	sub    $0xc,%esp
    327f:	6a 00                	push   $0x0
    3281:	e8 ed 0c 00 00       	call   3f73 <exit>
      printf(1, "wait stopped early\n");
    3286:	83 ec 08             	sub    $0x8,%esp
    3289:	68 13 52 00 00       	push   $0x5213
    328e:	6a 01                	push   $0x1
    3290:	e8 5b 0e 00 00       	call   40f0 <printf>
      exit(-1);
    3295:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    329c:	e8 d2 0c 00 00       	call   3f73 <exit>
    printf(1, "wait got too many\n");
    32a1:	52                   	push   %edx
    32a2:	52                   	push   %edx
    32a3:	68 27 52 00 00       	push   $0x5227
    32a8:	6a 01                	push   $0x1
    32aa:	e8 41 0e 00 00       	call   40f0 <printf>
    exit(-1);
    32af:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    32b6:	e8 b8 0c 00 00       	call   3f73 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    32bb:	50                   	push   %eax
    32bc:	50                   	push   %eax
    32bd:	68 a8 59 00 00       	push   $0x59a8
    32c2:	6a 01                	push   $0x1
    32c4:	e8 27 0e 00 00       	call   40f0 <printf>
    exit(-1);
    32c9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    32d0:	e8 9e 0c 00 00       	call   3f73 <exit>
    32d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000032e0 <sbrktest>:
{
    32e0:	f3 0f 1e fb          	endbr32 
    32e4:	55                   	push   %ebp
    32e5:	89 e5                	mov    %esp,%ebp
    32e7:	57                   	push   %edi
  for(i = 0; i < 5000; i++){
    32e8:	31 ff                	xor    %edi,%edi
{
    32ea:	56                   	push   %esi
    32eb:	53                   	push   %ebx
    32ec:	83 ec 54             	sub    $0x54,%esp
  printf(stdout, "sbrk test\n");
    32ef:	68 48 52 00 00       	push   $0x5248
    32f4:	ff 35 f0 64 00 00    	pushl  0x64f0
    32fa:	e8 f1 0d 00 00       	call   40f0 <printf>
  oldbrk = sbrk(0);
    32ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3306:	e8 f0 0c 00 00       	call   3ffb <sbrk>
  a = sbrk(0);
    330b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3312:	89 c3                	mov    %eax,%ebx
  a = sbrk(0);
    3314:	e8 e2 0c 00 00       	call   3ffb <sbrk>
    3319:	83 c4 10             	add    $0x10,%esp
    331c:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 5000; i++){
    331e:	eb 02                	jmp    3322 <sbrktest+0x42>
    a = b + 1;
    3320:	89 c6                	mov    %eax,%esi
    b = sbrk(1);
    3322:	83 ec 0c             	sub    $0xc,%esp
    3325:	6a 01                	push   $0x1
    3327:	e8 cf 0c 00 00       	call   3ffb <sbrk>
    if(b != a){
    332c:	83 c4 10             	add    $0x10,%esp
    332f:	39 f0                	cmp    %esi,%eax
    3331:	0f 85 a7 02 00 00    	jne    35de <sbrktest+0x2fe>
  for(i = 0; i < 5000; i++){
    3337:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    333a:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    333d:	8d 46 01             	lea    0x1(%esi),%eax
  for(i = 0; i < 5000; i++){
    3340:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    3346:	75 d8                	jne    3320 <sbrktest+0x40>
  pid = fork();
    3348:	e8 1e 0c 00 00       	call   3f6b <fork>
    334d:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    334f:	85 c0                	test   %eax,%eax
    3351:	0f 88 0d 04 00 00    	js     3764 <sbrktest+0x484>
  c = sbrk(1);
    3357:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    335a:	83 c6 02             	add    $0x2,%esi
  c = sbrk(1);
    335d:	6a 01                	push   $0x1
    335f:	e8 97 0c 00 00       	call   3ffb <sbrk>
  c = sbrk(1);
    3364:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    336b:	e8 8b 0c 00 00       	call   3ffb <sbrk>
  if(c != a + 1){
    3370:	83 c4 10             	add    $0x10,%esp
    3373:	39 c6                	cmp    %eax,%esi
    3375:	0f 85 cb 03 00 00    	jne    3746 <sbrktest+0x466>
  if(pid == 0)
    337b:	85 ff                	test   %edi,%edi
    337d:	0f 84 b9 03 00 00    	je     373c <sbrktest+0x45c>
  wait(0);
    3383:	83 ec 0c             	sub    $0xc,%esp
    3386:	6a 00                	push   $0x0
    3388:	e8 ee 0b 00 00       	call   3f7b <wait>
  a = sbrk(0);
    338d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3394:	e8 62 0c 00 00       	call   3ffb <sbrk>
    3399:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    339b:	b8 00 00 40 06       	mov    $0x6400000,%eax
    33a0:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    33a2:	89 04 24             	mov    %eax,(%esp)
    33a5:	e8 51 0c 00 00       	call   3ffb <sbrk>
  if (p != a) {
    33aa:	83 c4 10             	add    $0x10,%esp
    33ad:	39 c6                	cmp    %eax,%esi
    33af:	0f 85 69 03 00 00    	jne    371e <sbrktest+0x43e>
  a = sbrk(0);
    33b5:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    33b8:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    33bf:	6a 00                	push   $0x0
    33c1:	e8 35 0c 00 00       	call   3ffb <sbrk>
  c = sbrk(-4096);
    33c6:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    33cd:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    33cf:	e8 27 0c 00 00       	call   3ffb <sbrk>
  if(c == (char*)0xffffffff){
    33d4:	83 c4 10             	add    $0x10,%esp
    33d7:	83 f8 ff             	cmp    $0xffffffff,%eax
    33da:	0f 84 20 03 00 00    	je     3700 <sbrktest+0x420>
  c = sbrk(0);
    33e0:	83 ec 0c             	sub    $0xc,%esp
    33e3:	6a 00                	push   $0x0
    33e5:	e8 11 0c 00 00       	call   3ffb <sbrk>
  if(c != a - 4096){
    33ea:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    33f0:	83 c4 10             	add    $0x10,%esp
    33f3:	39 d0                	cmp    %edx,%eax
    33f5:	0f 85 e7 02 00 00    	jne    36e2 <sbrktest+0x402>
  a = sbrk(0);
    33fb:	83 ec 0c             	sub    $0xc,%esp
    33fe:	6a 00                	push   $0x0
    3400:	e8 f6 0b 00 00       	call   3ffb <sbrk>
  c = sbrk(4096);
    3405:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    340c:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    340e:	e8 e8 0b 00 00       	call   3ffb <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3413:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    3416:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3418:	39 c6                	cmp    %eax,%esi
    341a:	0f 85 a4 02 00 00    	jne    36c4 <sbrktest+0x3e4>
    3420:	83 ec 0c             	sub    $0xc,%esp
    3423:	6a 00                	push   $0x0
    3425:	e8 d1 0b 00 00       	call   3ffb <sbrk>
    342a:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3430:	83 c4 10             	add    $0x10,%esp
    3433:	39 c2                	cmp    %eax,%edx
    3435:	0f 85 89 02 00 00    	jne    36c4 <sbrktest+0x3e4>
  if(*lastaddr == 99){
    343b:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3442:	0f 84 5e 02 00 00    	je     36a6 <sbrktest+0x3c6>
  a = sbrk(0);
    3448:	83 ec 0c             	sub    $0xc,%esp
    344b:	6a 00                	push   $0x0
    344d:	e8 a9 0b 00 00       	call   3ffb <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3452:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3459:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    345b:	e8 9b 0b 00 00       	call   3ffb <sbrk>
    3460:	89 d9                	mov    %ebx,%ecx
    3462:	29 c1                	sub    %eax,%ecx
    3464:	89 0c 24             	mov    %ecx,(%esp)
    3467:	e8 8f 0b 00 00       	call   3ffb <sbrk>
  if(c != a){
    346c:	83 c4 10             	add    $0x10,%esp
    346f:	39 c6                	cmp    %eax,%esi
    3471:	0f 85 11 02 00 00    	jne    3688 <sbrktest+0x3a8>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3477:	be 00 00 00 80       	mov    $0x80000000,%esi
    347c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    ppid = getpid();
    3480:	e8 6e 0b 00 00       	call   3ff3 <getpid>
    3485:	89 c7                	mov    %eax,%edi
    pid = fork();
    3487:	e8 df 0a 00 00       	call   3f6b <fork>
    if(pid < 0){
    348c:	85 c0                	test   %eax,%eax
    348e:	0f 88 d5 01 00 00    	js     3669 <sbrktest+0x389>
    if(pid == 0){
    3494:	0f 84 a6 01 00 00    	je     3640 <sbrktest+0x360>
    wait(0);
    349a:	83 ec 0c             	sub    $0xc,%esp
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    349d:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    wait(0);
    34a3:	6a 00                	push   $0x0
    34a5:	e8 d1 0a 00 00       	call   3f7b <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    34aa:	83 c4 10             	add    $0x10,%esp
    34ad:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    34b3:	75 cb                	jne    3480 <sbrktest+0x1a0>
  if(pipe(fds) != 0){
    34b5:	83 ec 0c             	sub    $0xc,%esp
    34b8:	8d 45 b8             	lea    -0x48(%ebp),%eax
    34bb:	50                   	push   %eax
    34bc:	e8 c2 0a 00 00       	call   3f83 <pipe>
    34c1:	83 c4 10             	add    $0x10,%esp
    34c4:	85 c0                	test   %eax,%eax
    34c6:	0f 85 50 01 00 00    	jne    361c <sbrktest+0x33c>
    34cc:	8d 75 c0             	lea    -0x40(%ebp),%esi
    34cf:	89 f7                	mov    %esi,%edi
    if((pids[i] = fork()) == 0){
    34d1:	e8 95 0a 00 00       	call   3f6b <fork>
    34d6:	89 07                	mov    %eax,(%edi)
    34d8:	85 c0                	test   %eax,%eax
    34da:	0f 84 96 00 00 00    	je     3576 <sbrktest+0x296>
    if(pids[i] != -1)
    34e0:	83 f8 ff             	cmp    $0xffffffff,%eax
    34e3:	74 14                	je     34f9 <sbrktest+0x219>
      read(fds[0], &scratch, 1);
    34e5:	83 ec 04             	sub    $0x4,%esp
    34e8:	8d 45 b7             	lea    -0x49(%ebp),%eax
    34eb:	6a 01                	push   $0x1
    34ed:	50                   	push   %eax
    34ee:	ff 75 b8             	pushl  -0x48(%ebp)
    34f1:	e8 95 0a 00 00       	call   3f8b <read>
    34f6:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    34f9:	83 c7 04             	add    $0x4,%edi
    34fc:	8d 45 e8             	lea    -0x18(%ebp),%eax
    34ff:	39 c7                	cmp    %eax,%edi
    3501:	75 ce                	jne    34d1 <sbrktest+0x1f1>
  c = sbrk(4096);
    3503:	83 ec 0c             	sub    $0xc,%esp
    3506:	68 00 10 00 00       	push   $0x1000
    350b:	e8 eb 0a 00 00       	call   3ffb <sbrk>
    3510:	83 c4 10             	add    $0x10,%esp
    3513:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    3515:	8b 06                	mov    (%esi),%eax
    3517:	83 f8 ff             	cmp    $0xffffffff,%eax
    351a:	74 18                	je     3534 <sbrktest+0x254>
    kill(pids[i]);
    351c:	83 ec 0c             	sub    $0xc,%esp
    351f:	50                   	push   %eax
    3520:	e8 7e 0a 00 00       	call   3fa3 <kill>
    wait(0);
    3525:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    352c:	e8 4a 0a 00 00       	call   3f7b <wait>
    3531:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3534:	83 c6 04             	add    $0x4,%esi
    3537:	8d 45 e8             	lea    -0x18(%ebp),%eax
    353a:	39 f0                	cmp    %esi,%eax
    353c:	75 d7                	jne    3515 <sbrktest+0x235>
  if(c == (char*)0xffffffff){
    353e:	83 ff ff             	cmp    $0xffffffff,%edi
    3541:	0f 84 b7 00 00 00    	je     35fe <sbrktest+0x31e>
  if(sbrk(0) > oldbrk)
    3547:	83 ec 0c             	sub    $0xc,%esp
    354a:	6a 00                	push   $0x0
    354c:	e8 aa 0a 00 00       	call   3ffb <sbrk>
    3551:	83 c4 10             	add    $0x10,%esp
    3554:	39 c3                	cmp    %eax,%ebx
    3556:	72 6a                	jb     35c2 <sbrktest+0x2e2>
  printf(stdout, "sbrk test OK\n");
    3558:	83 ec 08             	sub    $0x8,%esp
    355b:	68 f0 52 00 00       	push   $0x52f0
    3560:	ff 35 f0 64 00 00    	pushl  0x64f0
    3566:	e8 85 0b 00 00       	call   40f0 <printf>
}
    356b:	83 c4 10             	add    $0x10,%esp
    356e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3571:	5b                   	pop    %ebx
    3572:	5e                   	pop    %esi
    3573:	5f                   	pop    %edi
    3574:	5d                   	pop    %ebp
    3575:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3576:	83 ec 0c             	sub    $0xc,%esp
    3579:	6a 00                	push   $0x0
    357b:	e8 7b 0a 00 00       	call   3ffb <sbrk>
    3580:	89 c2                	mov    %eax,%edx
    3582:	b8 00 00 40 06       	mov    $0x6400000,%eax
    3587:	29 d0                	sub    %edx,%eax
    3589:	89 04 24             	mov    %eax,(%esp)
    358c:	e8 6a 0a 00 00       	call   3ffb <sbrk>
      write(fds[1], "x", 1);
    3591:	83 c4 0c             	add    $0xc,%esp
    3594:	6a 01                	push   $0x1
    3596:	68 b1 4d 00 00       	push   $0x4db1
    359b:	ff 75 bc             	pushl  -0x44(%ebp)
    359e:	e8 f0 09 00 00       	call   3f93 <write>
    35a3:	83 c4 10             	add    $0x10,%esp
    35a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    35ad:	8d 76 00             	lea    0x0(%esi),%esi
      for(;;) sleep(1000);
    35b0:	83 ec 0c             	sub    $0xc,%esp
    35b3:	68 e8 03 00 00       	push   $0x3e8
    35b8:	e8 46 0a 00 00       	call   4003 <sleep>
    35bd:	83 c4 10             	add    $0x10,%esp
    35c0:	eb ee                	jmp    35b0 <sbrktest+0x2d0>
    sbrk(-(sbrk(0) - oldbrk));
    35c2:	83 ec 0c             	sub    $0xc,%esp
    35c5:	6a 00                	push   $0x0
    35c7:	e8 2f 0a 00 00       	call   3ffb <sbrk>
    35cc:	29 c3                	sub    %eax,%ebx
    35ce:	89 1c 24             	mov    %ebx,(%esp)
    35d1:	e8 25 0a 00 00       	call   3ffb <sbrk>
    35d6:	83 c4 10             	add    $0x10,%esp
    35d9:	e9 7a ff ff ff       	jmp    3558 <sbrktest+0x278>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    35de:	83 ec 0c             	sub    $0xc,%esp
    35e1:	50                   	push   %eax
    35e2:	56                   	push   %esi
    35e3:	57                   	push   %edi
    35e4:	68 53 52 00 00       	push   $0x5253
    35e9:	ff 35 f0 64 00 00    	pushl  0x64f0
    35ef:	e8 fc 0a 00 00       	call   40f0 <printf>
      exit(-1);
    35f4:	83 c4 14             	add    $0x14,%esp
    35f7:	6a ff                	push   $0xffffffff
    35f9:	e8 75 09 00 00       	call   3f73 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    35fe:	50                   	push   %eax
    35ff:	50                   	push   %eax
    3600:	68 d5 52 00 00       	push   $0x52d5
    3605:	ff 35 f0 64 00 00    	pushl  0x64f0
    360b:	e8 e0 0a 00 00       	call   40f0 <printf>
    exit(-1);
    3610:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3617:	e8 57 09 00 00       	call   3f73 <exit>
    printf(1, "pipe() failed\n");
    361c:	52                   	push   %edx
    361d:	52                   	push   %edx
    361e:	68 91 47 00 00       	push   $0x4791
    3623:	6a 01                	push   $0x1
    3625:	e8 c6 0a 00 00       	call   40f0 <printf>
    exit(-1);
    362a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3631:	e8 3d 09 00 00       	call   3f73 <exit>
    3636:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    363d:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3640:	0f be 06             	movsbl (%esi),%eax
    3643:	50                   	push   %eax
    3644:	56                   	push   %esi
    3645:	68 bc 52 00 00       	push   $0x52bc
    364a:	ff 35 f0 64 00 00    	pushl  0x64f0
    3650:	e8 9b 0a 00 00       	call   40f0 <printf>
      kill(ppid);
    3655:	89 3c 24             	mov    %edi,(%esp)
    3658:	e8 46 09 00 00       	call   3fa3 <kill>
      exit(-1);
    365d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3664:	e8 0a 09 00 00       	call   3f73 <exit>
      printf(stdout, "fork failed\n");
    3669:	83 ec 08             	sub    $0x8,%esp
    366c:	68 99 53 00 00       	push   $0x5399
    3671:	ff 35 f0 64 00 00    	pushl  0x64f0
    3677:	e8 74 0a 00 00       	call   40f0 <printf>
      exit(-1);
    367c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3683:	e8 eb 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3688:	50                   	push   %eax
    3689:	56                   	push   %esi
    368a:	68 9c 5a 00 00       	push   $0x5a9c
    368f:	ff 35 f0 64 00 00    	pushl  0x64f0
    3695:	e8 56 0a 00 00       	call   40f0 <printf>
    exit(-1);
    369a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    36a1:	e8 cd 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    36a6:	51                   	push   %ecx
    36a7:	51                   	push   %ecx
    36a8:	68 6c 5a 00 00       	push   $0x5a6c
    36ad:	ff 35 f0 64 00 00    	pushl  0x64f0
    36b3:	e8 38 0a 00 00       	call   40f0 <printf>
    exit(-1);
    36b8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    36bf:	e8 af 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    36c4:	57                   	push   %edi
    36c5:	56                   	push   %esi
    36c6:	68 44 5a 00 00       	push   $0x5a44
    36cb:	ff 35 f0 64 00 00    	pushl  0x64f0
    36d1:	e8 1a 0a 00 00       	call   40f0 <printf>
    exit(-1);
    36d6:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    36dd:	e8 91 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    36e2:	50                   	push   %eax
    36e3:	56                   	push   %esi
    36e4:	68 0c 5a 00 00       	push   $0x5a0c
    36e9:	ff 35 f0 64 00 00    	pushl  0x64f0
    36ef:	e8 fc 09 00 00       	call   40f0 <printf>
    exit(-1);
    36f4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    36fb:	e8 73 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3700:	53                   	push   %ebx
    3701:	53                   	push   %ebx
    3702:	68 a1 52 00 00       	push   $0x52a1
    3707:	ff 35 f0 64 00 00    	pushl  0x64f0
    370d:	e8 de 09 00 00       	call   40f0 <printf>
    exit(-1);
    3712:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3719:	e8 55 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    371e:	56                   	push   %esi
    371f:	56                   	push   %esi
    3720:	68 cc 59 00 00       	push   $0x59cc
    3725:	ff 35 f0 64 00 00    	pushl  0x64f0
    372b:	e8 c0 09 00 00       	call   40f0 <printf>
    exit(-1);
    3730:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3737:	e8 37 08 00 00       	call   3f73 <exit>
    exit(0);
    373c:	83 ec 0c             	sub    $0xc,%esp
    373f:	6a 00                	push   $0x0
    3741:	e8 2d 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3746:	57                   	push   %edi
    3747:	57                   	push   %edi
    3748:	68 85 52 00 00       	push   $0x5285
    374d:	ff 35 f0 64 00 00    	pushl  0x64f0
    3753:	e8 98 09 00 00       	call   40f0 <printf>
    exit(-1);
    3758:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    375f:	e8 0f 08 00 00       	call   3f73 <exit>
    printf(stdout, "sbrk test fork failed\n");
    3764:	50                   	push   %eax
    3765:	50                   	push   %eax
    3766:	68 6e 52 00 00       	push   $0x526e
    376b:	ff 35 f0 64 00 00    	pushl  0x64f0
    3771:	e8 7a 09 00 00       	call   40f0 <printf>
    exit(-1);
    3776:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    377d:	e8 f1 07 00 00       	call   3f73 <exit>
    3782:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003790 <validateint>:
{
    3790:	f3 0f 1e fb          	endbr32 
}
    3794:	c3                   	ret    
    3795:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    379c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037a0 <validatetest>:
{
    37a0:	f3 0f 1e fb          	endbr32 
    37a4:	55                   	push   %ebp
    37a5:	89 e5                	mov    %esp,%ebp
    37a7:	56                   	push   %esi
  for(p = 0; p <= (uint)hi; p += 4096){
    37a8:	31 f6                	xor    %esi,%esi
{
    37aa:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    37ab:	83 ec 08             	sub    $0x8,%esp
    37ae:	68 fe 52 00 00       	push   $0x52fe
    37b3:	ff 35 f0 64 00 00    	pushl  0x64f0
    37b9:	e8 32 09 00 00       	call   40f0 <printf>
    37be:	83 c4 10             	add    $0x10,%esp
    37c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if((pid = fork()) == 0){
    37c8:	e8 9e 07 00 00       	call   3f6b <fork>
    37cd:	89 c3                	mov    %eax,%ebx
    37cf:	85 c0                	test   %eax,%eax
    37d1:	74 6a                	je     383d <validatetest+0x9d>
    sleep(0);
    37d3:	83 ec 0c             	sub    $0xc,%esp
    37d6:	6a 00                	push   $0x0
    37d8:	e8 26 08 00 00       	call   4003 <sleep>
    sleep(0);
    37dd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37e4:	e8 1a 08 00 00       	call   4003 <sleep>
    kill(pid);
    37e9:	89 1c 24             	mov    %ebx,(%esp)
    37ec:	e8 b2 07 00 00       	call   3fa3 <kill>
    wait(0);
    37f1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37f8:	e8 7e 07 00 00       	call   3f7b <wait>
    if(link("nosuchfile", (char*)p) != -1){
    37fd:	58                   	pop    %eax
    37fe:	5a                   	pop    %edx
    37ff:	56                   	push   %esi
    3800:	68 0d 53 00 00       	push   $0x530d
    3805:	e8 c9 07 00 00       	call   3fd3 <link>
    380a:	83 c4 10             	add    $0x10,%esp
    380d:	83 f8 ff             	cmp    $0xffffffff,%eax
    3810:	75 35                	jne    3847 <validatetest+0xa7>
  for(p = 0; p <= (uint)hi; p += 4096){
    3812:	81 c6 00 10 00 00    	add    $0x1000,%esi
    3818:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    381e:	75 a8                	jne    37c8 <validatetest+0x28>
  printf(stdout, "validate ok\n");
    3820:	83 ec 08             	sub    $0x8,%esp
    3823:	68 31 53 00 00       	push   $0x5331
    3828:	ff 35 f0 64 00 00    	pushl  0x64f0
    382e:	e8 bd 08 00 00       	call   40f0 <printf>
}
    3833:	83 c4 10             	add    $0x10,%esp
    3836:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3839:	5b                   	pop    %ebx
    383a:	5e                   	pop    %esi
    383b:	5d                   	pop    %ebp
    383c:	c3                   	ret    
      exit(-1);
    383d:	83 ec 0c             	sub    $0xc,%esp
    3840:	6a ff                	push   $0xffffffff
    3842:	e8 2c 07 00 00       	call   3f73 <exit>
      printf(stdout, "link should not succeed\n");
    3847:	83 ec 08             	sub    $0x8,%esp
    384a:	68 18 53 00 00       	push   $0x5318
    384f:	ff 35 f0 64 00 00    	pushl  0x64f0
    3855:	e8 96 08 00 00       	call   40f0 <printf>
      exit(-1);
    385a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3861:	e8 0d 07 00 00       	call   3f73 <exit>
    3866:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    386d:	8d 76 00             	lea    0x0(%esi),%esi

00003870 <bsstest>:
{
    3870:	f3 0f 1e fb          	endbr32 
    3874:	55                   	push   %ebp
    3875:	89 e5                	mov    %esp,%ebp
    3877:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    387a:	68 3e 53 00 00       	push   $0x533e
    387f:	ff 35 f0 64 00 00    	pushl  0x64f0
    3885:	e8 66 08 00 00       	call   40f0 <printf>
    388a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    388d:	31 c0                	xor    %eax,%eax
    388f:	90                   	nop
    if(uninit[i] != '\0'){
    3890:	80 b8 c0 65 00 00 00 	cmpb   $0x0,0x65c0(%eax)
    3897:	75 22                	jne    38bb <bsstest+0x4b>
  for(i = 0; i < sizeof(uninit); i++){
    3899:	83 c0 01             	add    $0x1,%eax
    389c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    38a1:	75 ed                	jne    3890 <bsstest+0x20>
  printf(stdout, "bss test ok\n");
    38a3:	83 ec 08             	sub    $0x8,%esp
    38a6:	68 59 53 00 00       	push   $0x5359
    38ab:	ff 35 f0 64 00 00    	pushl  0x64f0
    38b1:	e8 3a 08 00 00       	call   40f0 <printf>
}
    38b6:	83 c4 10             	add    $0x10,%esp
    38b9:	c9                   	leave  
    38ba:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    38bb:	83 ec 08             	sub    $0x8,%esp
    38be:	68 48 53 00 00       	push   $0x5348
    38c3:	ff 35 f0 64 00 00    	pushl  0x64f0
    38c9:	e8 22 08 00 00       	call   40f0 <printf>
      exit(-1);
    38ce:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    38d5:	e8 99 06 00 00       	call   3f73 <exit>
    38da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000038e0 <bigargtest>:
{
    38e0:	f3 0f 1e fb          	endbr32 
    38e4:	55                   	push   %ebp
    38e5:	89 e5                	mov    %esp,%ebp
    38e7:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    38ea:	68 66 53 00 00       	push   $0x5366
    38ef:	e8 cf 06 00 00       	call   3fc3 <unlink>
  pid = fork();
    38f4:	e8 72 06 00 00       	call   3f6b <fork>
  if(pid == 0){
    38f9:	83 c4 10             	add    $0x10,%esp
    38fc:	85 c0                	test   %eax,%eax
    38fe:	74 48                	je     3948 <bigargtest+0x68>
  } else if(pid < 0){
    3900:	0f 88 d7 00 00 00    	js     39dd <bigargtest+0xfd>
  wait(0);
    3906:	83 ec 0c             	sub    $0xc,%esp
    3909:	6a 00                	push   $0x0
    390b:	e8 6b 06 00 00       	call   3f7b <wait>
  fd = open("bigarg-ok", 0);
    3910:	5a                   	pop    %edx
    3911:	59                   	pop    %ecx
    3912:	6a 00                	push   $0x0
    3914:	68 66 53 00 00       	push   $0x5366
    3919:	e8 95 06 00 00       	call   3fb3 <open>
  if(fd < 0){
    391e:	83 c4 10             	add    $0x10,%esp
    3921:	85 c0                	test   %eax,%eax
    3923:	0f 88 96 00 00 00    	js     39bf <bigargtest+0xdf>
  close(fd);
    3929:	83 ec 0c             	sub    $0xc,%esp
    392c:	50                   	push   %eax
    392d:	e8 69 06 00 00       	call   3f9b <close>
  unlink("bigarg-ok");
    3932:	c7 04 24 66 53 00 00 	movl   $0x5366,(%esp)
    3939:	e8 85 06 00 00       	call   3fc3 <unlink>
}
    393e:	83 c4 10             	add    $0x10,%esp
    3941:	c9                   	leave  
    3942:	c3                   	ret    
    3943:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3947:	90                   	nop
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3948:	c7 04 85 20 65 00 00 	movl   $0x5ac0,0x6520(,%eax,4)
    394f:	c0 5a 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3953:	83 c0 01             	add    $0x1,%eax
    3956:	83 f8 1f             	cmp    $0x1f,%eax
    3959:	75 ed                	jne    3948 <bigargtest+0x68>
    printf(stdout, "bigarg test\n");
    395b:	50                   	push   %eax
    395c:	50                   	push   %eax
    395d:	68 70 53 00 00       	push   $0x5370
    3962:	ff 35 f0 64 00 00    	pushl  0x64f0
    args[MAXARG-1] = 0;
    3968:	c7 05 9c 65 00 00 00 	movl   $0x0,0x659c
    396f:	00 00 00 
    printf(stdout, "bigarg test\n");
    3972:	e8 79 07 00 00       	call   40f0 <printf>
    exec("echo", args);
    3977:	58                   	pop    %eax
    3978:	5a                   	pop    %edx
    3979:	68 20 65 00 00       	push   $0x6520
    397e:	68 3d 45 00 00       	push   $0x453d
    3983:	e8 23 06 00 00       	call   3fab <exec>
    printf(stdout, "bigarg test ok\n");
    3988:	59                   	pop    %ecx
    3989:	58                   	pop    %eax
    398a:	68 7d 53 00 00       	push   $0x537d
    398f:	ff 35 f0 64 00 00    	pushl  0x64f0
    3995:	e8 56 07 00 00       	call   40f0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    399a:	58                   	pop    %eax
    399b:	5a                   	pop    %edx
    399c:	68 00 02 00 00       	push   $0x200
    39a1:	68 66 53 00 00       	push   $0x5366
    39a6:	e8 08 06 00 00       	call   3fb3 <open>
    close(fd);
    39ab:	89 04 24             	mov    %eax,(%esp)
    39ae:	e8 e8 05 00 00       	call   3f9b <close>
    exit(0);
    39b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39ba:	e8 b4 05 00 00       	call   3f73 <exit>
    printf(stdout, "bigarg test failed!\n");
    39bf:	50                   	push   %eax
    39c0:	50                   	push   %eax
    39c1:	68 a6 53 00 00       	push   $0x53a6
    39c6:	ff 35 f0 64 00 00    	pushl  0x64f0
    39cc:	e8 1f 07 00 00       	call   40f0 <printf>
    exit(-1);
    39d1:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    39d8:	e8 96 05 00 00       	call   3f73 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    39dd:	50                   	push   %eax
    39de:	50                   	push   %eax
    39df:	68 8d 53 00 00       	push   $0x538d
    39e4:	ff 35 f0 64 00 00    	pushl  0x64f0
    39ea:	e8 01 07 00 00       	call   40f0 <printf>
    exit(-1);
    39ef:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    39f6:	e8 78 05 00 00       	call   3f73 <exit>
    39fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    39ff:	90                   	nop

00003a00 <fsfull>:
{
    3a00:	f3 0f 1e fb          	endbr32 
    3a04:	55                   	push   %ebp
    3a05:	89 e5                	mov    %esp,%ebp
    3a07:	57                   	push   %edi
    3a08:	56                   	push   %esi
  for(nfiles = 0; ; nfiles++){
    3a09:	31 f6                	xor    %esi,%esi
{
    3a0b:	53                   	push   %ebx
    3a0c:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    3a0f:	68 bb 53 00 00       	push   $0x53bb
    3a14:	6a 01                	push   $0x1
    3a16:	e8 d5 06 00 00       	call   40f0 <printf>
    3a1b:	83 c4 10             	add    $0x10,%esp
    3a1e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + nfiles / 1000;
    3a20:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3a25:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    3a2a:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    3a2d:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    3a31:	f7 e6                	mul    %esi
    name[5] = '\0';
    3a33:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3a37:	c1 ea 06             	shr    $0x6,%edx
    3a3a:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a3d:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3a43:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a46:	89 f0                	mov    %esi,%eax
    3a48:	29 d0                	sub    %edx,%eax
    3a4a:	89 c2                	mov    %eax,%edx
    3a4c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3a51:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    3a53:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a58:	c1 ea 05             	shr    $0x5,%edx
    3a5b:	83 c2 30             	add    $0x30,%edx
    3a5e:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3a61:	f7 e6                	mul    %esi
    3a63:	89 f0                	mov    %esi,%eax
    3a65:	c1 ea 05             	shr    $0x5,%edx
    3a68:	6b d2 64             	imul   $0x64,%edx,%edx
    3a6b:	29 d0                	sub    %edx,%eax
    3a6d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    3a6f:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3a71:	c1 ea 03             	shr    $0x3,%edx
    3a74:	83 c2 30             	add    $0x30,%edx
    3a77:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3a7a:	f7 e1                	mul    %ecx
    3a7c:	89 f1                	mov    %esi,%ecx
    3a7e:	c1 ea 03             	shr    $0x3,%edx
    3a81:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3a84:	01 c0                	add    %eax,%eax
    3a86:	29 c1                	sub    %eax,%ecx
    3a88:	89 c8                	mov    %ecx,%eax
    3a8a:	83 c0 30             	add    $0x30,%eax
    3a8d:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    3a90:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3a93:	50                   	push   %eax
    3a94:	68 c8 53 00 00       	push   $0x53c8
    3a99:	6a 01                	push   $0x1
    3a9b:	e8 50 06 00 00       	call   40f0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3aa0:	58                   	pop    %eax
    3aa1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3aa4:	5a                   	pop    %edx
    3aa5:	68 02 02 00 00       	push   $0x202
    3aaa:	50                   	push   %eax
    3aab:	e8 03 05 00 00       	call   3fb3 <open>
    if(fd < 0){
    3ab0:	83 c4 10             	add    $0x10,%esp
    int fd = open(name, O_CREATE|O_RDWR);
    3ab3:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3ab5:	85 c0                	test   %eax,%eax
    3ab7:	78 4d                	js     3b06 <fsfull+0x106>
    int total = 0;
    3ab9:	31 db                	xor    %ebx,%ebx
    3abb:	eb 05                	jmp    3ac2 <fsfull+0xc2>
    3abd:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    3ac0:	01 c3                	add    %eax,%ebx
      int cc = write(fd, buf, 512);
    3ac2:	83 ec 04             	sub    $0x4,%esp
    3ac5:	68 00 02 00 00       	push   $0x200
    3aca:	68 e0 8c 00 00       	push   $0x8ce0
    3acf:	57                   	push   %edi
    3ad0:	e8 be 04 00 00       	call   3f93 <write>
      if(cc < 512)
    3ad5:	83 c4 10             	add    $0x10,%esp
    3ad8:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3add:	7f e1                	jg     3ac0 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    3adf:	83 ec 04             	sub    $0x4,%esp
    3ae2:	53                   	push   %ebx
    3ae3:	68 e4 53 00 00       	push   $0x53e4
    3ae8:	6a 01                	push   $0x1
    3aea:	e8 01 06 00 00       	call   40f0 <printf>
    close(fd);
    3aef:	89 3c 24             	mov    %edi,(%esp)
    3af2:	e8 a4 04 00 00       	call   3f9b <close>
    if(total == 0)
    3af7:	83 c4 10             	add    $0x10,%esp
    3afa:	85 db                	test   %ebx,%ebx
    3afc:	74 1e                	je     3b1c <fsfull+0x11c>
  for(nfiles = 0; ; nfiles++){
    3afe:	83 c6 01             	add    $0x1,%esi
    3b01:	e9 1a ff ff ff       	jmp    3a20 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    3b06:	83 ec 04             	sub    $0x4,%esp
    3b09:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b0c:	50                   	push   %eax
    3b0d:	68 d4 53 00 00       	push   $0x53d4
    3b12:	6a 01                	push   $0x1
    3b14:	e8 d7 05 00 00       	call   40f0 <printf>
      break;
    3b19:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    3b1c:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    3b21:	bb 1f 85 eb 51       	mov    $0x51eb851f,%ebx
    3b26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b2d:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    3b30:	89 f0                	mov    %esi,%eax
    3b32:	89 f1                	mov    %esi,%ecx
    unlink(name);
    3b34:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    3b37:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    3b3b:	f7 ef                	imul   %edi
    3b3d:	c1 f9 1f             	sar    $0x1f,%ecx
    name[5] = '\0';
    3b40:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3b44:	c1 fa 06             	sar    $0x6,%edx
    3b47:	29 ca                	sub    %ecx,%edx
    3b49:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3b4c:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3b52:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3b55:	89 f0                	mov    %esi,%eax
    3b57:	29 d0                	sub    %edx,%eax
    3b59:	f7 e3                	mul    %ebx
    name[3] = '0' + (nfiles % 100) / 10;
    3b5b:	89 f0                	mov    %esi,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3b5d:	c1 ea 05             	shr    $0x5,%edx
    3b60:	83 c2 30             	add    $0x30,%edx
    3b63:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3b66:	f7 eb                	imul   %ebx
    3b68:	89 f0                	mov    %esi,%eax
    3b6a:	c1 fa 05             	sar    $0x5,%edx
    3b6d:	29 ca                	sub    %ecx,%edx
    3b6f:	6b d2 64             	imul   $0x64,%edx,%edx
    3b72:	29 d0                	sub    %edx,%eax
    3b74:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3b79:	f7 e2                	mul    %edx
    name[4] = '0' + (nfiles % 10);
    3b7b:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3b7d:	c1 ea 03             	shr    $0x3,%edx
    3b80:	83 c2 30             	add    $0x30,%edx
    3b83:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3b86:	ba 67 66 66 66       	mov    $0x66666667,%edx
    3b8b:	f7 ea                	imul   %edx
    3b8d:	c1 fa 02             	sar    $0x2,%edx
    3b90:	29 ca                	sub    %ecx,%edx
    3b92:	89 f1                	mov    %esi,%ecx
    nfiles--;
    3b94:	83 ee 01             	sub    $0x1,%esi
    name[4] = '0' + (nfiles % 10);
    3b97:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3b9a:	01 c0                	add    %eax,%eax
    3b9c:	29 c1                	sub    %eax,%ecx
    3b9e:	89 c8                	mov    %ecx,%eax
    3ba0:	83 c0 30             	add    $0x30,%eax
    3ba3:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3ba6:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3ba9:	50                   	push   %eax
    3baa:	e8 14 04 00 00       	call   3fc3 <unlink>
  while(nfiles >= 0){
    3baf:	83 c4 10             	add    $0x10,%esp
    3bb2:	83 fe ff             	cmp    $0xffffffff,%esi
    3bb5:	0f 85 75 ff ff ff    	jne    3b30 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    3bbb:	83 ec 08             	sub    $0x8,%esp
    3bbe:	68 f4 53 00 00       	push   $0x53f4
    3bc3:	6a 01                	push   $0x1
    3bc5:	e8 26 05 00 00       	call   40f0 <printf>
}
    3bca:	83 c4 10             	add    $0x10,%esp
    3bcd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3bd0:	5b                   	pop    %ebx
    3bd1:	5e                   	pop    %esi
    3bd2:	5f                   	pop    %edi
    3bd3:	5d                   	pop    %ebp
    3bd4:	c3                   	ret    
    3bd5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003be0 <uio>:
{
    3be0:	f3 0f 1e fb          	endbr32 
    3be4:	55                   	push   %ebp
    3be5:	89 e5                	mov    %esp,%ebp
    3be7:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    3bea:	68 0a 54 00 00       	push   $0x540a
    3bef:	6a 01                	push   $0x1
    3bf1:	e8 fa 04 00 00       	call   40f0 <printf>
  pid = fork();
    3bf6:	e8 70 03 00 00       	call   3f6b <fork>
  if(pid == 0){
    3bfb:	83 c4 10             	add    $0x10,%esp
    3bfe:	85 c0                	test   %eax,%eax
    3c00:	74 1f                	je     3c21 <uio+0x41>
  } else if(pid < 0){
    3c02:	78 48                	js     3c4c <uio+0x6c>
  wait(0);
    3c04:	83 ec 0c             	sub    $0xc,%esp
    3c07:	6a 00                	push   $0x0
    3c09:	e8 6d 03 00 00       	call   3f7b <wait>
  printf(1, "uio test done\n");
    3c0e:	58                   	pop    %eax
    3c0f:	5a                   	pop    %edx
    3c10:	68 14 54 00 00       	push   $0x5414
    3c15:	6a 01                	push   $0x1
    3c17:	e8 d4 04 00 00       	call   40f0 <printf>
}
    3c1c:	83 c4 10             	add    $0x10,%esp
    3c1f:	c9                   	leave  
    3c20:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3c21:	b8 09 00 00 00       	mov    $0x9,%eax
    3c26:	ba 70 00 00 00       	mov    $0x70,%edx
    3c2b:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3c2c:	ba 71 00 00 00       	mov    $0x71,%edx
    3c31:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3c32:	50                   	push   %eax
    3c33:	50                   	push   %eax
    3c34:	68 a0 5b 00 00       	push   $0x5ba0
    3c39:	6a 01                	push   $0x1
    3c3b:	e8 b0 04 00 00       	call   40f0 <printf>
    exit(-1);
    3c40:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3c47:	e8 27 03 00 00       	call   3f73 <exit>
    printf (1, "fork failed\n");
    3c4c:	51                   	push   %ecx
    3c4d:	51                   	push   %ecx
    3c4e:	68 99 53 00 00       	push   $0x5399
    3c53:	6a 01                	push   $0x1
    3c55:	e8 96 04 00 00       	call   40f0 <printf>
    exit(-1);
    3c5a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3c61:	e8 0d 03 00 00       	call   3f73 <exit>
    3c66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c6d:	8d 76 00             	lea    0x0(%esi),%esi

00003c70 <argptest>:
{
    3c70:	f3 0f 1e fb          	endbr32 
    3c74:	55                   	push   %ebp
    3c75:	89 e5                	mov    %esp,%ebp
    3c77:	53                   	push   %ebx
    3c78:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3c7b:	6a 00                	push   $0x0
    3c7d:	68 23 54 00 00       	push   $0x5423
    3c82:	e8 2c 03 00 00       	call   3fb3 <open>
  if (fd < 0) {
    3c87:	83 c4 10             	add    $0x10,%esp
    3c8a:	85 c0                	test   %eax,%eax
    3c8c:	78 39                	js     3cc7 <argptest+0x57>
  read(fd, sbrk(0) - 1, -1);
    3c8e:	83 ec 0c             	sub    $0xc,%esp
    3c91:	89 c3                	mov    %eax,%ebx
    3c93:	6a 00                	push   $0x0
    3c95:	e8 61 03 00 00       	call   3ffb <sbrk>
    3c9a:	83 c4 0c             	add    $0xc,%esp
    3c9d:	83 e8 01             	sub    $0x1,%eax
    3ca0:	6a ff                	push   $0xffffffff
    3ca2:	50                   	push   %eax
    3ca3:	53                   	push   %ebx
    3ca4:	e8 e2 02 00 00       	call   3f8b <read>
  close(fd);
    3ca9:	89 1c 24             	mov    %ebx,(%esp)
    3cac:	e8 ea 02 00 00       	call   3f9b <close>
  printf(1, "arg test passed\n");
    3cb1:	58                   	pop    %eax
    3cb2:	5a                   	pop    %edx
    3cb3:	68 35 54 00 00       	push   $0x5435
    3cb8:	6a 01                	push   $0x1
    3cba:	e8 31 04 00 00       	call   40f0 <printf>
}
    3cbf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3cc2:	83 c4 10             	add    $0x10,%esp
    3cc5:	c9                   	leave  
    3cc6:	c3                   	ret    
    printf(2, "open failed\n");
    3cc7:	51                   	push   %ecx
    3cc8:	51                   	push   %ecx
    3cc9:	68 28 54 00 00       	push   $0x5428
    3cce:	6a 02                	push   $0x2
    3cd0:	e8 1b 04 00 00       	call   40f0 <printf>
    exit(-1);
    3cd5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3cdc:	e8 92 02 00 00       	call   3f73 <exit>
    3ce1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3ce8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3cef:	90                   	nop

00003cf0 <rand>:
{
    3cf0:	f3 0f 1e fb          	endbr32 
  randstate = randstate * 1664525 + 1013904223;
    3cf4:	69 05 ec 64 00 00 0d 	imul   $0x19660d,0x64ec,%eax
    3cfb:	66 19 00 
    3cfe:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3d03:	a3 ec 64 00 00       	mov    %eax,0x64ec
}
    3d08:	c3                   	ret    
    3d09:	66 90                	xchg   %ax,%ax
    3d0b:	66 90                	xchg   %ax,%ax
    3d0d:	66 90                	xchg   %ax,%ax
    3d0f:	90                   	nop

00003d10 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3d10:	f3 0f 1e fb          	endbr32 
    3d14:	55                   	push   %ebp
    3d15:	89 e5                	mov    %esp,%ebp
    3d17:	53                   	push   %ebx
    3d18:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3d1b:	8b 55 0c             	mov    0xc(%ebp),%edx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3d1e:	89 d8                	mov    %ebx,%eax
    3d20:	0f b6 0a             	movzbl (%edx),%ecx
    3d23:	83 c2 01             	add    $0x1,%edx
    3d26:	83 c0 01             	add    $0x1,%eax
    3d29:	88 48 ff             	mov    %cl,-0x1(%eax)
    3d2c:	84 c9                	test   %cl,%cl
    3d2e:	75 f0                	jne    3d20 <strcpy+0x10>
    ;
  s++;
  *s=0;
    3d30:	c6 40 01 00          	movb   $0x0,0x1(%eax)
  return os;
}
    3d34:	89 d8                	mov    %ebx,%eax
    3d36:	5b                   	pop    %ebx
    3d37:	5d                   	pop    %ebp
    3d38:	c3                   	ret    
    3d39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003d40 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3d40:	f3 0f 1e fb          	endbr32 
    3d44:	55                   	push   %ebp
    3d45:	89 e5                	mov    %esp,%ebp
    3d47:	53                   	push   %ebx
    3d48:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3d4b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    3d4e:	0f b6 01             	movzbl (%ecx),%eax
    3d51:	0f b6 1a             	movzbl (%edx),%ebx
    3d54:	84 c0                	test   %al,%al
    3d56:	75 19                	jne    3d71 <strcmp+0x31>
    3d58:	eb 26                	jmp    3d80 <strcmp+0x40>
    3d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d60:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    3d64:	83 c1 01             	add    $0x1,%ecx
    3d67:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3d6a:	0f b6 1a             	movzbl (%edx),%ebx
    3d6d:	84 c0                	test   %al,%al
    3d6f:	74 0f                	je     3d80 <strcmp+0x40>
    3d71:	38 d8                	cmp    %bl,%al
    3d73:	74 eb                	je     3d60 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    3d75:	29 d8                	sub    %ebx,%eax
}
    3d77:	5b                   	pop    %ebx
    3d78:	5d                   	pop    %ebp
    3d79:	c3                   	ret    
    3d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d80:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3d82:	29 d8                	sub    %ebx,%eax
}
    3d84:	5b                   	pop    %ebx
    3d85:	5d                   	pop    %ebp
    3d86:	c3                   	ret    
    3d87:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d8e:	66 90                	xchg   %ax,%ax

00003d90 <strlen>:

uint
strlen(const char *s)
{
    3d90:	f3 0f 1e fb          	endbr32 
    3d94:	55                   	push   %ebp
    3d95:	89 e5                	mov    %esp,%ebp
    3d97:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3d9a:	80 3a 00             	cmpb   $0x0,(%edx)
    3d9d:	74 21                	je     3dc0 <strlen+0x30>
    3d9f:	31 c0                	xor    %eax,%eax
    3da1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3da8:	83 c0 01             	add    $0x1,%eax
    3dab:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3daf:	89 c1                	mov    %eax,%ecx
    3db1:	75 f5                	jne    3da8 <strlen+0x18>
    ;
  return n;
}
    3db3:	89 c8                	mov    %ecx,%eax
    3db5:	5d                   	pop    %ebp
    3db6:	c3                   	ret    
    3db7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3dbe:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    3dc0:	31 c9                	xor    %ecx,%ecx
}
    3dc2:	5d                   	pop    %ebp
    3dc3:	89 c8                	mov    %ecx,%eax
    3dc5:	c3                   	ret    
    3dc6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3dcd:	8d 76 00             	lea    0x0(%esi),%esi

00003dd0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3dd0:	f3 0f 1e fb          	endbr32 
    3dd4:	55                   	push   %ebp
    3dd5:	89 e5                	mov    %esp,%ebp
    3dd7:	57                   	push   %edi
    3dd8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3ddb:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3dde:	8b 45 0c             	mov    0xc(%ebp),%eax
    3de1:	89 d7                	mov    %edx,%edi
    3de3:	fc                   	cld    
    3de4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3de6:	89 d0                	mov    %edx,%eax
    3de8:	5f                   	pop    %edi
    3de9:	5d                   	pop    %ebp
    3dea:	c3                   	ret    
    3deb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3def:	90                   	nop

00003df0 <strchr>:

char*
strchr(const char *s, char c)
{
    3df0:	f3 0f 1e fb          	endbr32 
    3df4:	55                   	push   %ebp
    3df5:	89 e5                	mov    %esp,%ebp
    3df7:	8b 45 08             	mov    0x8(%ebp),%eax
    3dfa:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    3dfe:	0f b6 10             	movzbl (%eax),%edx
    3e01:	84 d2                	test   %dl,%dl
    3e03:	75 16                	jne    3e1b <strchr+0x2b>
    3e05:	eb 21                	jmp    3e28 <strchr+0x38>
    3e07:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3e0e:	66 90                	xchg   %ax,%ax
    3e10:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    3e14:	83 c0 01             	add    $0x1,%eax
    3e17:	84 d2                	test   %dl,%dl
    3e19:	74 0d                	je     3e28 <strchr+0x38>
    if(*s == c)
    3e1b:	38 d1                	cmp    %dl,%cl
    3e1d:	75 f1                	jne    3e10 <strchr+0x20>
      return (char*)s;
  return 0;
}
    3e1f:	5d                   	pop    %ebp
    3e20:	c3                   	ret    
    3e21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    3e28:	31 c0                	xor    %eax,%eax
}
    3e2a:	5d                   	pop    %ebp
    3e2b:	c3                   	ret    
    3e2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003e30 <gets>:

char*
gets(char *buf, int max)
{
    3e30:	f3 0f 1e fb          	endbr32 
    3e34:	55                   	push   %ebp
    3e35:	89 e5                	mov    %esp,%ebp
    3e37:	57                   	push   %edi
    3e38:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3e39:	31 f6                	xor    %esi,%esi
{
    3e3b:	53                   	push   %ebx
    3e3c:	89 f3                	mov    %esi,%ebx
    3e3e:	83 ec 1c             	sub    $0x1c,%esp
    3e41:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    3e44:	eb 33                	jmp    3e79 <gets+0x49>
    3e46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3e4d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    3e50:	83 ec 04             	sub    $0x4,%esp
    3e53:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3e56:	6a 01                	push   $0x1
    3e58:	50                   	push   %eax
    3e59:	6a 00                	push   $0x0
    3e5b:	e8 2b 01 00 00       	call   3f8b <read>
    if(cc < 1)
    3e60:	83 c4 10             	add    $0x10,%esp
    3e63:	85 c0                	test   %eax,%eax
    3e65:	7e 1c                	jle    3e83 <gets+0x53>
      break;
    buf[i++] = c;
    3e67:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3e6b:	83 c7 01             	add    $0x1,%edi
    3e6e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    3e71:	3c 0a                	cmp    $0xa,%al
    3e73:	74 23                	je     3e98 <gets+0x68>
    3e75:	3c 0d                	cmp    $0xd,%al
    3e77:	74 1f                	je     3e98 <gets+0x68>
  for(i=0; i+1 < max; ){
    3e79:	83 c3 01             	add    $0x1,%ebx
    3e7c:	89 fe                	mov    %edi,%esi
    3e7e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3e81:	7c cd                	jl     3e50 <gets+0x20>
    3e83:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    3e85:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    3e88:	c6 03 00             	movb   $0x0,(%ebx)
}
    3e8b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3e8e:	5b                   	pop    %ebx
    3e8f:	5e                   	pop    %esi
    3e90:	5f                   	pop    %edi
    3e91:	5d                   	pop    %ebp
    3e92:	c3                   	ret    
    3e93:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3e97:	90                   	nop
    3e98:	8b 75 08             	mov    0x8(%ebp),%esi
    3e9b:	8b 45 08             	mov    0x8(%ebp),%eax
    3e9e:	01 de                	add    %ebx,%esi
    3ea0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    3ea2:	c6 03 00             	movb   $0x0,(%ebx)
}
    3ea5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3ea8:	5b                   	pop    %ebx
    3ea9:	5e                   	pop    %esi
    3eaa:	5f                   	pop    %edi
    3eab:	5d                   	pop    %ebp
    3eac:	c3                   	ret    
    3ead:	8d 76 00             	lea    0x0(%esi),%esi

00003eb0 <stat>:

int
stat(const char *n, struct stat *st)
{
    3eb0:	f3 0f 1e fb          	endbr32 
    3eb4:	55                   	push   %ebp
    3eb5:	89 e5                	mov    %esp,%ebp
    3eb7:	56                   	push   %esi
    3eb8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3eb9:	83 ec 08             	sub    $0x8,%esp
    3ebc:	6a 00                	push   $0x0
    3ebe:	ff 75 08             	pushl  0x8(%ebp)
    3ec1:	e8 ed 00 00 00       	call   3fb3 <open>
  if(fd < 0)
    3ec6:	83 c4 10             	add    $0x10,%esp
    3ec9:	85 c0                	test   %eax,%eax
    3ecb:	78 2b                	js     3ef8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3ecd:	83 ec 08             	sub    $0x8,%esp
    3ed0:	ff 75 0c             	pushl  0xc(%ebp)
    3ed3:	89 c3                	mov    %eax,%ebx
    3ed5:	50                   	push   %eax
    3ed6:	e8 f0 00 00 00       	call   3fcb <fstat>
  close(fd);
    3edb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3ede:	89 c6                	mov    %eax,%esi
  close(fd);
    3ee0:	e8 b6 00 00 00       	call   3f9b <close>
  return r;
    3ee5:	83 c4 10             	add    $0x10,%esp
}
    3ee8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3eeb:	89 f0                	mov    %esi,%eax
    3eed:	5b                   	pop    %ebx
    3eee:	5e                   	pop    %esi
    3eef:	5d                   	pop    %ebp
    3ef0:	c3                   	ret    
    3ef1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    3ef8:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3efd:	eb e9                	jmp    3ee8 <stat+0x38>
    3eff:	90                   	nop

00003f00 <atoi>:

int
atoi(const char *s)
{
    3f00:	f3 0f 1e fb          	endbr32 
    3f04:	55                   	push   %ebp
    3f05:	89 e5                	mov    %esp,%ebp
    3f07:	53                   	push   %ebx
    3f08:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3f0b:	0f be 02             	movsbl (%edx),%eax
    3f0e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    3f11:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    3f14:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    3f19:	77 1a                	ja     3f35 <atoi+0x35>
    3f1b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3f1f:	90                   	nop
    n = n*10 + *s++ - '0';
    3f20:	83 c2 01             	add    $0x1,%edx
    3f23:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    3f26:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    3f2a:	0f be 02             	movsbl (%edx),%eax
    3f2d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    3f30:	80 fb 09             	cmp    $0x9,%bl
    3f33:	76 eb                	jbe    3f20 <atoi+0x20>
  return n;
}
    3f35:	89 c8                	mov    %ecx,%eax
    3f37:	5b                   	pop    %ebx
    3f38:	5d                   	pop    %ebp
    3f39:	c3                   	ret    
    3f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003f40 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3f40:	f3 0f 1e fb          	endbr32 
    3f44:	55                   	push   %ebp
    3f45:	89 e5                	mov    %esp,%ebp
    3f47:	57                   	push   %edi
    3f48:	8b 45 10             	mov    0x10(%ebp),%eax
    3f4b:	8b 55 08             	mov    0x8(%ebp),%edx
    3f4e:	56                   	push   %esi
    3f4f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3f52:	85 c0                	test   %eax,%eax
    3f54:	7e 0f                	jle    3f65 <memmove+0x25>
    3f56:	01 d0                	add    %edx,%eax
  dst = vdst;
    3f58:	89 d7                	mov    %edx,%edi
    3f5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    3f60:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3f61:	39 f8                	cmp    %edi,%eax
    3f63:	75 fb                	jne    3f60 <memmove+0x20>
  return vdst;
}
    3f65:	5e                   	pop    %esi
    3f66:	89 d0                	mov    %edx,%eax
    3f68:	5f                   	pop    %edi
    3f69:	5d                   	pop    %ebp
    3f6a:	c3                   	ret    

00003f6b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3f6b:	b8 01 00 00 00       	mov    $0x1,%eax
    3f70:	cd 40                	int    $0x40
    3f72:	c3                   	ret    

00003f73 <exit>:
SYSCALL(exit)
    3f73:	b8 02 00 00 00       	mov    $0x2,%eax
    3f78:	cd 40                	int    $0x40
    3f7a:	c3                   	ret    

00003f7b <wait>:
SYSCALL(wait)
    3f7b:	b8 03 00 00 00       	mov    $0x3,%eax
    3f80:	cd 40                	int    $0x40
    3f82:	c3                   	ret    

00003f83 <pipe>:
SYSCALL(pipe)
    3f83:	b8 04 00 00 00       	mov    $0x4,%eax
    3f88:	cd 40                	int    $0x40
    3f8a:	c3                   	ret    

00003f8b <read>:
SYSCALL(read)
    3f8b:	b8 05 00 00 00       	mov    $0x5,%eax
    3f90:	cd 40                	int    $0x40
    3f92:	c3                   	ret    

00003f93 <write>:
SYSCALL(write)
    3f93:	b8 10 00 00 00       	mov    $0x10,%eax
    3f98:	cd 40                	int    $0x40
    3f9a:	c3                   	ret    

00003f9b <close>:
SYSCALL(close)
    3f9b:	b8 15 00 00 00       	mov    $0x15,%eax
    3fa0:	cd 40                	int    $0x40
    3fa2:	c3                   	ret    

00003fa3 <kill>:
SYSCALL(kill)
    3fa3:	b8 06 00 00 00       	mov    $0x6,%eax
    3fa8:	cd 40                	int    $0x40
    3faa:	c3                   	ret    

00003fab <exec>:
SYSCALL(exec)
    3fab:	b8 07 00 00 00       	mov    $0x7,%eax
    3fb0:	cd 40                	int    $0x40
    3fb2:	c3                   	ret    

00003fb3 <open>:
SYSCALL(open)
    3fb3:	b8 0f 00 00 00       	mov    $0xf,%eax
    3fb8:	cd 40                	int    $0x40
    3fba:	c3                   	ret    

00003fbb <mknod>:
SYSCALL(mknod)
    3fbb:	b8 11 00 00 00       	mov    $0x11,%eax
    3fc0:	cd 40                	int    $0x40
    3fc2:	c3                   	ret    

00003fc3 <unlink>:
SYSCALL(unlink)
    3fc3:	b8 12 00 00 00       	mov    $0x12,%eax
    3fc8:	cd 40                	int    $0x40
    3fca:	c3                   	ret    

00003fcb <fstat>:
SYSCALL(fstat)
    3fcb:	b8 08 00 00 00       	mov    $0x8,%eax
    3fd0:	cd 40                	int    $0x40
    3fd2:	c3                   	ret    

00003fd3 <link>:
SYSCALL(link)
    3fd3:	b8 13 00 00 00       	mov    $0x13,%eax
    3fd8:	cd 40                	int    $0x40
    3fda:	c3                   	ret    

00003fdb <mkdir>:
SYSCALL(mkdir)
    3fdb:	b8 14 00 00 00       	mov    $0x14,%eax
    3fe0:	cd 40                	int    $0x40
    3fe2:	c3                   	ret    

00003fe3 <chdir>:
SYSCALL(chdir)
    3fe3:	b8 09 00 00 00       	mov    $0x9,%eax
    3fe8:	cd 40                	int    $0x40
    3fea:	c3                   	ret    

00003feb <dup>:
SYSCALL(dup)
    3feb:	b8 0a 00 00 00       	mov    $0xa,%eax
    3ff0:	cd 40                	int    $0x40
    3ff2:	c3                   	ret    

00003ff3 <getpid>:
SYSCALL(getpid)
    3ff3:	b8 0b 00 00 00       	mov    $0xb,%eax
    3ff8:	cd 40                	int    $0x40
    3ffa:	c3                   	ret    

00003ffb <sbrk>:
SYSCALL(sbrk)
    3ffb:	b8 0c 00 00 00       	mov    $0xc,%eax
    4000:	cd 40                	int    $0x40
    4002:	c3                   	ret    

00004003 <sleep>:
SYSCALL(sleep)
    4003:	b8 0d 00 00 00       	mov    $0xd,%eax
    4008:	cd 40                	int    $0x40
    400a:	c3                   	ret    

0000400b <uptime>:
SYSCALL(uptime)
    400b:	b8 0e 00 00 00       	mov    $0xe,%eax
    4010:	cd 40                	int    $0x40
    4012:	c3                   	ret    

00004013 <helloWorld>:
SYSCALL(helloWorld)
    4013:	b8 16 00 00 00       	mov    $0x16,%eax
    4018:	cd 40                	int    $0x40
    401a:	c3                   	ret    

0000401b <numOpenFiles>:
SYSCALL(numOpenFiles)
    401b:	b8 17 00 00 00       	mov    $0x17,%eax
    4020:	cd 40                	int    $0x40
    4022:	c3                   	ret    

00004023 <memAlloc>:
SYSCALL(memAlloc)
    4023:	b8 18 00 00 00       	mov    $0x18,%eax
    4028:	cd 40                	int    $0x40
    402a:	c3                   	ret    

0000402b <getprocesstimedetails>:
SYSCALL(getprocesstimedetails)
    402b:	b8 19 00 00 00       	mov    $0x19,%eax
    4030:	cd 40                	int    $0x40
    4032:	c3                   	ret    

00004033 <psinfo>:
SYSCALL(psinfo)
    4033:	b8 1a 00 00 00       	mov    $0x1a,%eax
    4038:	cd 40                	int    $0x40
    403a:	c3                   	ret    
    403b:	66 90                	xchg   %ax,%ax
    403d:	66 90                	xchg   %ax,%ax
    403f:	90                   	nop

00004040 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4040:	55                   	push   %ebp
    4041:	89 e5                	mov    %esp,%ebp
    4043:	57                   	push   %edi
    4044:	56                   	push   %esi
    4045:	53                   	push   %ebx
    4046:	83 ec 3c             	sub    $0x3c,%esp
    4049:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    404c:	89 d1                	mov    %edx,%ecx
{
    404e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    4051:	85 d2                	test   %edx,%edx
    4053:	0f 89 7f 00 00 00    	jns    40d8 <printint+0x98>
    4059:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    405d:	74 79                	je     40d8 <printint+0x98>
    neg = 1;
    405f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    4066:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    4068:	31 db                	xor    %ebx,%ebx
    406a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    406d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    4070:	89 c8                	mov    %ecx,%eax
    4072:	31 d2                	xor    %edx,%edx
    4074:	89 cf                	mov    %ecx,%edi
    4076:	f7 75 c4             	divl   -0x3c(%ebp)
    4079:	0f b6 92 f8 5b 00 00 	movzbl 0x5bf8(%edx),%edx
    4080:	89 45 c0             	mov    %eax,-0x40(%ebp)
    4083:	89 d8                	mov    %ebx,%eax
    4085:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    4088:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    408b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    408e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    4091:	76 dd                	jbe    4070 <printint+0x30>
  if(neg)
    4093:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    4096:	85 c9                	test   %ecx,%ecx
    4098:	74 0c                	je     40a6 <printint+0x66>
    buf[i++] = '-';
    409a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    409f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    40a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    40a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    40a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    40ad:	eb 07                	jmp    40b6 <printint+0x76>
    40af:	90                   	nop
    40b0:	0f b6 13             	movzbl (%ebx),%edx
    40b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    40b6:	83 ec 04             	sub    $0x4,%esp
    40b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    40bc:	6a 01                	push   $0x1
    40be:	56                   	push   %esi
    40bf:	57                   	push   %edi
    40c0:	e8 ce fe ff ff       	call   3f93 <write>
  while(--i >= 0)
    40c5:	83 c4 10             	add    $0x10,%esp
    40c8:	39 de                	cmp    %ebx,%esi
    40ca:	75 e4                	jne    40b0 <printint+0x70>
    putc(fd, buf[i]);
}
    40cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    40cf:	5b                   	pop    %ebx
    40d0:	5e                   	pop    %esi
    40d1:	5f                   	pop    %edi
    40d2:	5d                   	pop    %ebp
    40d3:	c3                   	ret    
    40d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    40d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    40df:	eb 87                	jmp    4068 <printint+0x28>
    40e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    40e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    40ef:	90                   	nop

000040f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    40f0:	f3 0f 1e fb          	endbr32 
    40f4:	55                   	push   %ebp
    40f5:	89 e5                	mov    %esp,%ebp
    40f7:	57                   	push   %edi
    40f8:	56                   	push   %esi
    40f9:	53                   	push   %ebx
    40fa:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    40fd:	8b 75 0c             	mov    0xc(%ebp),%esi
    4100:	0f b6 1e             	movzbl (%esi),%ebx
    4103:	84 db                	test   %bl,%bl
    4105:	0f 84 b4 00 00 00    	je     41bf <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    410b:	8d 45 10             	lea    0x10(%ebp),%eax
    410e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    4111:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    4114:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    4116:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4119:	eb 33                	jmp    414e <printf+0x5e>
    411b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    411f:	90                   	nop
    4120:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    4123:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    4128:	83 f8 25             	cmp    $0x25,%eax
    412b:	74 17                	je     4144 <printf+0x54>
  write(fd, &c, 1);
    412d:	83 ec 04             	sub    $0x4,%esp
    4130:	88 5d e7             	mov    %bl,-0x19(%ebp)
    4133:	6a 01                	push   $0x1
    4135:	57                   	push   %edi
    4136:	ff 75 08             	pushl  0x8(%ebp)
    4139:	e8 55 fe ff ff       	call   3f93 <write>
    413e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    4141:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    4144:	0f b6 1e             	movzbl (%esi),%ebx
    4147:	83 c6 01             	add    $0x1,%esi
    414a:	84 db                	test   %bl,%bl
    414c:	74 71                	je     41bf <printf+0xcf>
    c = fmt[i] & 0xff;
    414e:	0f be cb             	movsbl %bl,%ecx
    4151:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    4154:	85 d2                	test   %edx,%edx
    4156:	74 c8                	je     4120 <printf+0x30>
      }
    } else if(state == '%'){
    4158:	83 fa 25             	cmp    $0x25,%edx
    415b:	75 e7                	jne    4144 <printf+0x54>
      if(c == 'd'){
    415d:	83 f8 64             	cmp    $0x64,%eax
    4160:	0f 84 9a 00 00 00    	je     4200 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    4166:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    416c:	83 f9 70             	cmp    $0x70,%ecx
    416f:	74 5f                	je     41d0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    4171:	83 f8 73             	cmp    $0x73,%eax
    4174:	0f 84 d6 00 00 00    	je     4250 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    417a:	83 f8 63             	cmp    $0x63,%eax
    417d:	0f 84 8d 00 00 00    	je     4210 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    4183:	83 f8 25             	cmp    $0x25,%eax
    4186:	0f 84 b4 00 00 00    	je     4240 <printf+0x150>
  write(fd, &c, 1);
    418c:	83 ec 04             	sub    $0x4,%esp
    418f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    4193:	6a 01                	push   $0x1
    4195:	57                   	push   %edi
    4196:	ff 75 08             	pushl  0x8(%ebp)
    4199:	e8 f5 fd ff ff       	call   3f93 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    419e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    41a1:	83 c4 0c             	add    $0xc,%esp
    41a4:	6a 01                	push   $0x1
    41a6:	83 c6 01             	add    $0x1,%esi
    41a9:	57                   	push   %edi
    41aa:	ff 75 08             	pushl  0x8(%ebp)
    41ad:	e8 e1 fd ff ff       	call   3f93 <write>
  for(i = 0; fmt[i]; i++){
    41b2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    41b6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    41b9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    41bb:	84 db                	test   %bl,%bl
    41bd:	75 8f                	jne    414e <printf+0x5e>
    }
  }
}
    41bf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    41c2:	5b                   	pop    %ebx
    41c3:	5e                   	pop    %esi
    41c4:	5f                   	pop    %edi
    41c5:	5d                   	pop    %ebp
    41c6:	c3                   	ret    
    41c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    41ce:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    41d0:	83 ec 0c             	sub    $0xc,%esp
    41d3:	b9 10 00 00 00       	mov    $0x10,%ecx
    41d8:	6a 00                	push   $0x0
    41da:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    41dd:	8b 45 08             	mov    0x8(%ebp),%eax
    41e0:	8b 13                	mov    (%ebx),%edx
    41e2:	e8 59 fe ff ff       	call   4040 <printint>
        ap++;
    41e7:	89 d8                	mov    %ebx,%eax
    41e9:	83 c4 10             	add    $0x10,%esp
      state = 0;
    41ec:	31 d2                	xor    %edx,%edx
        ap++;
    41ee:	83 c0 04             	add    $0x4,%eax
    41f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    41f4:	e9 4b ff ff ff       	jmp    4144 <printf+0x54>
    41f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    4200:	83 ec 0c             	sub    $0xc,%esp
    4203:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4208:	6a 01                	push   $0x1
    420a:	eb ce                	jmp    41da <printf+0xea>
    420c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    4210:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    4213:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    4216:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    4218:	6a 01                	push   $0x1
        ap++;
    421a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    421d:	57                   	push   %edi
    421e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    4221:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    4224:	e8 6a fd ff ff       	call   3f93 <write>
        ap++;
    4229:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    422c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    422f:	31 d2                	xor    %edx,%edx
    4231:	e9 0e ff ff ff       	jmp    4144 <printf+0x54>
    4236:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    423d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    4240:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    4243:	83 ec 04             	sub    $0x4,%esp
    4246:	e9 59 ff ff ff       	jmp    41a4 <printf+0xb4>
    424b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    424f:	90                   	nop
        s = (char*)*ap;
    4250:	8b 45 d0             	mov    -0x30(%ebp),%eax
    4253:	8b 18                	mov    (%eax),%ebx
        ap++;
    4255:	83 c0 04             	add    $0x4,%eax
    4258:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    425b:	85 db                	test   %ebx,%ebx
    425d:	74 17                	je     4276 <printf+0x186>
        while(*s != 0){
    425f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    4262:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    4264:	84 c0                	test   %al,%al
    4266:	0f 84 d8 fe ff ff    	je     4144 <printf+0x54>
    426c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    426f:	89 de                	mov    %ebx,%esi
    4271:	8b 5d 08             	mov    0x8(%ebp),%ebx
    4274:	eb 1a                	jmp    4290 <printf+0x1a0>
          s = "(null)";
    4276:	bb ee 5b 00 00       	mov    $0x5bee,%ebx
        while(*s != 0){
    427b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    427e:	b8 28 00 00 00       	mov    $0x28,%eax
    4283:	89 de                	mov    %ebx,%esi
    4285:	8b 5d 08             	mov    0x8(%ebp),%ebx
    4288:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    428f:	90                   	nop
  write(fd, &c, 1);
    4290:	83 ec 04             	sub    $0x4,%esp
          s++;
    4293:	83 c6 01             	add    $0x1,%esi
    4296:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    4299:	6a 01                	push   $0x1
    429b:	57                   	push   %edi
    429c:	53                   	push   %ebx
    429d:	e8 f1 fc ff ff       	call   3f93 <write>
        while(*s != 0){
    42a2:	0f b6 06             	movzbl (%esi),%eax
    42a5:	83 c4 10             	add    $0x10,%esp
    42a8:	84 c0                	test   %al,%al
    42aa:	75 e4                	jne    4290 <printf+0x1a0>
    42ac:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    42af:	31 d2                	xor    %edx,%edx
    42b1:	e9 8e fe ff ff       	jmp    4144 <printf+0x54>
    42b6:	66 90                	xchg   %ax,%ax
    42b8:	66 90                	xchg   %ax,%ax
    42ba:	66 90                	xchg   %ax,%ax
    42bc:	66 90                	xchg   %ax,%ax
    42be:	66 90                	xchg   %ax,%ax

000042c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    42c0:	f3 0f 1e fb          	endbr32 
    42c4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42c5:	a1 a0 65 00 00       	mov    0x65a0,%eax
{
    42ca:	89 e5                	mov    %esp,%ebp
    42cc:	57                   	push   %edi
    42cd:	56                   	push   %esi
    42ce:	53                   	push   %ebx
    42cf:	8b 5d 08             	mov    0x8(%ebp),%ebx
    42d2:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    42d4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42d7:	39 c8                	cmp    %ecx,%eax
    42d9:	73 15                	jae    42f0 <free+0x30>
    42db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    42df:	90                   	nop
    42e0:	39 d1                	cmp    %edx,%ecx
    42e2:	72 14                	jb     42f8 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    42e4:	39 d0                	cmp    %edx,%eax
    42e6:	73 10                	jae    42f8 <free+0x38>
{
    42e8:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42ea:	8b 10                	mov    (%eax),%edx
    42ec:	39 c8                	cmp    %ecx,%eax
    42ee:	72 f0                	jb     42e0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    42f0:	39 d0                	cmp    %edx,%eax
    42f2:	72 f4                	jb     42e8 <free+0x28>
    42f4:	39 d1                	cmp    %edx,%ecx
    42f6:	73 f0                	jae    42e8 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    42f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    42fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    42fe:	39 fa                	cmp    %edi,%edx
    4300:	74 1e                	je     4320 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    4302:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4305:	8b 50 04             	mov    0x4(%eax),%edx
    4308:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    430b:	39 f1                	cmp    %esi,%ecx
    430d:	74 28                	je     4337 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    430f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    4311:	5b                   	pop    %ebx
  freep = p;
    4312:	a3 a0 65 00 00       	mov    %eax,0x65a0
}
    4317:	5e                   	pop    %esi
    4318:	5f                   	pop    %edi
    4319:	5d                   	pop    %ebp
    431a:	c3                   	ret    
    431b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    431f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    4320:	03 72 04             	add    0x4(%edx),%esi
    4323:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4326:	8b 10                	mov    (%eax),%edx
    4328:	8b 12                	mov    (%edx),%edx
    432a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    432d:	8b 50 04             	mov    0x4(%eax),%edx
    4330:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4333:	39 f1                	cmp    %esi,%ecx
    4335:	75 d8                	jne    430f <free+0x4f>
    p->s.size += bp->s.size;
    4337:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    433a:	a3 a0 65 00 00       	mov    %eax,0x65a0
    p->s.size += bp->s.size;
    433f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4342:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4345:	89 10                	mov    %edx,(%eax)
}
    4347:	5b                   	pop    %ebx
    4348:	5e                   	pop    %esi
    4349:	5f                   	pop    %edi
    434a:	5d                   	pop    %ebp
    434b:	c3                   	ret    
    434c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004350 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4350:	f3 0f 1e fb          	endbr32 
    4354:	55                   	push   %ebp
    4355:	89 e5                	mov    %esp,%ebp
    4357:	57                   	push   %edi
    4358:	56                   	push   %esi
    4359:	53                   	push   %ebx
    435a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    435d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    4360:	8b 3d a0 65 00 00    	mov    0x65a0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4366:	8d 70 07             	lea    0x7(%eax),%esi
    4369:	c1 ee 03             	shr    $0x3,%esi
    436c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    436f:	85 ff                	test   %edi,%edi
    4371:	0f 84 a9 00 00 00    	je     4420 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4377:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    4379:	8b 48 04             	mov    0x4(%eax),%ecx
    437c:	39 f1                	cmp    %esi,%ecx
    437e:	73 6d                	jae    43ed <malloc+0x9d>
    4380:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    4386:	bb 00 10 00 00       	mov    $0x1000,%ebx
    438b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    438e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    4395:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    4398:	eb 17                	jmp    43b1 <malloc+0x61>
    439a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    43a0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    43a2:	8b 4a 04             	mov    0x4(%edx),%ecx
    43a5:	39 f1                	cmp    %esi,%ecx
    43a7:	73 4f                	jae    43f8 <malloc+0xa8>
    43a9:	8b 3d a0 65 00 00    	mov    0x65a0,%edi
    43af:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    43b1:	39 c7                	cmp    %eax,%edi
    43b3:	75 eb                	jne    43a0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    43b5:	83 ec 0c             	sub    $0xc,%esp
    43b8:	ff 75 e4             	pushl  -0x1c(%ebp)
    43bb:	e8 3b fc ff ff       	call   3ffb <sbrk>
  if(p == (char*)-1)
    43c0:	83 c4 10             	add    $0x10,%esp
    43c3:	83 f8 ff             	cmp    $0xffffffff,%eax
    43c6:	74 1b                	je     43e3 <malloc+0x93>
  hp->s.size = nu;
    43c8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    43cb:	83 ec 0c             	sub    $0xc,%esp
    43ce:	83 c0 08             	add    $0x8,%eax
    43d1:	50                   	push   %eax
    43d2:	e8 e9 fe ff ff       	call   42c0 <free>
  return freep;
    43d7:	a1 a0 65 00 00       	mov    0x65a0,%eax
      if((p = morecore(nunits)) == 0)
    43dc:	83 c4 10             	add    $0x10,%esp
    43df:	85 c0                	test   %eax,%eax
    43e1:	75 bd                	jne    43a0 <malloc+0x50>
        return 0;
  }
}
    43e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    43e6:	31 c0                	xor    %eax,%eax
}
    43e8:	5b                   	pop    %ebx
    43e9:	5e                   	pop    %esi
    43ea:	5f                   	pop    %edi
    43eb:	5d                   	pop    %ebp
    43ec:	c3                   	ret    
    if(p->s.size >= nunits){
    43ed:	89 c2                	mov    %eax,%edx
    43ef:	89 f8                	mov    %edi,%eax
    43f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    43f8:	39 ce                	cmp    %ecx,%esi
    43fa:	74 54                	je     4450 <malloc+0x100>
        p->s.size -= nunits;
    43fc:	29 f1                	sub    %esi,%ecx
    43fe:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    4401:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    4404:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    4407:	a3 a0 65 00 00       	mov    %eax,0x65a0
}
    440c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    440f:	8d 42 08             	lea    0x8(%edx),%eax
}
    4412:	5b                   	pop    %ebx
    4413:	5e                   	pop    %esi
    4414:	5f                   	pop    %edi
    4415:	5d                   	pop    %ebp
    4416:	c3                   	ret    
    4417:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    441e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    4420:	c7 05 a0 65 00 00 a4 	movl   $0x65a4,0x65a0
    4427:	65 00 00 
    base.s.size = 0;
    442a:	bf a4 65 00 00       	mov    $0x65a4,%edi
    base.s.ptr = freep = prevp = &base;
    442f:	c7 05 a4 65 00 00 a4 	movl   $0x65a4,0x65a4
    4436:	65 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4439:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    443b:	c7 05 a8 65 00 00 00 	movl   $0x0,0x65a8
    4442:	00 00 00 
    if(p->s.size >= nunits){
    4445:	e9 36 ff ff ff       	jmp    4380 <malloc+0x30>
    444a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    4450:	8b 0a                	mov    (%edx),%ecx
    4452:	89 08                	mov    %ecx,(%eax)
    4454:	eb b1                	jmp    4407 <malloc+0xb7>
