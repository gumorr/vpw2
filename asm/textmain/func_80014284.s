# Params:
# $a0 - ? address 1
# $a1 - ? address 2
# $a2 - ? value

glabel func_80014284
/* 014E84 80014284 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 014E88 80014288 AFB00010 */  sw    $s0, 0x10($sp)
/* 014E8C 8001428C 00808021 */  addu  $s0, $a0, $zero
/* 014E90 80014290 AFBF0018 */  sw    $ra, 0x18($sp)
/* 014E94 80014294 AFB10014 */  sw    $s1, 0x14($sp)
/* 014E98 80014298 8E040020 */  lw    $a0, 0x20($s0)
/* 014E9C 8001429C 94830002 */  lhu   $v1, 2($a0)
/* 014EA0 800142A0 24020100 */  li    $v0, 256
/* 014EA4 800142A4 1462001B */  bne   $v1, $v0, .L80014314
/* 014EA8 800142A8 248A0008 */   addiu $t2, $a0, 8

/* 014EAC 800142AC 241100FF */  li    $s1, 255
/* 014EB0 800142B0 8E020024 */  lw    $v0, 0x24($s0)
/* 014EB4 800142B4 00004821 */  addu  $t1, $zero, $zero
/* 014EB8 800142B8 240800FF */  li    $t0, 255
/* 014EBC 800142BC A44601FE */  sh    $a2, 0x1fe($v0)

.L800142C0:
/* 014EC0 800142C0 3C078000 */  lui   $a3, 0x8000
/* 014EC4 800142C4 00003021 */  addu  $a2, $zero, $zero
/* 014EC8 800142C8 00A02021 */  addu  $a0, $a1, $zero
/* 014ECC 800142CC 00091940 */  sll   $v1, $t1, 5

.L800142D0:
/* 014ED0 800142D0 8C820000 */  lw    $v0, ($a0)
/* 014ED4 800142D4 00471024 */  and   $v0, $v0, $a3
/* 014ED8 800142D8 54400005 */  bnezl $v0, .L800142F0
/* 014EDC 800142DC 24C60001 */   addiu $a2, $a2, 1

/* 014EE0 800142E0 00661021 */  addu  $v0, $v1, $a2
/* 014EE4 800142E4 01421021 */  addu  $v0, $t2, $v0
/* 014EE8 800142E8 A0480000 */  sb    $t0, ($v0)
/* 014EEC 800142EC 24C60001 */  addiu $a2, $a2, 1

.L800142F0:
/* 014EF0 800142F0 2CC20020 */  sltiu $v0, $a2, 0x20
/* 014EF4 800142F4 1440FFF6 */  bnez  $v0, .L800142D0
/* 014EF8 800142F8 00073842 */   srl   $a3, $a3, 1

/* 014EFC 800142FC 25290001 */  addiu $t1, $t1, 1
/* 014F00 80014300 2D220040 */  sltiu $v0, $t1, 0x40
/* 014F04 80014304 1440FFEE */  bnez  $v0, .L800142C0
/* 014F08 80014308 24A50004 */   addiu $a1, $a1, 4

/* 014F0C 8001430C 08005157 */  j     .L8001455C
/* 014F10 80014310 00000000 */   nop   

.L80014314:
/* 014F14 80014314 8E020024 */  lw    $v0, 0x24($s0)
/* 014F18 80014318 A446001E */  sh    $a2, 0x1e($v0)
/* 014F1C 8001431C 90830000 */  lbu   $v1, ($a0)
/* 014F20 80014320 90820001 */  lbu   $v0, 1($a0)
/* 014F24 80014324 00620018 */  mult  $v1, $v0
/* 014F28 80014328 00001012 */  mflo  $v0
/* 014F2C 8001432C 28420801 */  slti  $v0, $v0, 0x801
/* 014F30 80014330 00000000 */  nop   
/* 014F34 80014334 1440006B */  bnez  $v0, .L800144E4
/* 014F38 80014338 2411000F */   li    $s1, 15

/* 014F3C 8001433C 2C620041 */  sltiu $v0, $v1, 0x41
/* 014F40 80014340 14400039 */  bnez  $v0, .L80014428
/* 014F44 80014344 00004821 */   addu  $t1, $zero, $zero

