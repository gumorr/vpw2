glabel thread_800033D4
/* 003FD4 800033D4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 003FD8 800033D8 AFBE0040 */  sw    $fp, 0x40($sp)
/* 003FDC 800033DC 0000F021 */  addu  $fp, $zero, $zero
/* 003FE0 800033E0 AFB3002C */  sw    $s3, 0x2c($sp)
/* 003FE4 800033E4 24130002 */  li    $s3, 2
/* 003FE8 800033E8 AFB20028 */  sw    $s2, 0x28($sp)
/* 003FEC 800033EC 00009021 */  addu  $s2, $zero, $zero
/* 003FF0 800033F0 AFB50034 */  sw    $s5, 0x34($sp)
/* 003FF4 800033F4 0000A821 */  addu  $s5, $zero, $zero
/* 003FF8 800033F8 AFB7003C */  sw    $s7, 0x3c($sp)
/* 003FFC 800033FC 24170001 */  li    $s7, 1
/* 004000 80003400 AFBF0044 */  sw    $ra, 0x44($sp)
/* 004004 80003404 AFB60038 */  sw    $s6, 0x38($sp)
/* 004008 80003408 AFB40030 */  sw    $s4, 0x30($sp)
/* 00400C 8000340C AFB10024 */  sw    $s1, 0x24($sp)
/* 004010 80003410 AFB00020 */  sw    $s0, 0x20($sp)
/* 004014 80003414 AFA00010 */  sw    $zero, 0x10($sp)

# {
.L80003418:
/* 004018 80003418 3C048005 */  lui   $a0, %hi(bssMain_80055780) # $a0, 0x8005
/* 00401C 8000341C 24845780 */  addiu $a0, %lo(bssMain_80055780) # addiu $a0, $a0, 0x5780
/* 004020 80003420 00002821 */  addu  $a1, $zero, $zero
/* 004024 80003424 0C00C9E0 */  jal   osRecvMesg
/* 004028 80003428 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 00402C 8000342C 3C148005 */  lui   $s4, %hi(bssMain_800557BC) # $s4, 0x8005
/* 004030 80003430 8E9457BC */  lw    $s4, %lo(bssMain_800557BC)($s4)
/* 004034 80003434 1280000E */  beqz  $s4, .L80003470
/* 004038 80003438 33C20001 */   andi  $v0, $fp, 1

/* 00403C 8000343C 10400005 */  beqz  $v0, .L80003454
/* 004040 80003440 00000000 */   nop   

/* 004044 80003444 3C02803C */  lui   $v0, %hi(framebuffer_803C7C00) # $v0, 0x803c
/* 004048 80003448 24427C00 */  addiu $v0, %lo(framebuffer_803C7C00) # addiu $v0, $v0, 0x7c00
/* 00404C 8000344C 08000D18 */  j     .L80003460
/* 004050 80003450 AE820000 */   sw    $v0, ($s4)

.L80003454:
/* 004054 80003454 3C028039 */  lui   $v0, %hi(framebuffer_8038F800) # $v0, 0x8039
/* 004058 80003458 2442F800 */  addiu $v0, %lo(framebuffer_8038F800) # addiu $v0, $v0, -0x800
/* 00405C 8000345C AE820000 */  sw    $v0, ($s4)

.L80003460:
/* 004060 80003460 3BDE0001 */  xori  $fp, $fp, 1
/* 004064 80003464 00152400 */  sll   $a0, $s5, 0x10
/* 004068 80003468 0C000A80 */  jal   func_80002A00
/* 00406C 8000346C 00042403 */   sra   $a0, $a0, 0x10

.L80003470:
/* 004070 80003470 3C048005 */  lui   $a0, %hi(bssMain_800557A0) # $a0, 0x8005
/* 004074 80003474 248457A0 */  addiu $a0, %lo(bssMain_800557A0) # addiu $a0, $a0, 0x57a0
/* 004078 80003478 00002821 */  addu  $a1, $zero, $zero
/* 00407C 8000347C 0C00CA2C */  jal   osSendMesg
/* 004080 80003480 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

.L80003484:
/* 004084 80003484 2E620002 */  sltiu $v0, $s3, 2

