# related to rendering?

glabel func_800103F8
/* 010FF8 800103F8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 010FFC 800103FC AFB3001C */  sw    $s3, 0x1c($sp)
/* 011000 80010400 00809821 */  addu  $s3, $a0, $zero
/* 011004 80010404 AFB40020 */  sw    $s4, 0x20($sp)
/* 011008 80010408 00A0A021 */  addu  $s4, $a1, $zero
/* 01100C 8001040C 00063400 */  sll   $a2, $a2, 0x10
/* 011010 80010410 00061403 */  sra   $v0, $a2, 0x10
/* 011014 80010414 AFBF0024 */  sw    $ra, 0x24($sp)
/* 011018 80010418 AFB20018 */  sw    $s2, 0x18($sp)
/* 01101C 8001041C AFB10014 */  sw    $s1, 0x14($sp)
/* 011020 80010420 10400089 */  beqz  $v0, .L80010648
/* 011024 80010424 AFB00010 */   sw    $s0, 0x10($sp)

/* 011028 80010428 00409021 */  addu  $s2, $v0, $zero
/* 01102C 8001042C 02608821 */  addu  $s1, $s3, $zero
.L80010430:
/* 011030 80010430 8E220020 */  lw    $v0, 0x20($s1)
/* 011034 80010434 10400022 */  beqz  $v0, .L800104C0
/* 011038 80010438 00001821 */   addu  $v1, $zero, $zero

/* 01103C 8001043C 3C108004 */  lui   $s0, %hi(var_8003FDB4) # $s0, 0x8004
/* 011040 80010440 8E10FDB4 */  lw    $s0, %lo(var_8003FDB4)($s0)
/* 011044 80010444 1200001D */  beqz  $s0, .L800104BC
/* 011048 80010448 00402021 */   addu  $a0, $v0, $zero

.L8001044C:
/* 01104C 8001044C 8E020004 */  lw    $v0, 4($s0)
/* 011050 80010450 10440005 */  beq   $v0, $a0, .L80010468
/* 011054 80010454 00000000 */   nop   

/* 011058 80010458 02001821 */  addu  $v1, $s0, $zero
/* 01105C 8001045C 8E100000 */  lw    $s0, ($s0)
/* 011060 80010460 1600FFFA */  bnez  $s0, .L8001044C
/* 011064 80010464 00000000 */   nop   

.L80010468:
/* 011068 80010468 52000015 */  beql  $s0, $zero, .L800104C0
/* 01106C 8001046C AE200020 */   sw    $zero, 0x20($s1)

/* 011070 80010470 9602000A */  lhu   $v0, 0xa($s0)
/* 011074 80010474 2442FFFF */  addiu $v0, $v0, -1
/* 011078 80010478 A602000A */  sh    $v0, 0xa($s0)
/* 01107C 8001047C 3042FFFF */  andi  $v0, $v0, 0xffff
/* 011080 80010480 5440000F */  bnezl $v0, .L800104C0
/* 011084 80010484 AE200020 */   sw    $zero, 0x20($s1)

/* 011088 80010488 14600005 */  bnez  $v1, .L800104A0
/* 01108C 8001048C 00000000 */   nop   

/* 011090 80010490 8E020000 */  lw    $v0, ($s0)
/* 011094 80010494 3C018004 */  lui   $at, %hi(var_8003FDB4) # $at, 0x8004
/* 011098 80010498 0800412A */  j     .L800104A8
/* 01109C 8001049C AC22FDB4 */   sw    $v0, %lo(var_8003FDB4)($at)

.L800104A0:
/* 0110A0 800104A0 8E020000 */  lw    $v0, ($s0)
/* 0110A4 800104A4 AC620000 */  sw    $v0, ($v1)

.L800104A8:
/* 0110A8 800104A8 0C000280 */  jal   aki_free
/* 0110AC 800104AC 8E040004 */   lw    $a0, 4($s0)

/* 0110B0 800104B0 02002021 */  addu  $a0, $s0, $zero
/* 0110B4 800104B4 0C000280 */  jal   aki_free
/* 0110B8 800104B8 AC800004 */   sw    $zero, 4($a0)

.L800104BC:
/* 0110BC 800104BC AE200020 */  sw    $zero, 0x20($s1)
.L800104C0:
/* 0110C0 800104C0 8E220024 */  lw    $v0, 0x24($s1)
/* 0110C4 800104C4 10400022 */  beqz  $v0, .L80010550
/* 0110C8 800104C8 00001821 */   addu  $v1, $zero, $zero

