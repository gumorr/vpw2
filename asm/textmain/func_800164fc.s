# related to playing music

# Params:
# $a0 - song number?
# $a1 - ?
# $a2 - ?

glabel func_800164FC
/* 0170FC 800164FC 3C028004 */  lui   $v0, %hi(D_80040892) # $v0, 0x8004
/* 017100 80016500 84420892 */  lh    $v0, %lo(D_80040892)($v0)
/* 017104 80016504 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 017108 80016508 AFB1004C */  sw    $s1, 0x4c($sp)
/* 01710C 8001650C 00A08821 */  addu  $s1, $a1, $zero
/* 017110 80016510 AFBF0054 */  sw    $ra, 0x54($sp)
/* 017114 80016514 AFB20050 */  sw    $s2, 0x50($sp)
/* 017118 80016518 AFB00048 */  sw    $s0, 0x48($sp)
/* 01711C 8001651C 04400004 */  bltz  $v0, .L80016530
/* 017120 80016520 00401821 */   addu  $v1, $v0, $zero

/* 017124 80016524 2462FFFF */  addiu $v0, $v1, -1
/* 017128 80016528 3C018004 */  lui   $at, %hi(D_80040892) # $at, 0x8004
/* 01712C 8001652C A4220892 */  sh    $v0, %lo(D_80040892)($at)

.L80016530:
/* 017130 80016530 3082FFFF */  andi  $v0, $a0, 0xffff
/* 017134 80016534 2C420020 */  sltiu $v0, $v0, 0x20
/* 017138 80016538 1040005E */  beqz  $v0, .L800166B4
/* 01713C 8001653C 00061600 */   sll   $v0, $a2, 0x18

/* 017140 80016540 0002102B */  sltu  $v0, $zero, $v0
/* 017144 80016544 00021023 */  negu  $v0, $v0
/* 017148 80016548 00822024 */  and   $a0, $a0, $v0
/* 01714C 8001654C 00051400 */  sll   $v0, $a1, 0x10
/* 017150 80016550 00021403 */  sra   $v0, $v0, 0x10
/* 017154 80016554 28420002 */  slti  $v0, $v0, 2
/* 017158 80016558 10400002 */  beqz  $v0, .L80016564
/* 01715C 8001655C 00809021 */   addu  $s2, $a0, $zero

/* 017160 80016560 24110002 */  li    $s1, 2

.L80016564:
/* 017164 80016564 3C038004 */  lui   $v1, %hi(D_80040890) # $v1, 0x8004
/* 017168 80016568 84630890 */  lh    $v1, %lo(D_80040890)($v1)
/* 01716C 8001656C 00041400 */  sll   $v0, $a0, 0x10
/* 017170 80016570 00028403 */  sra   $s0, $v0, 0x10
/* 017174 80016574 12030049 */  beq   $s0, $v1, .L8001669C
/* 017178 80016578 00000000 */   nop   

/* 01717C 8001657C 0C000EE7 */  jal   func_80003B9C
/* 017180 80016580 00000000 */   nop   

/* 017184 80016584 00021400 */  sll   $v0, $v0, 0x10
/* 017188 80016588 1440003C */  bnez  $v0, .L8001667C
/* 01718C 8001658C 00112400 */   sll   $a0, $s1, 0x10

# get music file ID
/* 017190 80016590 3C028004 */  lui   $v0, %hi(tbl_MusicFileIDs) # $v0, 0x8004
/* 017194 80016594 244203B0 */  addiu $v0, %lo(tbl_MusicFileIDs) # addiu $v0, $v0, 0x3b0
/* 017198 80016598 00108040 */  sll   $s0, $s0, 1
/* 01719C 8001659C 02021821 */  addu  $v1, $s0, $v0
/* 0171A0 800165A0 84640000 */  lh    $a0, ($v1)

# store index into music file ID table
/* 0171A4 800165A4 3C018004 */  lui   $at, %hi(D_80040890) # $at, 0x8004
/* 0171A8 800165A8 A4320890 */  sh    $s2, %lo(D_80040890)($at)
/* 0171AC 800165AC 0480003B */  bltz  $a0, .L8001669C
/* 0171B0 800165B0 2882034C */   slti  $v0, $a0, 0x34C # first music file ID

# branch if streamed music
/* 0171B4 800165B4 14400028 */  bnez  $v0, .L80016658
/* 0171B8 800165B8 24060080 */   li    $a2, 128

/* 0171BC 800165BC 3C028004 */  lui   $v0, %hi(D_80040892) # $v0, 0x8004
/* 0171C0 800165C0 84420892 */  lh    $v0, %lo(D_80040892)($v0)
/* 0171C4 800165C4 04410021 */  bgez  $v0, .L8001664C
/* 0171C8 800165C8 00000000 */   nop   

# load music file
/* 0171CC 800165CC 94650000 */  lhu   $a1, ($v1) # music file ID
/* 0171D0 800165D0 3C068007 */  lui   $a2, %hi(bssMain_8007082F) # $a2, 0x8007
/* 0171D4 800165D4 24C6082F */  addiu $a2, %lo(bssMain_8007082F) # addiu $a2, $a2, 0x82f
/* 0171D8 800165D8 00063102 */  srl   $a2, $a2, 4
/* 0171DC 800165DC 00063100 */  sll   $a2, $a2, 4
/* 0171E0 800165E0 3C018008 */  lui   $at, %hi(bssMain_80079EA0) # $at, 0x8008
/* 0171E4 800165E4 AC269EA0 */  sw    $a2, %lo(bssMain_80079EA0)($at)
/* 0171E8 800165E8 0C000FA2 */  jal   LoadFile
/* 0171EC 800165EC 27A40028 */   addiu $a0, $sp, 0x28

