glabel func_80015D3C
/* 01693C 80015D3C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 016940 80015D40 AFBF0010 */  sw    $ra, 0x10($sp)
/* 016944 80015D44 00041400 */  sll   $v0, $a0, 0x10
/* 016948 80015D48 00022C03 */  sra   $a1, $v0, 0x10
/* 01694C 80015D4C 18A00018 */  blez  $a1, .L80015DB0
/* 016950 80015D50 00801821 */   addu  $v1, $a0, $zero

/* 016954 80015D54 3062FFFF */  andi  $v0, $v1, 0xffff
/* 016958 80015D58 2C42004D */  sltiu $v0, $v0, 0x4d
/* 01695C 80015D5C 10400005 */  beqz  $v0, .L80015D74
/* 016960 80015D60 00051040 */   sll   $v0, $a1, 1

/* 016964 80015D64 3C048004 */  lui   $a0, %hi(tbl_80040438)
/* 016968 80015D68 00822021 */  addu  $a0, $a0, $v0
/* 01696C 80015D6C 08005766 */  j     .L80015D98
/* 016970 80015D70 84840438 */   lh    $a0, %lo(tbl_80040438)($a0)

.L80015D74:
/* 016974 80015D74 2484FFB3 */  addiu $a0, $a0, -0x4d
/* 016978 80015D78 3082FFFF */  andi  $v0, $a0, 0xffff
/* 01697C 80015D7C 2C42002F */  sltiu $v0, $v0, 0x2f
/* 016980 80015D80 1040000B */  beqz  $v0, .L80015DB0
/* 016984 80015D84 00041400 */   sll   $v0, $a0, 0x10

/* 016988 80015D88 000213C3 */  sra   $v0, $v0, 0xf
/* 01698C 80015D8C 3C048004 */  lui   $a0, %hi(tbl_800404D4)
/* 016990 80015D90 00822021 */  addu  $a0, $a0, $v0
/* 016994 80015D94 848404D4 */  lh    $a0, %lo(tbl_800404D4)($a0)

.L80015D98:
/* 016998 80015D98 04800006 */  bltz  $a0, .L80015DB4
/* 01699C 80015D9C 00001021 */   addu  $v0, $zero, $zero

/* 0169A0 80015DA0 0C000E51 */  jal   func_80003944
/* 0169A4 80015DA4 00000000 */   nop   

/* 0169A8 80015DA8 0800576D */  j     .L80015DB4
/* 0169AC 80015DAC 24020001 */   li    $v0, 1

.L80015DB0:
/* 0169B0 80015DB0 00001021 */  addu  $v0, $zero, $zero

.L80015DB4:
/* 0169B4 80015DB4 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0169B8 80015DB8 03E00008 */  jr    $ra
/* 0169BC 80015DBC 27BD0018 */   addiu $sp, $sp, 0x18