.L80003488:
/* 004088 80003488 1040001E */  beqz  $v0, .L80003504
/* 00408C 8000348C 27A50010 */   addiu $a1, $sp, 0x10

/* 004090 80003490 3C048005 */  lui   $a0, %hi(bssMain_80055728) # $a0, 0x8005
/* 004094 80003494 24845728 */  addiu $a0, %lo(bssMain_80055728) # addiu $a0, $a0, 0x5728
/* 004098 80003498 0C00C9E0 */  jal   osRecvMesg
/* 00409C 8000349C 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 0040A0 800034A0 8FA20010 */  lw    $v0, 0x10($sp)
/* 0040A4 800034A4 84430000 */  lh    $v1, ($v0)
/* 0040A8 800034A8 24080002 */  li    $t0, 2
/* 0040AC 800034AC 1068000B */  beq   $v1, $t0, .L800034DC
/* 0040B0 800034B0 28620003 */   slti  $v0, $v1, 3

/* 0040B4 800034B4 50400005 */  beql  $v0, $zero, .L800034CC
/* 0040B8 800034B8 24080004 */   li    $t0, 4

/* 0040BC 800034BC 5077FFF1 */  beql  $v1, $s7, .L80003484
/* 0040C0 800034C0 26730001 */   addiu $s3, $s3, 1

/* 0040C4 800034C4 08000D22 */  j     .L80003488
/* 0040C8 800034C8 2E620002 */   sltiu $v0, $s3, 2

.L800034CC:
/* 0040CC 800034CC 10680005 */  beq   $v1, $t0, .L800034E4
/* 0040D0 800034D0 2E620002 */   sltiu $v0, $s3, 2

/* 0040D4 800034D4 08000D22 */  j     .L80003488
/* 0040D8 800034D8 00000000 */   nop   

.L800034DC:
/* 0040DC 800034DC 08000D21 */  j     .L80003484
/* 0040E0 800034E0 2652FFFF */   addiu $s2, $s2, -1

.L800034E4:
/* 0040E4 800034E4 3C018004 */  lui   $at, %hi(D_8003C8B2) # $at, 0x8004
/* 0040E8 800034E8 A437C8B2 */  sh    $s7, %lo(D_8003C8B2)($at)
/* 0040EC 800034EC 0C000E69 */  jal   func_800039A4
/* 0040F0 800034F0 26520040 */   addiu $s2, $s2, 0x40

/* 0040F4 800034F4 0C000DAD */  jal   ClearFramebuffers
/* 0040F8 800034F8 26520040 */   addiu $s2, $s2, 0x40

/* 0040FC 800034FC 08000D22 */  j     .L80003488
/* 004100 80003500 2E620002 */   sltiu $v0, $s3, 2

.L80003504:
/* 004104 80003504 1280FFC4 */  beqz  $s4, .L80003418
/* 004108 80003508 00000000 */   nop   

/* 00410C 8000350C 0C00C100 */  jal   osWritebackDCacheAll
/* 004110 80003510 00009821 */   addu  $s3, $zero, $zero

/* 004114 80003514 00008821 */  addu  $s1, $zero, $zero
/* 004118 80003518 0015B400 */  sll   $s6, $s5, 0x10

.L8000351C:
/* 00411C 8000351C 3C028005 */  lui   $v0, %hi(bssMain_80056364) # $v0, 0x8005
/* 004120 80003520 84426364 */  lh    $v0, %lo(bssMain_80056364)($v0)
/* 004124 80003524 00111C00 */  sll   $v1, $s1, 0x10
/* 004128 80003528 00031C03 */  sra   $v1, $v1, 0x10
/* 00412C 8000352C 0062182A */  slt   $v1, $v1, $v0
/* 004130 80003530 2E420002 */  sltiu $v0, $s2, 2
/* 004134 80003534 00621824 */  and   $v1, $v1, $v0
/* 004138 80003538 10600024 */  beqz  $v1, .L800035CC
/* 00413C 8000353C 02802021 */   addu  $a0, $s4, $zero

