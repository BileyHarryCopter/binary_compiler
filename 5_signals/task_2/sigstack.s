
sigstack:     file format elf64-x86-64


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
    1020:	ff 35 82 2f 00 00    	push   0x2f82(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 83 2f 00 00 	bnd jmp *0x2f83(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 7d 2f 00 00 	bnd jmp *0x2f7d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001080 <sigaction@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 2d 2f 00 00 	bnd jmp *0x2f2d(%rip)        # 3fb8 <sigaction@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <getpid@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 25 2f 00 00 	bnd jmp *0x2f25(%rip)        # 3fc0 <getpid@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 1d 2f 00 00 	bnd jmp *0x2f1d(%rip)        # 3fc8 <__stack_chk_fail@GLIBC_2.4>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <printf@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 15 2f 00 00 	bnd jmp *0x2f15(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010c0 <_start>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	31 ed                	xor    %ebp,%ebp
    10c6:	49 89 d1             	mov    %rdx,%r9
    10c9:	5e                   	pop    %rsi
    10ca:	48 89 e2             	mov    %rsp,%rdx
    10cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10d1:	50                   	push   %rax
    10d2:	54                   	push   %rsp
    10d3:	45 31 c0             	xor    %r8d,%r8d
    10d6:	31 c9                	xor    %ecx,%ecx
    10d8:	48 8d 3d 32 01 00 00 	lea    0x132(%rip),%rdi        # 1211 <main>
    10df:	ff 15 f3 2e 00 00    	call   *0x2ef3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10e5:	f4                   	hlt    
    10e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ed:	00 00 00 

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d 19 2f 00 00 	lea    0x2f19(%rip),%rdi        # 4010 <__TMC_END__>
    10f7:	48 8d 05 12 2f 00 00 	lea    0x2f12(%rip),%rax        # 4010 <__TMC_END__>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 d6 2e 00 00 	mov    0x2ed6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmp    *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d e9 2e 00 00 	lea    0x2ee9(%rip),%rdi        # 4010 <__TMC_END__>
    1127:	48 8d 35 e2 2e 00 00 	lea    0x2ee2(%rip),%rsi        # 4010 <__TMC_END__>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    %rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 a5 2e 00 00 	mov    0x2ea5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmp    *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	80 3d a5 2e 00 00 00 	cmpb   $0x0,0x2ea5(%rip)        # 4010 <__TMC_END__>
    116b:	75 2b                	jne    1198 <__do_global_dtors_aux+0x38>
    116d:	55                   	push   %rbp
    116e:	48 83 3d 82 2e 00 00 	cmpq   $0x0,0x2e82(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1175:	00 
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	74 0c                	je     1187 <__do_global_dtors_aux+0x27>
    117b:	48 8b 3d 86 2e 00 00 	mov    0x2e86(%rip),%rdi        # 4008 <__dso_handle>
    1182:	e8 e9 fe ff ff       	call   1070 <__cxa_finalize@plt>
    1187:	e8 64 ff ff ff       	call   10f0 <deregister_tm_clones>
    118c:	c6 05 7d 2e 00 00 01 	movb   $0x1,0x2e7d(%rip)        # 4010 <__TMC_END__>
    1193:	5d                   	pop    %rbp
    1194:	c3                   	ret    
    1195:	0f 1f 00             	nopl   (%rax)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <frame_dummy>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	e9 77 ff ff ff       	jmp    1120 <register_tm_clones>

00000000000011a9 <handler>:
    11a9:	f3 0f 1e fa          	endbr64 
    11ad:	55                   	push   %rbp
    11ae:	48 89 e5             	mov    %rsp,%rbp
    11b1:	48 83 ec 20          	sub    $0x20,%rsp
    11b5:	89 7d ec             	mov    %edi,-0x14(%rbp)
    11b8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11bf:	00 00 
    11c1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11c5:	31 c0                	xor    %eax,%eax
    11c7:	c7 45 f4 04 00 00 00 	movl   $0x4,-0xc(%rbp)
    11ce:	83 7d ec 0a          	cmpl   $0xa,-0x14(%rbp)
    11d2:	75 26                	jne    11fa <handler+0x51>
    11d4:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    11d8:	48 89 c6             	mov    %rax,%rsi
    11db:	48 8d 05 22 0e 00 00 	lea    0xe22(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    11e2:	48 89 c7             	mov    %rax,%rdi
    11e5:	b8 00 00 00 00       	mov    $0x0,%eax
    11ea:	e8 c1 fe ff ff       	call   10b0 <printf@plt>
    11ef:	c7 05 1b 2e 00 00 ff 	movl   $0xffffffff,0x2e1b(%rip)        # 4014 <sigusr1_flag>
    11f6:	ff ff ff 
    11f9:	90                   	nop
    11fa:	90                   	nop
    11fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11ff:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1206:	00 00 
    1208:	74 05                	je     120f <handler+0x66>
    120a:	e8 91 fe ff ff       	call   10a0 <__stack_chk_fail@plt>
    120f:	c9                   	leave  
    1210:	c3                   	ret    

0000000000001211 <main>:
    1211:	f3 0f 1e fa          	endbr64 
    1215:	55                   	push   %rbp
    1216:	48 89 e5             	mov    %rsp,%rbp
    1219:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    1220:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1227:	00 00 
    1229:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    122d:	31 c0                	xor    %eax,%eax
    122f:	c7 85 58 ff ff ff 04 	movl   $0x4,-0xa8(%rbp)
    1236:	00 00 00 
    1239:	e8 52 fe ff ff       	call   1090 <getpid@plt>
    123e:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
    1244:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    124a:	89 c6                	mov    %eax,%esi
    124c:	48 8d 05 b5 0d 00 00 	lea    0xdb5(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1253:	48 89 c7             	mov    %rax,%rdi
    1256:	b8 00 00 00 00       	mov    $0x0,%eax
    125b:	e8 50 fe ff ff       	call   10b0 <printf@plt>
    1260:	48 8d 85 58 ff ff ff 	lea    -0xa8(%rbp),%rax
    1267:	48 89 c6             	mov    %rax,%rsi
    126a:	48 8d 05 93 0d 00 00 	lea    0xd93(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1271:	48 89 c7             	mov    %rax,%rdi
    1274:	b8 00 00 00 00       	mov    $0x0,%eax
    1279:	e8 32 fe ff ff       	call   10b0 <printf@plt>
    127e:	48 8d 95 60 ff ff ff 	lea    -0xa0(%rbp),%rdx
    1285:	b8 00 00 00 00       	mov    $0x0,%eax
    128a:	b9 13 00 00 00       	mov    $0x13,%ecx
    128f:	48 89 d7             	mov    %rdx,%rdi
    1292:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1295:	48 8d 05 0d ff ff ff 	lea    -0xf3(%rip),%rax        # 11a9 <handler>
    129c:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    12a3:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    12aa:	ba 00 00 00 00       	mov    $0x0,%edx
    12af:	48 89 c6             	mov    %rax,%rsi
    12b2:	bf 0a 00 00 00       	mov    $0xa,%edi
    12b7:	e8 c4 fd ff ff       	call   1080 <sigaction@plt>
    12bc:	8b 05 52 2d 00 00    	mov    0x2d52(%rip),%eax        # 4014 <sigusr1_flag>
    12c2:	83 f8 ff             	cmp    $0xffffffff,%eax
    12c5:	74 02                	je     12c9 <main+0xb8>
    12c7:	eb da                	jmp    12a3 <main+0x92>
    12c9:	90                   	nop
    12ca:	b8 00 00 00 00       	mov    $0x0,%eax
    12cf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12d3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    12da:	00 00 
    12dc:	74 05                	je     12e3 <main+0xd2>
    12de:	e8 bd fd ff ff       	call   10a0 <__stack_chk_fail@plt>
    12e3:	c9                   	leave  
    12e4:	c3                   	ret    

Disassembly of section .fini:

00000000000012e8 <_fini>:
    12e8:	f3 0f 1e fa          	endbr64 
    12ec:	48 83 ec 08          	sub    $0x8,%rsp
    12f0:	48 83 c4 08          	add    $0x8,%rsp
    12f4:	c3                   	ret    
Contents of the .eh_frame section (loaded from sigstack):


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

00000018 0000000000000014 0000001c FDE cie=00000000 pc=00000000000010c0..00000000000010e6
  DW_CFA_advance_loc: 4 to 00000000000010c4
  DW_CFA_undefined: r16 (rip)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000030 0000000000000024 00000034 FDE cie=00000000 pc=0000000000001020..0000000000001070
  DW_CFA_def_cfa_offset: 16
  DW_CFA_advance_loc: 6 to 0000000000001026
  DW_CFA_def_cfa_offset: 24
  DW_CFA_advance_loc: 10 to 0000000000001030
  DW_CFA_def_cfa_expression (DW_OP_breg7 (rsp): 8; DW_OP_breg16 (rip): 0; DW_OP_lit15; DW_OP_and; DW_OP_lit10; DW_OP_ge; DW_OP_lit3; DW_OP_shl; DW_OP_plus)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000058 0000000000000014 0000005c FDE cie=00000000 pc=0000000000001070..0000000000001080
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000070 0000000000000014 00000074 FDE cie=00000000 pc=0000000000001080..00000000000010c0
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

00000088 000000000000001c 0000008c FDE cie=00000000 pc=00000000000011a9..0000000000001211
  DW_CFA_advance_loc: 5 to 00000000000011ae
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 3 to 00000000000011b1
  DW_CFA_def_cfa_register: r6 (rbp)
  DW_CFA_advance_loc1: 95 to 0000000000001210
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_nop
  DW_CFA_nop

000000a8 000000000000001c 000000ac FDE cie=00000000 pc=0000000000001211..00000000000012e5
  DW_CFA_advance_loc: 5 to 0000000000001216
  DW_CFA_def_cfa_offset: 16
  DW_CFA_offset: r6 (rbp) at cfa-16
  DW_CFA_advance_loc: 3 to 0000000000001219
  DW_CFA_def_cfa_register: r6 (rbp)
  DW_CFA_advance_loc1: 203 to 00000000000012e4
  DW_CFA_def_cfa: r7 (rsp) ofs 8
  DW_CFA_nop
  DW_CFA_nop

000000c8 ZERO terminator