/* 014F48 80014348 240E0003 */  li    $t6, 3

.L8001434C:
/* 014F4C 8001434C 00004021 */  addu  $t0, $zero, $zero
/* 014F50 80014350 0009C840 */  sll   $t9, $t1, 1
/* 014F54 80014354 0009C080 */  sll   $t8, $t1, 2
/* 014F58 80014358 01C07821 */  addu  $t7, $t6, $zero
/* 014F5C 8001435C 3C078000 */  lui   $a3, 0x8000

.L80014360:
/* 014F60 80014360 00003021 */  addu  $a2, $zero, $zero
/* 014F64 80014364 03281021 */  addu  $v0, $t9, $t0
/* 014F68 80014368 00021080 */  sll   $v0, $v0, 2
/* 014F6C 8001436C 00456821 */  addu  $t5, $v0, $a1
/* 014F70 80014370 03081021 */  addu  $v0, $t8, $t0
/* 014F74 80014374 00026100 */  sll   $t4, $v0, 4
/* 014F78 80014378 01E81023 */  subu  $v0, $t7, $t0
/* 014F7C 8001437C 00021100 */  sll   $v0, $v0, 4
/* 014F80 80014380 244B000F */  addiu $t3, $v0, 0xf

.L80014384:
/* 014F84 80014384 8DA20000 */  lw    $v0, ($t5)
/* 014F88 80014388 00471024 */  and   $v0, $v0, $a3
/* 014F8C 8001438C 54400019 */  bnezl $v0, .L800143F4
/* 014F90 80014390 24C60001 */   addiu $a2, $a2, 1

/* 014F94 80014394 30C20001 */  andi  $v0, $a2, 1
/* 014F98 80014398 1440000B */  bnez  $v0, .L800143C8
/* 014F9C 8001439C 00062042 */   srl   $a0, $a2, 1

/* 014FA0 800143A0 01841821 */  addu  $v1, $t4, $a0
/* 014FA4 800143A4 01431821 */  addu  $v1, $t2, $v1
/* 014FA8 800143A8 90620000 */  lbu   $v0, ($v1)
/* 014FAC 800143AC 01642023 */  subu  $a0, $t3, $a0
/* 014FB0 800143B0 01442021 */  addu  $a0, $t2, $a0
/* 014FB4 800143B4 344200F0 */  ori   $v0, $v0, 0xf0
/* 014FB8 800143B8 A0620000 */  sb    $v0, ($v1)
/* 014FBC 800143BC 90820000 */  lbu   $v0, ($a0)
/* 014FC0 800143C0 080050FB */  j     .L800143EC
/* 014FC4 800143C4 3442000F */   ori   $v0, $v0, 0xf

.L800143C8:
/* 014FC8 800143C8 01841821 */  addu  $v1, $t4, $a0
/* 014FCC 800143CC 01431821 */  addu  $v1, $t2, $v1
/* 014FD0 800143D0 90620000 */  lbu   $v0, ($v1)
/* 014FD4 800143D4 01642023 */  subu  $a0, $t3, $a0
/* 014FD8 800143D8 01442021 */  addu  $a0, $t2, $a0
/* 014FDC 800143DC 3442000F */  ori   $v0, $v0, 0xf
/* 014FE0 800143E0 A0620000 */  sb    $v0, ($v1)
/* 014FE4 800143E4 90820000 */  lbu   $v0, ($a0)
/* 014FE8 800143E8 344200F0 */  ori   $v0, $v0, 0xf0

.L800143EC:
/* 014FEC 800143EC A0820000 */  sb    $v0, ($a0)
/* 014FF0 800143F0 24C60001 */  addiu $a2, $a2, 1

.L800143F4:
/* 014FF4 800143F4 2CC20020 */  sltiu $v0, $a2, 0x20
/* 014FF8 800143F8 1440FFE2 */  bnez  $v0, .L80014384
/* 014FFC 800143FC 00073842 */   srl   $a3, $a3, 1

