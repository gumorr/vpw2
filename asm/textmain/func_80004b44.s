glabel func_80004B44
/* 005744 80004B44 00042400 */  sll   $a0, $a0, 0x10
/* 005748 80004B48 00042403 */  sra   $a0, $a0, 0x10
/* 00574C 80004B4C 3C028005 */  lui   $v0, %hi(bssMain_800571DC)
/* 005750 80004B50 00441021 */  addu  $v0, $v0, $a0
/* 005754 80004B54 804271DC */  lb    $v0, %lo(bssMain_800571DC)($v0)
/* 005758 80004B58 14400004 */  bnez  $v0, .L80004B6C
/* 00575C 80004B5C 24020001 */   li    $v0, 1

/* 005760 80004B60 3C018005 */  lui   $at, %hi(bssMain_800571DC)
/* 005764 80004B64 00240821 */  addu  $at, $at, $a0
/* 005768 80004B68 A02271DC */  sb    $v0, %lo(bssMain_800571DC)($at)

.L80004B6C:
/* 00576C 80004B6C 03E00008 */  jr    $ra
/* 005770 80004B70 00000000 */   nop   
