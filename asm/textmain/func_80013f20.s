glabel func_80013F20
/* 014B20 80013F20 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 014B24 80013F24 00042400 */  sll   $a0, $a0, 0x10
/* 014B28 80013F28 00042403 */  sra   $a0, $a0, 0x10
/* 014B2C 80013F2C 3C028007 */  lui   $v0, %hi(bssMain_800707C8) # $v0, 0x8007
/* 014B30 80013F30 244207C8 */  addiu $v0, %lo(bssMain_800707C8) # addiu $v0, $v0, 0x7c8
/* 014B34 80013F34 000418C0 */  sll   $v1, $a0, 3
/* 014B38 80013F38 00621021 */  addu  $v0, $v1, $v0
/* 014B3C 80013F3C 00052C00 */  sll   $a1, $a1, 0x10
/* 014B40 80013F40 00052C03 */  sra   $a1, $a1, 0x10
/* 014B44 80013F44 AFB00010 */  sw    $s0, 0x10($sp)
/* 014B48 80013F48 00458021 */  addu  $s0, $v0, $a1
/* 014B4C 80013F4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 014B50 80013F50 82070000 */  lb    $a3, ($s0)
/* 014B54 80013F54 04E0000A */  bltz  $a3, .L80013F80
/* 014B58 80013F58 00000000 */   nop   

/* 014B5C 80013F5C 3C028007 */  lui   $v0, %hi(bssMain_800707E8) # $v0, 0x8007
/* 014B60 80013F60 244207E8 */  addiu $v0, %lo(bssMain_800707E8) # addiu $v0, $v0, 0x7e8
/* 014B64 80013F64 00621021 */  addu  $v0, $v1, $v0
/* 014B68 80013F68 00451021 */  addu  $v0, $v0, $a1
/* 014B6C 80013F6C 80460000 */  lb    $a2, ($v0)
/* 014B70 80013F70 0C007D3F */  jal   func_8001F4FC
/* 014B74 80013F74 00002821 */   addu  $a1, $zero, $zero

/* 014B78 80013F78 2402FFFF */  li    $v0, -1
/* 014B7C 80013F7C A2020000 */  sb    $v0, ($s0)

.L80013F80:
/* 014B80 80013F80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 014B84 80013F84 8FB00010 */  lw    $s0, 0x10($sp)
/* 014B88 80013F88 03E00008 */  jr    $ra
/* 014B8C 80013F8C 27BD0018 */   addiu $sp, $sp, 0x18