/* 015000 80014400 25080001 */  addiu $t0, $t0, 1
/* 015004 80014404 2D020002 */  sltiu $v0, $t0, 2
/* 015008 80014408 5440FFD5 */  bnezl $v0, .L80014360
/* 01500C 8001440C 3C078000 */   lui   $a3, 0x8000

/* 015010 80014410 25290001 */  addiu $t1, $t1, 1
/* 015014 80014414 2D220020 */  sltiu $v0, $t1, 0x20
/* 015018 80014418 1440FFCC */  bnez  $v0, .L8001434C
/* 01501C 8001441C 25CE0004 */   addiu $t6, $t6, 4

/* 015020 80014420 08005157 */  j     .L8001455C
/* 015024 80014424 00000000 */   nop   

.L80014428:
/* 015028 80014428 240D007F */  li    $t5, 127

.L8001442C:
/* 01502C 8001442C 3C078000 */  lui   $a3, 0x8000
/* 015030 80014430 00003021 */  addu  $a2, $zero, $zero
/* 015034 80014434 00A06021 */  addu  $t4, $a1, $zero
/* 015038 80014438 39220001 */  xori  $v0, $t1, 1
/* 01503C 8001443C 00021100 */  sll   $v0, $v0, 4
/* 015040 80014440 244B000F */  addiu $t3, $v0, 0xf
/* 015044 80014444 01A91023 */  subu  $v0, $t5, $t1
/* 015048 80014448 00021100 */  sll   $v0, $v0, 4
/* 01504C 8001444C 2448000F */  addiu $t0, $v0, 0xf

.L80014450:
/* 015050 80014450 8D820000 */  lw    $v0, ($t4)
/* 015054 80014454 00471024 */  and   $v0, $v0, $a3
/* 015058 80014458 54400019 */  bnezl $v0, .L800144C0
/* 01505C 8001445C 24C60001 */   addiu $a2, $a2, 1

/* 015060 80014460 30C20001 */  andi  $v0, $a2, 1
/* 015064 80014464 1440000B */  bnez  $v0, .L80014494
/* 015068 80014468 00062042 */   srl   $a0, $a2, 1

/* 01506C 8001446C 01641823 */  subu  $v1, $t3, $a0
/* 015070 80014470 01431821 */  addu  $v1, $t2, $v1
/* 015074 80014474 90620000 */  lbu   $v0, ($v1)
/* 015078 80014478 01042023 */  subu  $a0, $t0, $a0
/* 01507C 8001447C 01442021 */  addu  $a0, $t2, $a0
/* 015080 80014480 344200F0 */  ori   $v0, $v0, 0xf0
/* 015084 80014484 A0620000 */  sb    $v0, ($v1)
/* 015088 80014488 90820000 */  lbu   $v0, ($a0)
/* 01508C 8001448C 0800512E */  j     .L800144B8
/* 015090 80014490 344200F0 */   ori   $v0, $v0, 0xf0

.L80014494:
/* 015094 80014494 01641823 */  subu  $v1, $t3, $a0
/* 015098 80014498 01431821 */  addu  $v1, $t2, $v1
/* 01509C 8001449C 90620000 */  lbu   $v0, ($v1)
/* 0150A0 800144A0 01042023 */  subu  $a0, $t0, $a0
/* 0150A4 800144A4 01442021 */  addu  $a0, $t2, $a0
/* 0150A8 800144A8 3442000F */  ori   $v0, $v0, 0xf
/* 0150AC 800144AC A0620000 */  sb    $v0, ($v1)
/* 0150B0 800144B0 90820000 */  lbu   $v0, ($a0)
/* 0150B4 800144B4 3442000F */  ori   $v0, $v0, 0xf

.L800144B8:
/* 0150B8 800144B8 A0820000 */  sb    $v0, ($a0)
/* 0150BC 800144BC 24C60001 */  addiu $a2, $a2, 1

.L800144C0:
/* 0150C0 800144C0 2CC20020 */  sltiu $v0, $a2, 0x20
/* 0150C4 800144C4 1440FFE2 */  bnez  $v0, .L80014450
/* 0150C8 800144C8 00073842 */   srl   $a3, $a3, 1