.L80003540:
/* 004140 80003540 00118400 */  sll   $s0, $s1, 0x10
/* 004144 80003544 00108403 */  sra   $s0, $s0, 0x10
/* 004148 80003548 0C000B90 */  jal   func_80002E40
/* 00414C 8000354C 2E050001 */   sltiu $a1, $s0, 1

/* 004150 80003550 27A40018 */  addiu $a0, $sp, 0x18
/* 004154 80003554 00101880 */  sll   $v1, $s0, 2
/* 004158 80003558 3C088005 */  lui   $t0, %hi(bssMain_800565C0) # $t0, 0x8005
/* 00415C 8000355C 250865C0 */  addiu $t0, %lo(bssMain_800565C0) # addiu $t0, $t0, 0x65c0
/* 004160 80003560 00681821 */  addu  $v1, $v1, $t0
/* 004164 80003564 8C630000 */  lw    $v1, ($v1)
/* 004168 80003568 00162C03 */  sra   $a1, $s6, 0x10
/* 00416C 8000356C AFA20018 */  sw    $v0, 0x18($sp)
/* 004170 80003570 8C710000 */  lw    $s1, ($v1)
/* 004174 80003574 0C000AE1 */  jal   func_80002B84
/* 004178 80003578 02003021 */   addu  $a2, $s0, $zero

/* 00417C 8000357C 02802021 */  addu  $a0, $s4, $zero
/* 004180 80003580 8FA50018 */  lw    $a1, 0x18($sp)
/* 004184 80003584 3C068005 */  lui   $a2, %hi(bssMain_80056364) # $a2, 0x8005
/* 004188 80003588 84C66364 */  lh    $a2, %lo(bssMain_80056364)($a2)
/* 00418C 8000358C 00028400 */  sll   $s0, $v0, 0x10
/* 004190 80003590 00108403 */  sra   $s0, $s0, 0x10
/* 004194 80003594 0206302A */  slt   $a2, $s0, $a2
/* 004198 80003598 38C60001 */  xori  $a2, $a2, 1
/* 00419C 8000359C 00118C00 */  sll   $s1, $s1, 0x10
/* 0041A0 800035A0 0C000C48 */  jal   func_80003120
/* 0041A4 800035A4 00113C03 */   sra   $a3, $s1, 0x10

/* 0041A8 800035A8 3C028005 */  lui   $v0, %hi(bssMain_80056364) # $v0, 0x8005
/* 0041AC 800035AC 84426364 */  lh    $v0, %lo(bssMain_80056364)($v0)
/* 0041B0 800035B0 26520001 */  addiu $s2, $s2, 1
/* 0041B4 800035B4 02008821 */  addu  $s1, $s0, $zero
/* 0041B8 800035B8 0202802A */  slt   $s0, $s0, $v0
/* 0041BC 800035BC 2E420002 */  sltiu $v0, $s2, 2
/* 0041C0 800035C0 02028024 */  and   $s0, $s0, $v0
/* 0041C4 800035C4 1600FFDE */  bnez  $s0, .L80003540
/* 0041C8 800035C8 02802021 */   addu  $a0, $s4, $zero

.L800035CC:
/* 0041CC 800035CC 3C048005 */  lui   $a0, %hi(bssMain_80055728) # $a0, 0x8005
/* 0041D0 800035D0 24845728 */  addiu $a0, %lo(bssMain_80055728) # addiu $a0, $a0, 0x5728
/* 0041D4 800035D4 27A50010 */  addiu $a1, $sp, 0x10
/* 0041D8 800035D8 0C00C9E0 */  jal   osRecvMesg
/* 0041DC 800035DC 24060001 */   li    $a2, 1 # flag: OS_MESG_BLOCK

