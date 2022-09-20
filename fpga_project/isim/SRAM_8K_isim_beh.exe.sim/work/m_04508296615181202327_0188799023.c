/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pali/Documents/BME/MSC/masodik_felev/Onlab/fpga-floppy/fpga_project/SRAM_8K.v";



static void Always_32_0(char *t0)
{
    char t21[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    int t31;
    int t32;
    int t33;
    int t34;
    int t35;

LAB0:    t1 = (t0 + 3160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3480);
    *((int *)t2) = 1;
    t3 = (t0 + 3192);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(34, ng0);

LAB9:    xsi_set_current_line(35, ng0);
    t11 = (t0 + 1528U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(37, ng0);

LAB14:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2248);
    t4 = (t0 + 2248);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 2248);
    t18 = (t12 + 64U);
    t19 = *((char **)t18);
    t20 = (t0 + 1208U);
    t22 = *((char **)t20);
    xsi_vlog_generic_convert_array_indices(t21, t30, t11, t19, 2, 1, t22, 13, 2);
    t20 = (t21 + 4);
    t6 = *((unsigned int *)t20);
    t31 = (!(t6));
    t23 = (t30 + 4);
    t7 = *((unsigned int *)t23);
    t32 = (!(t7));
    t33 = (t31 && t32);
    if (t33 == 1)
        goto LAB15;

LAB16:
LAB12:    goto LAB8;

LAB10:    xsi_set_current_line(35, ng0);

LAB13:    xsi_set_current_line(36, ng0);
    t18 = (t0 + 2248);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = (t0 + 2248);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 2248);
    t26 = (t25 + 64U);
    t27 = *((char **)t26);
    t28 = (t0 + 1208U);
    t29 = *((char **)t28);
    xsi_vlog_generic_get_array_select_value(t21, 8, t20, t24, t27, 2, 1, t29, 13, 2);
    t28 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t28, t21, 0, 0, 8, 0LL);
    goto LAB12;

LAB15:    t8 = *((unsigned int *)t21);
    t9 = *((unsigned int *)t30);
    t34 = (t8 - t9);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t30), t35, 0LL);
    goto LAB16;

}


extern void work_m_04508296615181202327_0188799023_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_04508296615181202327_0188799023", "isim/SRAM_8K_isim_beh.exe.sim/work/m_04508296615181202327_0188799023.didat");
	xsi_register_executes(pe);
}