/* 0150CC 800144CC 25290001 */  addiu $t1, $t1, 1
/* 0150D0 800144D0 2D220040 */  sltiu $v0, $t1, 0x40
/* 0150D4 800144D4 1440FFD5 */  bnez  $v0, .L8001442C
/* 0150D8 800144D8 24A50004 */   addiu $a1, $a1, 4

/* 0150DC 800144DC 08005157 */  j     .L8001455C
/* 0150E0 800144E0 00000000 */   nop   

.L800144E4:
/* 0150E4 800144E4 00004821 */  addu  $t1, $zero, $zero

.L800144E8:
/* 0150E8 800144E8 3C078000 */  lui   $a3, 0x8000
/* 0150EC 800144EC 00003021 */  addu  $a2, $zero, $zero
/* 0150F0 800144F0 00A04021 */  addu  $t0, $a1, $zero
/* 0150F4 800144F4 00092100 */  sll   $a0, $t1, 4

.L800144F8:
/* 0150F8 800144F8 8D020000 */  lw    $v0, ($t0)
/* 0150FC 800144FC 00471024 */  and   $v0, $v0, $a3
/* 015100 80014500 5440000F */  bnezl $v0, .L80014540
/* 015104 80014504 24C60001 */   addiu $a2, $a2, 1

/* 015108 80014508 30C20001 */  andi  $v0, $a2, 1
/* 01510C 8001450C 14400006 */  bnez  $v0, .L80014528
/* 015110 80014510 00061842 */   srl   $v1, $a2, 1

/* 015114 80014514 00831821 */  addu  $v1, $a0, $v1
/* 015118 80014518 01431821 */  addu  $v1, $t2, $v1
/* 01511C 8001451C 90620000 */  lbu   $v0, ($v1)
/* 015120 80014520 0800514E */  j     .L80014538
/* 015124 80014524 344200F0 */   ori   $v0, $v0, 0xf0

.L80014528:
/* 015128 80014528 00831821 */  addu  $v1, $a0, $v1
/* 01512C 8001452C 01431821 */  addu  $v1, $t2, $v1
/* 015130 80014530 90620000 */  lbu   $v0, ($v1)
/* 015134 80014534 3442000F */  ori   $v0, $v0, 0xf

.L80014538:
/* 015138 80014538 A0620000 */  sb    $v0, ($v1)
/* 01513C 8001453C 24C60001 */  addiu $a2, $a2, 1

.L80014540:
/* 015140 80014540 2CC20020 */  sltiu $v0, $a2, 0x20
/* 015144 80014544 1440FFEC */  bnez  $v0, .L800144F8
/* 015148 80014548 00073842 */   srl   $a3, $a3, 1

/* 01514C 8001454C 25290001 */  addiu $t1, $t1, 1
/* 015150 80014550 2D220040 */  sltiu $v0, $t1, 0x40
/* 015154 80014554 1440FFE4 */  bnez  $v0, .L800144E8
/* 015158 80014558 24A50004 */   addiu $a1, $a1, 4

.L8001455C:
/* 01515C 8001455C 3C038004 */  lui   $v1, %hi(var_8003FDB0) # $v1, 0x8004
/* 015160 80014560 9463FDB0 */  lhu   $v1, %lo(var_8003FDB0)($v1)
/* 015164 80014564 24020001 */  li    $v0, 1
/* 015168 80014568 14620005 */  bne   $v1, $v0, .L80014580
/* 01516C 8001456C 00112040 */   sll   $a0, $s1, 1

/* 015170 80014570 8E020024 */  lw    $v0, 0x24($s0)
/* 015174 80014574 24050001 */  li    $a1, 1
/* 015178 80014578 0C0030A5 */  jal   func_8000C294
/* 01517C 8001457C 00442021 */   addu  $a0, $v0, $a0

.L80014580:
/* 015180 80014580 8FBF0018 */  lw    $ra, 0x18($sp)
/* 015184 80014584 8FB10014 */  lw    $s1, 0x14($sp)
/* 015188 80014588 8FB00010 */  lw    $s0, 0x10($sp)
/* 01518C 8001458C 03E00008 */  jr    $ra
/* 015190 80014590 27BD0020 */   addiu $sp, $sp, 0x20