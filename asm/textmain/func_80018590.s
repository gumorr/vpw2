glabel func_80018590
/* 019190 80018590 3C028004 */  lui   $v0, %hi(D_80040888) # $v0, 0x8004
/* 019194 80018594 8C420888 */  lw    $v0, %lo(D_80040888)($v0)
/* 019198 80018598 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01919C 8001859C AFBF0028 */  sw    $ra, 0x28($sp)
/* 0191A0 800185A0 AFB50024 */  sw    $s5, 0x24($sp)
/* 0191A4 800185A4 AFB40020 */  sw    $s4, 0x20($sp)
/* 0191A8 800185A8 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0191AC 800185AC AFB20018 */  sw    $s2, 0x18($sp)
/* 0191B0 800185B0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0191B4 800185B4 1040003A */  beqz  $v0, .L800186A0
/* 0191B8 800185B8 AFB00010 */   sw    $s0, 0x10($sp)

/* 0191BC 800185BC 00009821 */  addu  $s3, $zero, $zero
/* 0191C0 800185C0 00041400 */  sll   $v0, $a0, 0x10
/* 0191C4 800185C4 0002AC03 */  sra   $s5, $v0, 0x10
/* 0191C8 800185C8 00152080 */  sll   $a0, $s5, 2
/* 0191CC 800185CC 00951821 */  addu  $v1, $a0, $s5
/* 0191D0 800185D0 00031180 */  sll   $v0, $v1, 6
/* 0191D4 800185D4 00621021 */  addu  $v0, $v1, $v0
/* 0191D8 800185D8 0002A080 */  sll   $s4, $v0, 2
/* 0191DC 800185DC 3C028008 */  lui   $v0, %hi(bssMain_8007FA80) # $v0, 0x8008
/* 0191E0 800185E0 2442FA80 */  addiu $v0, %lo(bssMain_8007FA80) # addiu $v0, $v0, -0x580
/* 0191E4 800185E4 00829021 */  addu  $s2, $a0, $v0
/* 0191E8 800185E8 3C118004 */  lui   $s1, %hi(D_800406EC) # $s1, 0x8004
/* 0191EC 800185EC 263106EC */  addiu $s1, %lo(D_800406EC) # addiu $s1, $s1, 0x6ec
/* 0191F0 800185F0 00038100 */  sll   $s0, $v1, 4

.L800185F4:
/* 0191F4 800185F4 82230000 */  lb    $v1, ($s1)
/* 0191F8 800185F8 3C058008 */  lui   $a1, %hi(bssMain_8007FCDC)
/* 0191FC 800185FC 00B02821 */  addu  $a1, $a1, $s0
/* 019200 80018600 8CA5FCDC */  lw    $a1, %lo(bssMain_8007FCDC)($a1)
/* 019204 80018604 3C068008 */  lui   $a2, %hi(bssMain_8007FCD4)
/* 019208 80018608 00D03021 */  addu  $a2, $a2, $s0
/* 01920C 8001860C 8CC6FCD4 */  lw    $a2, %lo(bssMain_8007FCD4)($a2)
/* 019210 80018610 00031040 */  sll   $v0, $v1, 1
/* 019214 80018614 00431021 */  addu  $v0, $v0, $v1
/* 019218 80018618 00021080 */  sll   $v0, $v0, 2
/* 01921C 8001861C 00431021 */  addu  $v0, $v0, $v1
/* 019220 80018620 00021080 */  sll   $v0, $v0, 2
/* 019224 80018624 00541021 */  addu  $v0, $v0, $s4
/* 019228 80018628 3C04800A */  lui   $a0, %hi(bssMain_800A0760)
/* 01922C 8001862C 00822021 */  addu  $a0, $a0, $v0
/* 019230 80018630 8C840760 */  lw    $a0, %lo(bssMain_800A0760)($a0)
/* 019234 80018634 0C00C888 */  jal   bcopy
/* 019238 80018638 26730001 */   addiu $s3, $s3, 1

/* 01923C 8001863C 82230000 */  lb    $v1, ($s1)
/* 019240 80018640 3C058008 */  lui   $a1, %hi(bssMain_8007FCE0)
/* 019244 80018644 00B02821 */  addu  $a1, $a1, $s0
/* 019248 80018648 8CA5FCE0 */  lw    $a1, %lo(bssMain_8007FCE0)($a1)
/* 01924C 8001864C 24060200 */  li    $a2, 512
/* 019250 80018650 00031040 */  sll   $v0, $v1, 1
/* 019254 80018654 00431021 */  addu  $v0, $v0, $v1
/* 019258 80018658 00021080 */  sll   $v0, $v0, 2
/* 01925C 8001865C 00431021 */  addu  $v0, $v0, $v1
/* 019260 80018660 00021080 */  sll   $v0, $v0, 2
/* 019264 80018664 00541021 */  addu  $v0, $v0, $s4
/* 019268 80018668 3C04800A */  lui   $a0, %hi(bssMain_800A0764)
/* 01926C 8001866C 00822021 */  addu  $a0, $a0, $v0
/* 019270 80018670 8C840764 */  lw    $a0, %lo(bssMain_800A0764)($a0)
/* 019274 80018674 26310001 */  addiu $s1, $s1, 1
/* 019278 80018678 0C00C888 */  jal   bcopy
/* 01927C 8001867C 26100014 */   addiu $s0, $s0, 0x14

/* 019280 80018680 2402FFFF */  li    $v0, -1
/* 019284 80018684 3C018008 */  lui   $at, %hi(bssMain_8007FA78)
/* 019288 80018688 00350821 */  addu  $at, $at, $s5
/* 01928C 8001868C A020FA78 */  sb    $zero, %lo(bssMain_8007FA78)($at)
/* 019290 80018690 A2420000 */  sb    $v0, ($s2)
/* 019294 80018694 2E620004 */  sltiu $v0, $s3, 4
/* 019298 80018698 1440FFD6 */  bnez  $v0, .L800185F4
/* 01929C 8001869C 26520001 */   addiu $s2, $s2, 1

.L800186A0:
/* 0192A0 800186A0 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0192A4 800186A4 8FB50024 */  lw    $s5, 0x24($sp)
/* 0192A8 800186A8 8FB40020 */  lw    $s4, 0x20($sp)
/* 0192AC 800186AC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0192B0 800186B0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0192B4 800186B4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0192B8 800186B8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0192BC 800186BC 03E00008 */  jr    $ra
/* 0192C0 800186C0 27BD0030 */   addiu $sp, $sp, 0x30

/*----------------------------------------------------------------------------*/
/* 0192C4 800186C4 00000000 */  nop   
/* 0192C8 800186C8 00000000 */  nop   
/* 0192CC 800186CC 00000000 */  nop   