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
static const char *ng0 = "C:/Users/Anderson/Downloads/Archive-5c99/IseProjects/Circuito_Maquina_Lavar/Clock.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2964965119_1901610384_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(25, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2088U);
    t8 = *((char **)t2);
    t9 = *((int *)t8);
    t10 = (t9 + 1);
    t2 = (t0 + 2088U);
    t11 = *((char **)t2);
    t2 = (t11 + 0);
    *((int *)t2) = t10;
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (t9 + 1);
    t1 = (t0 + 2208U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (t9 + 1);
    t1 = (t0 + 2328U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (50000000 / 2);
    t3 = (t9 == t10);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (50000000 / 4);
    t3 = (t9 == t10);
    if (t3 != 0)
        goto LAB13;

LAB15:
LAB14:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2328U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t10 = (50000000 / 20);
    t3 = (t9 == t10);
    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4072);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4136);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4200);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t3 = t7;
    goto LAB9;

LAB10:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2088U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 2448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t4;
    goto LAB11;

LAB13:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2208U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 2568U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t4;
    goto LAB14;

LAB16:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2328U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 2688U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t4;
    goto LAB17;

}


extern void work_a_2964965119_1901610384_init()
{
	static char *pe[] = {(void *)work_a_2964965119_1901610384_p_0};
	xsi_register_didat("work_a_2964965119_1901610384", "isim/clock_isim_beh.exe.sim/work/a_2964965119_1901610384.didat");
	xsi_register_executes(pe);
}