/* 0041E0 800035E0 8FA20010 */  lw    $v0, 0x10($sp)
/* 0041E4 800035E4 84430000 */  lh    $v1, ($v0)
/* 0041E8 800035E8 24080002 */  li    $t0, 2
/* 0041EC 800035EC 1068000B */  beq   $v1, $t0, .L8000361C
/* 0041F0 800035F0 28620003 */   slti  $v0, $v1, 3

/* 0041F4 800035F4 50400005 */  beql  $v0, $zero, .L8000360C
/* 0041F8 800035F8 24080004 */   li    $t0, 4

/* 0041FC 800035FC 50770016 */  beql  $v1, $s7, .L80003658
/* 004200 80003600 26730001 */   addiu $s3, $s3, 1

/* 004204 80003604 08000D96 */  j     .L80003658
/* 004208 80003608 00000000 */   nop   

.L8000360C:
/* 00420C 8000360C 10680005 */  beq   $v1, $t0, .L80003624
/* 004210 80003610 00000000 */   nop   
/* 004214 80003614 08000D96 */  j     .L80003658
/* 004218 80003618 00000000 */   nop   

.L8000361C:
/* 00421C 8000361C 08000D96 */  j     .L80003658
/* 004220 80003620 2652FFFF */   addiu $s2, $s2, -1

.L80003624:
/* 004224 80003624 3C018004 */  lui   $at, %hi(D_8003C8B2) # $at, 0x8004
/* 004228 80003628 A437C8B2 */  sh    $s7, %lo(D_8003C8B2)($at)
/* 00422C 8000362C 0C00D09C */  jal   osViBlack
/* 004230 80003630 24040001 */   li    $a0, 1

/* 004234 80003634 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 004238 80003638 44816000 */  mtc1  $at, $f12
/* 00423C 8000363C 00000000 */  nop   
/* 004240 80003640 0C00CFB0 */  jal   osViSetYScale
/* 004244 80003644 26520040 */   addiu $s2, $s2, 0x40

/* 004248 80003648 0C000E69 */  jal   func_800039A4
/* 00424C 8000364C 00000000 */   nop   

/* 004250 80003650 0C000DAD */  jal   ClearFramebuffers
/* 004254 80003654 00000000 */   nop   

.L80003658:
/* 004258 80003658 3C028005 */  lui   $v0, %hi(bssMain_80056364) # $v0, 0x8005
/* 00425C 8000365C 84426364 */  lh    $v0, %lo(bssMain_80056364)($v0)
/* 004260 80003660 00111C00 */  sll   $v1, $s1, 0x10
/* 004264 80003664 00031C03 */  sra   $v1, $v1, 0x10
/* 004268 80003668 0062182A */  slt   $v1, $v1, $v0
/* 00426C 8000366C 0012102B */  sltu  $v0, $zero, $s2
/* 004270 80003670 00621825 */  or    $v1, $v1, $v0
/* 004274 80003674 1460FFA9 */  bnez  $v1, .L8000351C
/* 004278 80003678 00000000 */   nop   

/* 00427C 8000367C 08000D06 */  j     .L80003418
/* 004280 80003680 3AB50001 */   xori  $s5, $s5, 1
# }

/* 004284 80003684 8FBF0044 */  lw    $ra, 0x44($sp)
/* 004288 80003688 8FBE0040 */  lw    $fp, 0x40($sp)
/* 00428C 8000368C 8FB7003C */  lw    $s7, 0x3c($sp)
/* 004290 80003690 8FB60038 */  lw    $s6, 0x38($sp)
/* 004294 80003694 8FB50034 */  lw    $s5, 0x34($sp)
/* 004298 80003698 8FB40030 */  lw    $s4, 0x30($sp)
/* 00429C 8000369C 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0042A0 800036A0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0042A4 800036A4 8FB10024 */  lw    $s1, 0x24($sp)
/* 0042A8 800036A8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0042AC 800036AC 03E00008 */  jr    $ra
/* 0042B0 800036B0 27BD0048 */   addiu $sp, $sp, 0x48