/* 0110CC 800104CC 3C108004 */  lui   $s0, %hi(var_8003FDB4) # $s0, 0x8004
/* 0110D0 800104D0 8E10FDB4 */  lw    $s0, %lo(var_8003FDB4)($s0)
/* 0110D4 800104D4 1200001D */  beqz  $s0, .L8001054C
/* 0110D8 800104D8 00402021 */   addu  $a0, $v0, $zero

.L800104DC:
/* 0110DC 800104DC 8E020004 */  lw    $v0, 4($s0)
/* 0110E0 800104E0 10440005 */  beq   $v0, $a0, .L800104F8
/* 0110E4 800104E4 00000000 */   nop   

/* 0110E8 800104E8 02001821 */  addu  $v1, $s0, $zero
/* 0110EC 800104EC 8E100000 */  lw    $s0, ($s0)
/* 0110F0 800104F0 1600FFFA */  bnez  $s0, .L800104DC
/* 0110F4 800104F4 00000000 */   nop   

.L800104F8:
/* 0110F8 800104F8 52000015 */  beql  $s0, $zero, .L80010550
/* 0110FC 800104FC AE200024 */   sw    $zero, 0x24($s1)

/* 011100 80010500 9602000A */  lhu   $v0, 0xa($s0)
/* 011104 80010504 2442FFFF */  addiu $v0, $v0, -1
/* 011108 80010508 A602000A */  sh    $v0, 0xa($s0)
/* 01110C 8001050C 3042FFFF */  andi  $v0, $v0, 0xffff
/* 011110 80010510 5440000F */  bnezl $v0, .L80010550
/* 011114 80010514 AE200024 */   sw    $zero, 0x24($s1)

/* 011118 80010518 14600005 */  bnez  $v1, .L80010530
/* 01111C 8001051C 00000000 */   nop   

/* 011120 80010520 8E020000 */  lw    $v0, ($s0)
/* 011124 80010524 3C018004 */  lui   $at, %hi(var_8003FDB4) # $at, 0x8004
/* 011128 80010528 0800414E */  j     .L80010538
/* 01112C 8001052C AC22FDB4 */   sw    $v0, %lo(var_8003FDB4)($at)

.L80010530:
/* 011130 80010530 8E020000 */  lw    $v0, ($s0)
/* 011134 80010534 AC620000 */  sw    $v0, ($v1)
.L80010538:
/* 011138 80010538 0C000280 */  jal   aki_free
/* 01113C 8001053C 8E040004 */   lw    $a0, 4($s0)

/* 011140 80010540 02002021 */  addu  $a0, $s0, $zero
/* 011144 80010544 0C000280 */  jal   aki_free
/* 011148 80010548 AC800004 */   sw    $zero, 4($a0)

.L8001054C:
/* 01114C 8001054C AE200024 */  sw    $zero, 0x24($s1)
.L80010550:
/* 011150 80010550 92220000 */  lbu   $v0, ($s1)
/* 011154 80010554 10400032 */  beqz  $v0, .L80010620
/* 011158 80010558 02208021 */   addu  $s0, $s1, $zero

/* 01115C 8001055C 8E240010 */  lw    $a0, 0x10($s1)
/* 011160 80010560 10800008 */  beqz  $a0, .L80010584
/* 011164 80010564 A2200000 */   sb    $zero, ($s1)

/* 011168 80010568 0C000280 */  jal   aki_free
/* 01116C 8001056C 00000000 */   nop   

/* 011170 80010570 AE200010 */  sw    $zero, 0x10($s1)
/* 011174 80010574 AE200014 */  sw    $zero, 0x14($s1)
/* 011178 80010578 AE200018 */  sw    $zero, 0x18($s1)
/* 01117C 8001057C 0800417C */  j     .L800105F0
/* 011180 80010580 AE20001C */   sw    $zero, 0x1c($s1)

.L80010584:
/* 011184 80010584 8E240014 */  lw    $a0, 0x14($s1)
/* 011188 80010588 10800007 */  beqz  $a0, .L800105A8
/* 01118C 8001058C 00000000 */   nop   

/* 011190 80010590 8E220030 */  lw    $v0, 0x30($s1)
/* 011194 80010594 54400004 */  bnezl $v0, .L800105A8
/* 011198 80010598 AE200014 */   sw    $zero, 0x14($s1)

