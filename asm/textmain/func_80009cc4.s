# Params:
# $a0 -

glabel func_80009CC4
/* 00A8C4 80009CC4 00801821 */  addu  $v1, $a0, $zero
/* 00A8C8 80009CC8 286200FB */  slti  $v0, $v1, 0xfb
/* 00A8CC 80009CCC 5440000E */  bnezl $v0, .L80009D08
/* 00A8D0 80009CD0 286200D3 */   slti  $v0, $v1, 0xd3

/* 00A8D4 80009CD4 3C045555 */  lui   $a0, (0x55555556 >> 16) # lui $a0, 0x5555
/* 00A8D8 80009CD8 34845556 */  ori   $a0, (0x55555556 & 0xFFFF) # ori $a0, $a0, 0x5556
/* 00A8DC 80009CDC 2463FF05 */  addiu $v1, $v1, -0xfb
/* 00A8E0 80009CE0 00031080 */  sll   $v0, $v1, 2
/* 00A8E4 80009CE4 00431021 */  addu  $v0, $v0, $v1
/* 00A8E8 80009CE8 000210C0 */  sll   $v0, $v0, 3
/* 00A8EC 80009CEC 00440018 */  mult  $v0, $a0
/* 00A8F0 80009CF0 000217C3 */  sra   $v0, $v0, 0x1f
/* 00A8F4 80009CF4 00002810 */  mfhi  $a1
/* 00A8F8 80009CF8 00A21023 */  subu  $v0, $a1, $v0
/* 00A8FC 80009CFC 00000000 */  nop   
/* 00A900 80009D00 08002748 */  j     .L80009D20
/* 00A904 80009D04 244300AA */   addiu $v1, $v0, 0xaa

.L80009D08:
/* 00A908 80009D08 54400003 */  bnezl $v0, .L80009D18
/* 00A90C 80009D0C 286200AA */   slti  $v0, $v1, 0xaa

/* 00A910 80009D10 08002748 */  j     .L80009D20
/* 00A914 80009D14 240300D2 */   li    $v1, 210

.L80009D18:
/* 00A918 80009D18 54400001 */  bnezl $v0, .L80009D20
/* 00A91C 80009D1C 240300AA */   li    $v1, 170

.L80009D20:
/* 00A920 80009D20 3C046666 */  lui   $a0, (0x66666667 >> 16) # lui $a0, 0x6666
/* 00A924 80009D24 34846667 */  ori   $a0, (0x66666667 & 0xFFFF) # ori $a0, $a0, 0x6667
/* 00A928 80009D28 2463FF56 */  addiu $v1, $v1, -0xaa
/* 00A92C 80009D2C 00031200 */  sll   $v0, $v1, 8
/* 00A930 80009D30 00431023 */  subu  $v0, $v0, $v1
/* 00A934 80009D34 00440018 */  mult  $v0, $a0
/* 00A938 80009D38 000217C3 */  sra   $v0, $v0, 0x1f
/* 00A93C 80009D3C 00002810 */  mfhi  $a1
/* 00A940 80009D40 00051903 */  sra   $v1, $a1, 4
/* 00A944 80009D44 00000000 */  nop   
/* 00A948 80009D48 03E00008 */  jr    $ra
/* 00A94C 80009D4C 00621023 */   subu  $v0, $v1, $v0