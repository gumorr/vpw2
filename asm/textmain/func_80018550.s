glabel func_80018550
/* 019150 80018550 00042400 */  sll   $a0, $a0, 0x10
/* 019154 80018554 000423C3 */  sra   $a0, $a0, 0xf
/* 019158 80018558 3C018008 */  lui   $at, %hi(bssMain_8007F430)
/* 01915C 8001855C 00240821 */  addu  $at, $at, $a0
/* 019160 80018560 03E00008 */  jr    $ra
/* 019164 80018564 A425F430 */   sh    $a1, %lo(bssMain_8007F430)($at)