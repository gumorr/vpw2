/* Virtual Pro-Wrestling 2 decompilation project - Segment 0 func_800E6AF0 and func_800E6B0C
 * Segment 0 is the first of two menu-dedicated segments.
 * I suspect this shit is something related to setting up music; don't quote me on that, though. - gumorr
 */

#include "common.h"
#include "ultra64.h"

#include "func_800e6af0.h"

void func_800E6AF0(void) {
    func_800E6B0C();
}

void func_800E6B0C(void) {
    func_800115E0();
    func_800164FC(-1, 0, 0);
    func_80003390();
    func_800E6BA0();
    func_80017EF4(1);
    func_800E6D20();
    func_80003390();
    while (func_800E7548() == 0) {};
    func_80003374();
    func_80003390();
    func_800E6DB4();
    func_80003390();
    func_80018158();
}