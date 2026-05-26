
bufbomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 72 2f 00 00    	push   0x2f72(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 74 2f 00 00    	jmp    *0x2f74(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	f3 0f 1e fa          	endbr64
    1094:	ff 25 5e 2f 00 00    	jmp    *0x2f5e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    109a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010a0 <puts@plt>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	ff 25 fe 2e 00 00    	jmp    *0x2efe(%rip)        # 3fa8 <puts@GLIBC_2.2.5>
    10aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010b0 <printf@plt>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	ff 25 f6 2e 00 00    	jmp    *0x2ef6(%rip)        # 3fb0 <printf@GLIBC_2.2.5>
    10ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010c0 <strcmp@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	ff 25 ee 2e 00 00    	jmp    *0x2eee(%rip)        # 3fb8 <strcmp@GLIBC_2.2.5>
    10ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010d0 <signal@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	ff 25 e6 2e 00 00    	jmp    *0x2ee6(%rip)        # 3fc0 <signal@GLIBC_2.2.5>
    10da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010e0 <exit@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 de 2e 00 00    	jmp    *0x2ede(%rip)        # 3fc8 <exit@GLIBC_2.2.5>
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010f0 <getc@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 d6 2e 00 00    	jmp    *0x2ed6(%rip)        # 3fd0 <getc@GLIBC_2.2.5>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d d5 02 00 00 	lea    0x2d5(%rip),%rdi        # 13f4 <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <stdin@GLIBC_2.2.5>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <stdin@GLIBC_2.2.5>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <stdin@GLIBC_2.2.5>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <stdin@GLIBC_2.2.5>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    $1,%rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	80 3d 6d 2e 00 00 00 	cmpb   $0x0,0x2e6d(%rip)        # 4018 <completed.0>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 c9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 45 2e 00 00 01 	movb   $0x1,0x2e45(%rip)        # 4018 <completed.0>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>

00000000000011e9 <valid>:
    11e9:	f3 0f 1e fa          	endbr64
    11ed:	55                   	push   %rbp
    11ee:	48 89 e5             	mov    %rsp,%rbp
    11f1:	48 83 ec 10          	sub    $0x10,%rsp
    11f5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    11f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11fd:	48 8d 15 04 0e 00 00 	lea    0xe04(%rip),%rdx        # 2008 <_IO_stdin_used+0x8>
    1204:	48 89 d6             	mov    %rdx,%rsi
    1207:	48 89 c7             	mov    %rax,%rdi
    120a:	e8 b1 fe ff ff       	call   10c0 <strcmp@plt>
    120f:	85 c0                	test   %eax,%eax
    1211:	0f 94 c0             	sete   %al
    1214:	0f b6 c0             	movzbl %al,%eax
    1217:	c9                   	leave
    1218:	c3                   	ret

0000000000001219 <danger>:
    1219:	f3 0f 1e fa          	endbr64
    121d:	55                   	push   %rbp
    121e:	48 89 e5             	mov    %rsp,%rbp
    1221:	48 8d 05 ea 0d 00 00 	lea    0xdea(%rip),%rax        # 2012 <_IO_stdin_used+0x12>
    1228:	48 89 c7             	mov    %rax,%rdi
    122b:	e8 70 fe ff ff       	call   10a0 <puts@plt>
    1230:	48 8d 05 f9 0d 00 00 	lea    0xdf9(%rip),%rax        # 2030 <_IO_stdin_used+0x30>
    1237:	48 89 c7             	mov    %rax,%rdi
    123a:	e8 61 fe ff ff       	call   10a0 <puts@plt>
    123f:	90                   	nop
    1240:	5d                   	pop    %rbp
    1241:	c3                   	ret

0000000000001242 <protect>:
    1242:	f3 0f 1e fa          	endbr64
    1246:	55                   	push   %rbp
    1247:	48 89 e5             	mov    %rsp,%rbp
    124a:	48 83 ec 10          	sub    $0x10,%rsp
    124e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1252:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1256:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    125a:	48 89 c7             	mov    %rax,%rdi
    125d:	e8 87 ff ff ff       	call   11e9 <valid>
    1262:	85 c0                	test   %eax,%eax
    1264:	74 11                	je     1277 <protect+0x35>
    1266:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    126a:	48 89 c7             	mov    %rax,%rdi
    126d:	b8 00 00 00 00       	mov    $0x0,%eax
    1272:	e8 a2 ff ff ff       	call   1219 <danger>
    1277:	90                   	nop
    1278:	c9                   	leave
    1279:	c3                   	ret

000000000000127a <smoke>:
    127a:	f3 0f 1e fa          	endbr64
    127e:	55                   	push   %rbp
    127f:	48 89 e5             	mov    %rsp,%rbp
    1282:	48 8d 05 d0 0d 00 00 	lea    0xdd0(%rip),%rax        # 2059 <_IO_stdin_used+0x59>
    1289:	48 89 c7             	mov    %rax,%rdi
    128c:	e8 0f fe ff ff       	call   10a0 <puts@plt>
    1291:	bf 00 00 00 00       	mov    $0x0,%edi
    1296:	e8 45 fe ff ff       	call   10e0 <exit@plt>

000000000000129b <fizz>:
    129b:	f3 0f 1e fa          	endbr64
    129f:	55                   	push   %rbp
    12a0:	48 89 e5             	mov    %rsp,%rbp
    12a3:	48 83 ec 10          	sub    $0x10,%rsp
    12a7:	89 7d fc             	mov    %edi,-0x4(%rbp)
    12aa:	81 7d fc 04 03 02 01 	cmpl   $0x1020304,-0x4(%rbp)
    12b1:	75 1b                	jne    12ce <fizz+0x33>
    12b3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12b6:	89 c6                	mov    %eax,%esi
    12b8:	48 8d 05 b5 0d 00 00 	lea    0xdb5(%rip),%rax        # 2074 <_IO_stdin_used+0x74>
    12bf:	48 89 c7             	mov    %rax,%rdi
    12c2:	b8 00 00 00 00       	mov    $0x0,%eax
    12c7:	e8 e4 fd ff ff       	call   10b0 <printf@plt>
    12cc:	eb 19                	jmp    12e7 <fizz+0x4c>
    12ce:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12d1:	89 c6                	mov    %eax,%esi
    12d3:	48 8d 05 be 0d 00 00 	lea    0xdbe(%rip),%rax        # 2098 <_IO_stdin_used+0x98>
    12da:	48 89 c7             	mov    %rax,%rdi
    12dd:	b8 00 00 00 00       	mov    $0x0,%eax
    12e2:	e8 c9 fd ff ff       	call   10b0 <printf@plt>
    12e7:	bf 00 00 00 00       	mov    $0x0,%edi
    12ec:	e8 ef fd ff ff       	call   10e0 <exit@plt>

00000000000012f1 <Gets>:
    12f1:	f3 0f 1e fa          	endbr64
    12f5:	55                   	push   %rbp
    12f6:	48 89 e5             	mov    %rsp,%rbp
    12f9:	48 83 ec 20          	sub    $0x20,%rsp
    12fd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1301:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1305:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1309:	eb 11                	jmp    131c <Gets+0x2b>
    130b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    130f:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1313:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    1317:	8b 55 f4             	mov    -0xc(%rbp),%edx
    131a:	88 10                	mov    %dl,(%rax)
    131c:	48 8b 05 fd 2c 00 00 	mov    0x2cfd(%rip),%rax        # 4020 <infile>
    1323:	48 89 c7             	mov    %rax,%rdi
    1326:	e8 c5 fd ff ff       	call   10f0 <getc@plt>
    132b:	89 45 f4             	mov    %eax,-0xc(%rbp)
    132e:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
    1332:	74 06                	je     133a <Gets+0x49>
    1334:	83 7d f4 0a          	cmpl   $0xa,-0xc(%rbp)
    1338:	75 d1                	jne    130b <Gets+0x1a>
    133a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    133e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1342:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    1346:	c6 00 00             	movb   $0x0,(%rax)
    1349:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    134d:	c9                   	leave
    134e:	c3                   	ret

000000000000134f <bushandler>:
    134f:	f3 0f 1e fa          	endbr64
    1353:	55                   	push   %rbp
    1354:	48 89 e5             	mov    %rsp,%rbp
    1357:	48 83 ec 10          	sub    $0x10,%rsp
    135b:	89 7d fc             	mov    %edi,-0x4(%rbp)
    135e:	48 8d 05 53 0d 00 00 	lea    0xd53(%rip),%rax        # 20b8 <_IO_stdin_used+0xb8>
    1365:	48 89 c7             	mov    %rax,%rdi
    1368:	e8 33 fd ff ff       	call   10a0 <puts@plt>
    136d:	48 8d 05 64 0d 00 00 	lea    0xd64(%rip),%rax        # 20d8 <_IO_stdin_used+0xd8>
    1374:	48 89 c7             	mov    %rax,%rdi
    1377:	e8 24 fd ff ff       	call   10a0 <puts@plt>
    137c:	bf 00 00 00 00       	mov    $0x0,%edi
    1381:	e8 5a fd ff ff       	call   10e0 <exit@plt>

0000000000001386 <seghandler>:
    1386:	f3 0f 1e fa          	endbr64
    138a:	55                   	push   %rbp
    138b:	48 89 e5             	mov    %rsp,%rbp
    138e:	48 83 ec 10          	sub    $0x10,%rsp
    1392:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1395:	48 8d 05 54 0d 00 00 	lea    0xd54(%rip),%rax        # 20f0 <_IO_stdin_used+0xf0>
    139c:	48 89 c7             	mov    %rax,%rdi
    139f:	e8 fc fc ff ff       	call   10a0 <puts@plt>
    13a4:	48 8d 05 2d 0d 00 00 	lea    0xd2d(%rip),%rax        # 20d8 <_IO_stdin_used+0xd8>
    13ab:	48 89 c7             	mov    %rax,%rdi
    13ae:	e8 ed fc ff ff       	call   10a0 <puts@plt>
    13b3:	bf 00 00 00 00       	mov    $0x0,%edi
    13b8:	e8 23 fd ff ff       	call   10e0 <exit@plt>

00000000000013bd <illegalhandler>:
    13bd:	f3 0f 1e fa          	endbr64
    13c1:	55                   	push   %rbp
    13c2:	48 89 e5             	mov    %rsp,%rbp
    13c5:	48 83 ec 10          	sub    $0x10,%rsp
    13c9:	89 7d fc             	mov    %edi,-0x4(%rbp)
    13cc:	48 8d 05 45 0d 00 00 	lea    0xd45(%rip),%rax        # 2118 <_IO_stdin_used+0x118>
    13d3:	48 89 c7             	mov    %rax,%rdi
    13d6:	e8 c5 fc ff ff       	call   10a0 <puts@plt>
    13db:	48 8d 05 f6 0c 00 00 	lea    0xcf6(%rip),%rax        # 20d8 <_IO_stdin_used+0xd8>
    13e2:	48 89 c7             	mov    %rax,%rdi
    13e5:	e8 b6 fc ff ff       	call   10a0 <puts@plt>
    13ea:	bf 00 00 00 00       	mov    $0x0,%edi
    13ef:	e8 ec fc ff ff       	call   10e0 <exit@plt>

00000000000013f4 <main>:
    13f4:	f3 0f 1e fa          	endbr64
    13f8:	55                   	push   %rbp
    13f9:	48 89 e5             	mov    %rsp,%rbp
    13fc:	48 83 ec 10          	sub    $0x10,%rsp
    1400:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1403:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1407:	48 8d 05 78 ff ff ff 	lea    -0x88(%rip),%rax        # 1386 <seghandler>
    140e:	48 89 c6             	mov    %rax,%rsi
    1411:	bf 0b 00 00 00       	mov    $0xb,%edi
    1416:	e8 b5 fc ff ff       	call   10d0 <signal@plt>
    141b:	48 8d 05 2d ff ff ff 	lea    -0xd3(%rip),%rax        # 134f <bushandler>
    1422:	48 89 c6             	mov    %rax,%rsi
    1425:	bf 07 00 00 00       	mov    $0x7,%edi
    142a:	e8 a1 fc ff ff       	call   10d0 <signal@plt>
    142f:	48 8d 05 87 ff ff ff 	lea    -0x79(%rip),%rax        # 13bd <illegalhandler>
    1436:	48 89 c6             	mov    %rax,%rsi
    1439:	bf 04 00 00 00       	mov    $0x4,%edi
    143e:	e8 8d fc ff ff       	call   10d0 <signal@plt>
    1443:	48 8b 05 c6 2b 00 00 	mov    0x2bc6(%rip),%rax        # 4010 <stdin@GLIBC_2.2.5>
    144a:	48 89 05 cf 2b 00 00 	mov    %rax,0x2bcf(%rip)        # 4020 <infile>
    1451:	b8 00 00 00 00       	mov    $0x0,%eax
    1456:	e8 16 00 00 00       	call   1471 <f>
    145b:	48 8d 05 e6 0c 00 00 	lea    0xce6(%rip),%rax        # 2148 <_IO_stdin_used+0x148>
    1462:	48 89 c7             	mov    %rax,%rdi
    1465:	e8 36 fc ff ff       	call   10a0 <puts@plt>
    146a:	b8 00 00 00 00       	mov    $0x0,%eax
    146f:	c9                   	leave
    1470:	c3                   	ret

0000000000001471 <getbuf>:
    1471:	f3 0f 1e fa          	endbr64
    1475:	55                   	push   %rbp
    1476:	48 89 e5             	mov    %rsp,%rbp
    1479:	48 83 ec 20          	sub    $0x20,%rsp
    147d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1481:	48 89 c6             	mov    %rax,%rsi
    1484:	48 8d 05 e1 0c 00 00 	lea    0xce1(%rip),%rax        # 216c <_IO_stdin_used+0x16c>
    148b:	48 89 c7             	mov    %rax,%rdi
    148e:	b8 00 00 00 00       	mov    $0x0,%eax
    1493:	e8 18 fc ff ff       	call   10b0 <printf@plt>
    1498:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    149c:	48 89 c7             	mov    %rax,%rdi
    149f:	e8 4d fe ff ff       	call   12f1 <Gets>
    14a4:	b8 01 00 00 00       	mov    $0x1,%eax
    14a9:	c9                   	leave
    14aa:	c3                   	ret

Disassembly of section .fini:

00000000000014ac <_fini>:
    14ac:	f3 0f 1e fa          	endbr64
    14b0:	48 83 ec 08          	sub    $0x8,%rsp
    14b4:	48 83 c4 08          	add    $0x8,%rsp
    14b8:	c3                   	ret
