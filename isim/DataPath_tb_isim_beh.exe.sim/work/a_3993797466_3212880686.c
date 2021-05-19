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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ISE Projects/cerveau_Robot/cmp8bit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3993797466_3212880686_p_0(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 5160);
    t9 = (t0 + 3392);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB6;

LAB8:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t6 = (t4 == (unsigned char)3);
    if (t6 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t2 = (t0 + 5108U);
    t9 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t14, t8, t2, 1);
    t10 = (t14 + 12U);
    t15 = *((unsigned int *)t10);
    t16 = (1U * t15);
    t7 = (8U != t16);
    if (t7 == 1)
        goto LAB13;

LAB14:    t11 = (t0 + 3392);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB11;

LAB13:    xsi_size_not_matching(8U, t16, 0);
    goto LAB14;

}


extern void work_a_3993797466_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3993797466_3212880686_p_0};
	xsi_register_didat("work_a_3993797466_3212880686", "isim/DataPath_tb_isim_beh.exe.sim/work/a_3993797466_3212880686.didat");
	xsi_register_executes(pe);
}
