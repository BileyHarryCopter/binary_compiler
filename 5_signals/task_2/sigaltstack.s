
sigaltstack:     file format elf64-x86-64


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
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 63 2f 00 00 	bnd jmp *0x2f63(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 3d 2f 00 00 	bnd jmp *0x2f3d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010c0 <free@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 3f98 <free@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <puts@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 3fa0 <puts@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <sigaction@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 3fa8 <sigaction@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <getpid@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 3fb0 <getpid@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <__stack_chk_fail@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <printf@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 a5 2e 00 00 	bnd jmp *0x2ea5(%rip)        # 3fc0 <printf@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <calloc@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 9d 2e 00 00 	bnd jmp *0x2e9d(%rip)        # 3fc8 <calloc@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <sigaltstack@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 95 2e 00 00 	bnd jmp *0x2e95(%rip)        # 3fd0 <sigaltstack@GLIBC_2.2.5>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	45 31 c0             	xor    %r8d,%r8d
    1156:	31 c9                	xor    %ecx,%ecx
    1158:	48 8d 3d 32 01 00 00 	lea    0x132(%rip),%rdi        # 1291 <main>
    115f:	ff 15 73 2e 00 00    	call   *0x2e73(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1165:	f4                   	hlt    
    1166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    116d:	00 00 00 

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    0x2e99(%rip),%rdi        # 4010 <__TMC_END__>
    1177:	48 8d 05 92 2e 00 00 	lea    0x2e92(%rip),%rax        # 4010 <__TMC_END__>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 56 2e 00 00 	mov    0x2e56(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmp    *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 69 2e 00 00 	lea    0x2e69(%rip),%rdi        # 4010 <__TMC_END__>
    11a7:	48 8d 35 62 2e 00 00 	lea    0x2e62(%rip),%rsi        # 4010 <__TMC_END__>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    %rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    0x2e25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmp    *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 25 2e 00 00 00 	cmpb   $0x0,0x2e25(%rip)        # 4010 <__TMC_END__>
    11eb:	75 2b                	jne    1218 <__do_global_dtors_aux+0x38>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d 02 2e 00 00 	cmpq   $0x0,0x2e02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0c                	je     1207 <__do_global_dtors_aux+0x27>
    11fb:	48 8b 3d 06 2e 00 00 	mov    0x2e06(%rip),%rdi        # 4008 <__dso_handle>
    1202:	e8 a9 fe ff ff       	call   10b0 <__cxa_finalize@plt>
    1207:	e8 64 ff ff ff       	call   1170 <deregister_tm_clones>
    120c:	c6 05 fd 2d 00 00 01 	movb   $0x1,0x2dfd(%rip)        # 4010 <__TMC_END__>
    1213:	5d                   	pop    %rbp
    1214:	c3                   	ret    
    1215:	0f 1f 00             	nopl   (%rax)
    1218:	c3                   	ret    
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 77 ff ff ff       	jmp    11a0 <register_tm_clones>

0000000000001229 <handler>:
    1229:	f3 0f 1e fa          	endbr64 
    122d:	55                   	push   %rbp
    122e:	48 89 e5             	mov    %rsp,%rbp
    1231:	48 83 ec 20          	sub    $0x20,%rsp
    1235:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1238:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    123f:	00 00 
    1241:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1245:	31 c0                	xor    %eax,%eax
    1247:	c7 45 f4 04 00 00 00 	movl   $0x4,-0xc(%rbp)
    124e:	83 7d ec 0a          	cmpl   $0xa,-0x14(%rbp)
    1252:	75 26                	jne    127a <handler+0x51>
    1254:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    1258:	48 89 c6             	mov    %rax,%rsi
    125b:	48 8d 05 a6 0d 00 00 	lea    0xda6(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1262:	48 89 c7             	mov    %rax,%rdi
    1265:	b8 00 00 00 00       	mov    $0x0,%eax
    126a:	e8 a1 fe ff ff       	call   1110 <printf@plt>
    126f:	c7 05 9b 2d 00 00 ff 	movl   $0xffffffff,0x2d9b(%rip)        # 4014 <sigusr1_flag>
    1276:	ff ff ff 
    1279:	90                   	nop
    127a:	90                   	nop
    127b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    127f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1286:	00 00 
    1288:	74 05                	je     128f <handler+0x66>
    128a:	e8 71 fe ff ff       	call   1100 <__stack_chk_fail@plt>
    128f:	c9                   	leave  
    1290:	c3                   	ret    

0000000000001291 <main>:
    1291:	f3 0f 1e fa          	endbr64 
    1295:	55                   	push   %rbp
    1296:	48 89 e5             	mov    %rsp,%rbp
    1299:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    12a0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12a7:	00 00 
    12a9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12ad:	31 c0                	xor    %eax,%eax
    12af:	c7 85 38 ff ff ff 04 	movl   $0x4,-0xc8(%rbp)
    12b6:	00 00 00 
    12b9:	e8 32 fe ff ff       	call   10f0 <getpid@plt>
    12be:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%rbp)
    12c4:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
    12ca:	89 c6                	mov    %eax,%esi
    12cc:	48 8d 05 39 0d 00 00 	lea    0xd39(%rip),%rax        # 200c <_IO_stdin_used+0xc>
    12d3:	48 89 c7             	mov    %rax,%rdi
    12d6:	b8 00 00 00 00       	mov    $0x0,%eax
    12db:	e8 30 fe ff ff       	call   1110 <printf@plt>
    12e0:	48 8d 85 38 ff ff ff 	lea    -0xc8(%rbp),%rax
    12e7:	48 89 c6             	mov    %rax,%rsi
    12ea:	48 8d 05 17 0d 00 00 	lea    0xd17(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    12f1:	48 89 c7             	mov    %rax,%rdi
    12f4:	b8 00 00 00 00       	mov    $0x0,%eax
    12f9:	e8 12 fe ff ff       	call   1110 <printf@plt>
    12fe:	48 8d 05 24 0d 00 00 	lea    0xd24(%rip),%rax        # 2029 <_IO_stdin_used+0x29>
    1305:	48 89 c7             	mov    %rax,%rdi
    1308:	e8 c3 fd ff ff       	call   10d0 <puts@plt>
    130d:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    1314:	00 00 00 00 
    1318:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    131f:	00 00 00 00 
    1323:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    132a:	00 00 00 00 
    132e:	be 04 00 00 00       	mov    $0x4,%esi
    1333:	bf 00 08 00 00       	mov    $0x800,%edi
    1338:	e8 e3 fd ff ff       	call   1120 <calloc@plt>
    133d:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    1344:	c7 85 48 ff ff ff 00 	movl   $0x0,-0xb8(%rbp)
    134b:	00 00 00 
    134e:	48 c7 85 50 ff ff ff 	movq   $0x800,-0xb0(%rbp)
    1355:	00 08 00 00 
    1359:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    1360:	be 00 00 00 00       	mov    $0x0,%esi
    1365:	48 89 c7             	mov    %rax,%rdi
    1368:	e8 c3 fd ff ff       	call   1130 <sigaltstack@plt>
    136d:	83 f8 ff             	cmp    $0xffffffff,%eax
    1370:	75 25                	jne    1397 <main+0x106>
    1372:	48 8d 05 c7 0c 00 00 	lea    0xcc7(%rip),%rax        # 2040 <_IO_stdin_used+0x40>
    1379:	48 89 c7             	mov    %rax,%rdi
    137c:	e8 4f fd ff ff       	call   10d0 <puts@plt>
    1381:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
    1388:	48 89 c7             	mov    %rax,%rdi
    138b:	e8 30 fd ff ff       	call   10c0 <free@plt>
    1390:	b8 00 00 00 00       	mov    $0x0,%eax
    1395:	eb 51                	jmp    13e8 <main+0x157>
    1397:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    139e:	b8 00 00 00 00       	mov    $0x0,%eax
    13a3:	b9 13 00 00 00       	mov    $0x13,%ecx
    13a8:	48 89 d7             	mov    %rdx,%rdi
    13ab:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    13ae:	48 8d 05 74 fe ff ff 	lea    -0x18c(%rip),%rax        # 1229 <handler>
    13b5:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    13bc:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    13c3:	ba 00 00 00 00       	mov    $0x0,%edx
    13c8:	48 89 c6             	mov    %rax,%rsi
    13cb:	bf 0a 00 00 00       	mov    $0xa,%edi
    13d0:	e8 0b fd ff ff       	call   10e0 <sigaction@plt>
    13d5:	8b 05 39 2c 00 00    	mov    0x2c39(%rip),%eax        # 4014 <sigusr1_flag>
    13db:	83 f8 ff             	cmp    $0xffffffff,%eax
    13de:	74 02                	je     13e2 <main+0x151>
    13e0:	eb da                	jmp    13bc <main+0x12b>
    13e2:	90                   	nop
    13e3:	b8 00 00 00 00       	mov    $0x0,%eax
    13e8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    13ec:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    13f3:	00 00 
    13f5:	74 05                	je     13fc <main+0x16b>
    13f7:	e8 04 fd ff ff       	call   1100 <__stack_chk_fail@plt>
    13fc:	c9                   	leave  
    13fd:	c3                   	ret    

Disassembly of section .fini:

0000000000001400 <_fini>:
    1400:	f3 0f 1e fa          	endbr64 
    1404:	48 83 ec 08          	sub    $0x8,%rsp
    1408:	48 83 c4 08          	add    $0x8,%rsp
    140c:	c3                   	ret    
Contents of the .eh_frame section (loaded from sigaltstack):


00000000 0000000000000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -8
  Return address column: 16
  Augmentation data:     1b
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_offset: r16 (rip) at cfa-8
  DW_CFA_nop
  DW_CFA_nop

00000018 0000000000000014 0000001c FDE cie=00000000 pc=0000000000001140..0000000000001166
  DW_CFA_advance_loc: 4 to 0000000000001144
  DW_CFA_undefined: r16 (rip)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000030 0000000000000024 00000034 FDE cie=00000000 pc=0000000000001020..00000000000010b0
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 6 to 0000000000001026
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 10 to 0000000000001030
  DW_CFA_def_cfa_expression (DW_OP_breg7 (rsp): 8; DW_OP_breg16 (rip): 0; DW_OP_lit15; DW_OP_and; DW_OP_lit10; DW_OP_ge; DW_OP_lit3; DW_OP_shl; DW_OP_plus)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000058 0000000000000014 0000005c FDE cie=00000000 pc=00000000000010b0..00000000000010c0
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000070 0000000000000014 00000074 FDE cie=00000000 pc=00000000000010c0..0000000000001140
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000088 000000000000001c 0000008c FDE cie=00000000 pc=0000000000001229..0000000000001291
  DW_CFA_advance_loc: 5 to 000000000000122e
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 3 to 0000000000001231
  DW_CFA_def_cfa_register: r6 (rbp)
  DW_CFA_advance_loc1: 95 to 0000000000001290
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_nop
  DW_CFA_nop

000000a8 000000000000001c 000000ac FDE cie=00000000 pc=0000000000001291..00000000000013fe
  DW_CFA_advance_loc: 5 to 0000000000001296
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 3 to 0000000000001299
  DW_CFA_def_cfa_register: r6 (rbp)
  DW_CFA_advance_loc2: 356 to 00000000000013fd
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_nop

000000c8 ZERO terminator


