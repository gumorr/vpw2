# Params:
# $a0 - new value for monochrome mode setting

glabel func_80015D14
/* 016914 80015D14 00042400 */  sll   $a0, $a0, 0x10
/* 016918 80015D18 14800004 */  bnez  $a0, .L80015D2C
/* 01691C 80015D1C 24020001 */   li    $v0, 1

# enable monochrome mode
/* 016920 80015D20 3C018004 */  lui   $at, %hi(var_8003FDB0) # $at, 0x8004
/* 016924 80015D24 0800574D */  j     .L80015D34
/* 016928 80015D28 A422FDB0 */   sh    $v0, %lo(var_8003FDB0)($at)

.L80015D2C:
# disable monochrome mode
/* 01692C 80015D2C 3C018004 */  lui   $at, %hi(var_8003FDB0) # $at, 0x8004
/* 016930 80015D30 A420FDB0 */  sh    $zero, %lo(var_8003FDB0)($at)

.L80015D34:
/* 016934 80015D34 03E00008 */  jr    $ra
/* 016938 80015D38 00000000 */   nop   