/* 0171F0 800165F0 3C048008 */  lui   $a0, %hi(bssMain_80079EA0) # $a0, 0x8008
/* 0171F4 800165F4 0C000E85 */  jal   func_80003A14
/* 0171F8 800165F8 8C849EA0 */   lw    $a0, %lo(bssMain_80079EA0)($a0)

/* 0171FC 800165FC 3C038004 */  lui   $v1, %hi(tbl_TrackVolumes)
/* 017200 80016600 00701821 */  addu  $v1, $v1, $s0
/* 017204 80016604 846303F8 */  lh    $v1, %lo(tbl_TrackVolumes)($v1)
/* 017208 80016608 3C048004 */  lui   $a0, %hi(tbl_TrackVolumes)
/* 01720C 8001660C 00902021 */  addu  $a0, $a0, $s0
/* 017210 80016610 948403F8 */  lhu   $a0, %lo(tbl_TrackVolumes)($a0)
/* 017214 80016614 2402FFFF */  li    $v0, -1 # check for "use bgm volume option" value
/* 017218 80016618 54620008 */  bnel  $v1, $v0, .L8001663C
/* 01721C 8001661C 00042400 */   sll   $a0, $a0, 0x10

# set playback volume based on game options
/* 017220 80016620 3C02800A */  lui   $v0, %hi(bssMain_800A4058) # $v0, 0x800a
/* 017224 80016624 90424058 */  lbu   $v0, %lo(bssMain_800A4058)($v0)
/* 017228 80016628 00021040 */  sll   $v0, $v0, 1
/* 01722C 8001662C 3C048004 */  lui   $a0, %hi(tbl_MusicVolumeValues)
/* 017230 80016630 00822021 */  addu  $a0, $a0, $v0
/* 017234 80016634 948403F0 */  lhu   $a0, %lo(tbl_MusicVolumeValues)($a0)
/* 017238 80016638 00042400 */  sll   $a0, $a0, 0x10

.L8001663C:
/* 01723C 8001663C 0C000F0D */  jal   func_80003C34
/* 017240 80016640 00042403 */   sra   $a0, $a0, 0x10

/* 017244 80016644 080059A7 */  j     .L8001669C
/* 017248 80016648 00000000 */   nop   

.L8001664C:
/* 01724C 8001664C 3C018004 */  lui   $at, %hi(D_80040890) # $at, 0x8004
/* 017250 80016650 080059A7 */  j     .L8001669C
/* 017254 80016654 A4200890 */   sh    $zero, %lo(D_80040890)($at)

# handle streamed music
.L80016658:
/* 017258 80016658 3C058004 */  lui   $a1, %hi(tbl_TrackVolumes)
/* 01725C 8001665C 00B02821 */  addu  $a1, $a1, $s0
/* 017260 80016660 84A503F8 */  lh    $a1, %lo(tbl_TrackVolumes)($a1)
/* 017264 80016664 2402FFFF */  li    $v0, -1
/* 017268 80016668 00003821 */  addu  $a3, $zero, $zero
/* 01726C 8001666C 0C000EBA */  jal   func_80003AE8
/* 017270 80016670 AFA20010 */   sw    $v0, 0x10($sp)

/* 017274 80016674 080059A7 */  j     .L8001669C
/* 017278 80016678 00000000 */   nop   

.L8001667C:
/* 01727C 8001667C 2402FFFF */  li    $v0, -1
/* 017280 80016680 3C018004 */  lui   $at, %hi(D_80040890) # $at, 0x8004
/* 017284 80016684 A4220890 */  sh    $v0, %lo(D_80040890)($at)
/* 017288 80016688 2402000F */  li    $v0, 15
/* 01728C 8001668C 3C018004 */  lui   $at, %hi(D_80040892) # $at, 0x8004
/* 017290 80016690 A4220892 */  sh    $v0, %lo(D_80040892)($at)
/* 017294 80016694 0C000E99 */  jal   func_80003A64
/* 017298 80016698 00042403 */   sra   $a0, $a0, 0x10

.L8001669C:
/* 01729C 8001669C 3C028004 */  lui   $v0, %hi(D_8004087C) # $v0, 0x8004
/* 0172A0 800166A0 8C42087C */  lw    $v0, %lo(D_8004087C)($v0)
/* 0172A4 800166A4 04400003 */  bltz  $v0, .L800166B4
/* 0172A8 800166A8 2442FFFF */   addiu $v0, $v0, -1

/* 0172AC 800166AC 3C018004 */  lui   $at, %hi(D_8004087C) # $at, 0x8004
/* 0172B0 800166B0 AC22087C */  sw    $v0, %lo(D_8004087C)($at)

.L800166B4:
/* 0172B4 800166B4 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0172B8 800166B8 8FB20050 */  lw    $s2, 0x50($sp)
/* 0172BC 800166BC 8FB1004C */  lw    $s1, 0x4c($sp)
/* 0172C0 800166C0 8FB00048 */  lw    $s0, 0x48($sp)
/* 0172C4 800166C4 03E00008 */  jr    $ra
/* 0172C8 800166C8 27BD0058 */   addiu $sp, $sp, 0x58