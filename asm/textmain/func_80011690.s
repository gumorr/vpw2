# related to toki1

# Params:
# $a0 - ?

glabel func_80011690
/* 012290 80011690 3C028007 */  lui   $v0, %hi(bssMain_800707C0) # $v0, 0x8007
/* 012294 80011694 8C4207C0 */  lw    $v0, %lo(bssMain_800707C0)($v0)
/* 012298 80011698 00042400 */  sll   $a0, $a0, 0x10
/* 01229C 8001169C 00042383 */  sra   $a0, $a0, 0xe
/* 0122A0 800116A0 00822021 */  addu  $a0, $a0, $v0
/* 0122A4 800116A4 03E00008 */  jr    $ra
/* 0122A8 800116A8 848295C2 */   lh    $v0, -0x6a3e($a0)