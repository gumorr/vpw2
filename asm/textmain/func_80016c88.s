glabel func_80016C88
/* 017888 80016C88 3C038004 */  lui   $v1, %hi(D_80040882) # $v1, 0x8004
/* 01788C 80016C8C 84630882 */  lh    $v1, %lo(D_80040882)($v1)
/* 017890 80016C90 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 017894 80016C94 AFB00018 */  sw    $s0, 0x18($sp)
/* 017898 80016C98 00808021 */  addu  $s0, $a0, $zero
/* 01789C 80016C9C 24020001 */  li    $v0, 1
/* 0178A0 80016CA0 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0178A4 80016CA4 14620040 */  bne   $v1, $v0, .L80016DA8
/* 0178A8 80016CA8 AFB1001C */   sw    $s1, 0x1c($sp)

/* 0178AC 80016CAC 3C038004 */  lui   $v1, %hi(D_800408A0) # $v1, 0x8004
/* 0178B0 80016CB0 846308A0 */  lh    $v1, %lo(D_800408A0)($v1)
/* 0178B4 80016CB4 2402FFFF */  li    $v0, -1
/* 0178B8 80016CB8 1062000C */  beq   $v1, $v0, .L80016CEC
/* 0178BC 80016CBC 00101400 */   sll   $v0, $s0, 0x10

/* 0178C0 80016CC0 3C048004 */  lui   $a0, %hi(D_8004089C) # $a0, 0x8004
/* 0178C4 80016CC4 0C008FD7 */  jal   func_80023F5C
/* 0178C8 80016CC8 8C84089C */   lw    $a0, %lo(D_8004089C)($a0)

/* 0178CC 80016CCC 14400007 */  bnez  $v0, .L80016CEC
/* 0178D0 80016CD0 00101400 */   sll   $v0, $s0, 0x10

/* 0178D4 80016CD4 2402FFFF */  li    $v0, -1
/* 0178D8 80016CD8 3C018004 */  lui   $at, %hi(D_800408A0) # $at, 0x8004
/* 0178DC 80016CDC A42208A0 */  sh    $v0, %lo(D_800408A0)($at)
/* 0178E0 80016CE0 3C018004 */  lui   $at, %hi(D_8004089C) # $at, 0x8004
/* 0178E4 80016CE4 AC20089C */  sw    $zero, %lo(D_8004089C)($at)
/* 0178E8 80016CE8 00101400 */  sll   $v0, $s0, 0x10

.L80016CEC:
/* 0178EC 80016CEC 00021403 */  sra   $v0, $v0, 0x10
/* 0178F0 80016CF0 2403FFFF */  li    $v1, -1
/* 0178F4 80016CF4 1043002C */  beq   $v0, $v1, .L80016DA8
/* 0178F8 80016CF8 32024000 */   andi  $v0, $s0, 0x4000

/* 0178FC 80016CFC 10400003 */  beqz  $v0, .L80016D0C
/* 017900 80016D00 32036000 */   andi  $v1, $s0, 0x6000

/* 017904 80016D04 08005B44 */  j     .L80016D10
/* 017908 80016D08 2410FFFF */   li    $s0, -1

.L80016D0C:
/* 01790C 80016D0C 32109FFF */  andi  $s0, $s0, 0x9fff

.L80016D10:
/* 017910 80016D10 1060000F */  beqz  $v1, .L80016D50
/* 017914 80016D14 00101400 */   sll   $v0, $s0, 0x10

/* 017918 80016D18 3C038004 */  lui   $v1, %hi(D_800408A0) # $v1, 0x8004
/* 01791C 80016D1C 846308A0 */  lh    $v1, %lo(D_800408A0)($v1)
/* 017920 80016D20 00021403 */  sra   $v0, $v0, 0x10
/* 017924 80016D24 1043000A */  beq   $v0, $v1, .L80016D50
/* 017928 80016D28 00000000 */   nop   

/* 01792C 80016D2C 3C048004 */  lui   $a0, %hi(D_8004089C) # $a0, 0x8004
/* 017930 80016D30 8C84089C */  lw    $a0, %lo(D_8004089C)($a0)
/* 017934 80016D34 0C008FAA */  jal   func_80023EA8
/* 017938 80016D38 00002821 */   addu  $a1, $zero, $zero

/* 01793C 80016D3C 2402FFFF */  li    $v0, -1
/* 017940 80016D40 3C018004 */  lui   $at, %hi(D_800408A0) # $at, 0x8004
/* 017944 80016D44 A42208A0 */  sh    $v0, %lo(D_800408A0)($at)
/* 017948 80016D48 3C018004 */  lui   $at, %hi(D_8004089C) # $at, 0x8004
/* 01794C 80016D4C AC20089C */  sw    $zero, %lo(D_8004089C)($at)

.L80016D50:
/* 017950 80016D50 3C118004 */  lui   $s1, %hi(D_800408A0) # $s1, 0x8004
/* 017954 80016D54 863108A0 */  lh    $s1, %lo(D_800408A0)($s1)
/* 017958 80016D58 2402FFFF */  li    $v0, -1
/* 01795C 80016D5C 16220012 */  bne   $s1, $v0, .L80016DA8
/* 017960 80016D60 3202FFFF */   andi  $v0, $s0, 0xffff

/* 017964 80016D64 2C420024 */  sltiu $v0, $v0, 0x24
/* 017968 80016D68 1040000F */  beqz  $v0, .L80016DA8
/* 01796C 80016D6C 00000000 */   nop   

/* 017970 80016D70 3C048008 */  lui   $a0, %hi(bssMain_8007FA3C) # $a0, 0x8008
/* 017974 80016D74 8C84FA3C */  lw    $a0, %lo(bssMain_8007FA3C)($a0)
/* 017978 80016D78 3C018004 */  lui   $at, %hi(D_800408A0) # $at, 0x8004
/* 01797C 80016D7C 0C00911A */  jal   func_80024468
/* 017980 80016D80 A43008A0 */   sh    $s0, %lo(D_800408A0)($at)

/* 017984 80016D84 00102400 */  sll   $a0, $s0, 0x10
/* 017988 80016D88 00042403 */  sra   $a0, $a0, 0x10
/* 01798C 80016D8C 240500FF */  li    $a1, 255
/* 017990 80016D90 24060080 */  li    $a2, 128
/* 017994 80016D94 00003821 */  addu  $a3, $zero, $zero
/* 017998 80016D98 0C008F11 */  jal   func_80023C44
/* 01799C 80016D9C AFB10010 */   sw    $s1, 0x10($sp)

/* 0179A0 80016DA0 3C018004 */  lui   $at, %hi(D_8004089C) # $at, 0x8004
/* 0179A4 80016DA4 AC22089C */  sw    $v0, %lo(D_8004089C)($at)

.L80016DA8:
/* 0179A8 80016DA8 3C028004 */  lui   $v0, %hi(D_800408A0) # $v0, 0x8004
/* 0179AC 80016DAC 844208A0 */  lh    $v0, %lo(D_800408A0)($v0)
/* 0179B0 80016DB0 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0179B4 80016DB4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0179B8 80016DB8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0179BC 80016DBC 03E00008 */  jr    $ra
/* 0179C0 80016DC0 27BD0028 */   addiu $sp, $sp, 0x28