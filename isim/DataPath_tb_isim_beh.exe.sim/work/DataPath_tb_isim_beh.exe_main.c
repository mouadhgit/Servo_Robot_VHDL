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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_0380725995_4269162046_init();
    work_a_1991350011_3300537885_init();
    work_a_4204489651_1446275585_init();
    work_a_3778041230_1446275585_init();
    work_a_3636291915_1446275585_init();
    work_a_2540537520_3212880686_init();
    work_a_3514416598_3212880686_init();
    work_a_2252756781_3212880686_init();
    work_a_0829781525_3212880686_init();
    work_a_3993797466_3212880686_init();
    work_a_4234161749_3212880686_init();
    work_a_2494675611_3212880686_init();
    work_a_1057862234_3212880686_init();
    work_a_2399776393_3708392848_init();
    work_a_0503873392_2372691052_init();


    xsi_register_tops("work_a_0503873392_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