/* 01119C 8001059C 0C000280 */  jal   aki_free
/* 0111A0 800105A0 00000000 */   nop   

/* 0111A4 800105A4 AE200014 */  sw    $zero, 0x14($s1)
.L800105A8:
/* 0111A8 800105A8 8E040018 */  lw    $a0, 0x18($s0)
/* 0111AC 800105AC 10800007 */  beqz  $a0, .L800105CC
/* 0111B0 800105B0 00000000 */   nop   

/* 0111B4 800105B4 8E020030 */  lw    $v0, 0x30($s0)
/* 0111B8 800105B8 54400004 */  bnezl $v0, .L800105CC
/* 0111BC 800105BC AE000018 */   sw    $zero, 0x18($s0)

/* 0111C0 800105C0 0C000280 */  jal   aki_free
/* 0111C4 800105C4 00000000 */   nop   

/* 0111C8 800105C8 AE000018 */  sw    $zero, 0x18($s0)
.L800105CC:
/* 0111CC 800105CC 8E04001C */  lw    $a0, 0x1c($s0)
/* 0111D0 800105D0 10800007 */  beqz  $a0, .L800105F0
/* 0111D4 800105D4 00000000 */   nop   

/* 0111D8 800105D8 8E020030 */  lw    $v0, 0x30($s0)
/* 0111DC 800105DC 54400004 */  bnezl $v0, .L800105F0
/* 0111E0 800105E0 AE00001C */   sw    $zero, 0x1c($s0)

/* 0111E4 800105E4 0C000280 */  jal   aki_free
/* 0111E8 800105E8 00000000 */   nop   

/* 0111EC 800105EC AE00001C */  sw    $zero, 0x1c($s0)

.L800105F0:
/* 0111F0 800105F0 8E040020 */  lw    $a0, 0x20($s0)
/* 0111F4 800105F4 10800004 */  beqz  $a0, .L80010608
/* 0111F8 800105F8 00000000 */   nop   

/* 0111FC 800105FC 0C000280 */  jal   aki_free
/* 011200 80010600 00000000 */   nop   

/* 011204 80010604 AE000020 */  sw    $zero, 0x20($s0)
.L80010608:
/* 011208 80010608 8E040024 */  lw    $a0, 0x24($s0)
/* 01120C 8001060C 50800005 */  beql  $a0, $zero, .L80010624
/* 011210 80010610 26310034 */   addiu $s1, $s1, 0x34

/* 011214 80010614 0C000280 */  jal   aki_free
/* 011218 80010618 00000000 */   nop   

/* 01121C 8001061C AE000024 */  sw    $zero, 0x24($s0)

.L80010620:
/* 011220 80010620 26310034 */  addiu $s1, $s1, 0x34

.L80010624:
/* 011224 80010624 00121040 */  sll   $v0, $s2, 1
/* 011228 80010628 00521021 */  addu  $v0, $v0, $s2
/* 01122C 8001062C 00021080 */  sll   $v0, $v0, 2
/* 011230 80010630 00521021 */  addu  $v0, $v0, $s2
/* 011234 80010634 00021080 */  sll   $v0, $v0, 2
/* 011238 80010638 00531021 */  addu  $v0, $v0, $s3
/* 01123C 8001063C 0222102B */  sltu  $v0, $s1, $v0
/* 011240 80010640 1440FF7B */  bnez  $v0, .L80010430
/* 011244 80010644 00000000 */   nop   

.L80010648:
/* 011248 80010648 0C000280 */  jal   aki_free
/* 01124C 8001064C 02802021 */   addu  $a0, $s4, $zero

/* 011250 80010650 8FBF0024 */  lw    $ra, 0x24($sp)
/* 011254 80010654 8FB40020 */  lw    $s4, 0x20($sp)
/* 011258 80010658 8FB3001C */  lw    $s3, 0x1c($sp)
/* 01125C 8001065C 8FB20018 */  lw    $s2, 0x18($sp)
/* 011260 80010660 8FB10014 */  lw    $s1, 0x14($sp)
/* 011264 80010664 8FB00010 */  lw    $s0, 0x10($sp)
/* 011268 80010668 03E00008 */  jr    $ra
/* 01126C 8001066C 27BD0028 */   addiu $sp, $sp, 0x28
