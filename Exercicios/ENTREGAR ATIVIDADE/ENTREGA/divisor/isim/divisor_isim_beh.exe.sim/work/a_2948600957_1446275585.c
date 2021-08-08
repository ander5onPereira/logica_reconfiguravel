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
static const char *ng0 = "C:/Users/Keiko-PC/Documents/ISEprojects/divisor/divisor.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2948600957_1446275585_p_0(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(16, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 5788U);
    t7 = (t0 + 5804U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (3U + 3U);
    t9 = (6U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3760);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 6U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 3648);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(6U, t8, 0);
    goto LAB6;

}

static void work_a_2948600957_1446275585_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;
    char *t60;
    int t62;
    char *t63;
    int t65;
    char *t66;
    int t68;
    char *t69;
    int t71;
    char *t72;
    int t74;
    char *t75;
    int t77;
    char *t78;
    int t80;
    char *t81;
    int t83;
    char *t84;
    int t86;
    char *t87;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 5888);
    t5 = xsi_mem_cmp(t2, t3, 6U);
    if (t5 == 1)
        goto LAB5;

LAB13:    t6 = (t0 + 5894);
    t8 = xsi_mem_cmp(t6, t3, 6U);
    if (t8 == 1)
        goto LAB5;

LAB14:    t9 = (t0 + 5900);
    t11 = xsi_mem_cmp(t9, t3, 6U);
    if (t11 == 1)
        goto LAB5;

LAB15:    t12 = (t0 + 5906);
    t14 = xsi_mem_cmp(t12, t3, 6U);
    if (t14 == 1)
        goto LAB5;

LAB16:    t15 = (t0 + 5912);
    t17 = xsi_mem_cmp(t15, t3, 6U);
    if (t17 == 1)
        goto LAB5;

LAB17:    t18 = (t0 + 5918);
    t20 = xsi_mem_cmp(t18, t3, 6U);
    if (t20 == 1)
        goto LAB5;

LAB18:    t21 = (t0 + 5924);
    t23 = xsi_mem_cmp(t21, t3, 6U);
    if (t23 == 1)
        goto LAB5;

LAB19:    t24 = (t0 + 5930);
    t26 = xsi_mem_cmp(t24, t3, 6U);
    if (t26 == 1)
        goto LAB5;

LAB20:    t27 = (t0 + 5936);
    t29 = xsi_mem_cmp(t27, t3, 6U);
    if (t29 == 1)
        goto LAB5;

LAB21:    t30 = (t0 + 5942);
    t32 = xsi_mem_cmp(t30, t3, 6U);
    if (t32 == 1)
        goto LAB5;

LAB22:    t33 = (t0 + 5948);
    t35 = xsi_mem_cmp(t33, t3, 6U);
    if (t35 == 1)
        goto LAB5;

LAB23:    t36 = (t0 + 5954);
    t38 = xsi_mem_cmp(t36, t3, 6U);
    if (t38 == 1)
        goto LAB5;

LAB24:    t39 = (t0 + 5960);
    t41 = xsi_mem_cmp(t39, t3, 6U);
    if (t41 == 1)
        goto LAB5;

LAB25:    t42 = (t0 + 5966);
    t44 = xsi_mem_cmp(t42, t3, 6U);
    if (t44 == 1)
        goto LAB5;

LAB26:    t45 = (t0 + 5972);
    t47 = xsi_mem_cmp(t45, t3, 6U);
    if (t47 == 1)
        goto LAB5;

LAB27:    t48 = (t0 + 5978);
    t50 = xsi_mem_cmp(t48, t3, 6U);
    if (t50 == 1)
        goto LAB5;

LAB28:    t51 = (t0 + 5984);
    t53 = xsi_mem_cmp(t51, t3, 6U);
    if (t53 == 1)
        goto LAB6;

LAB29:    t54 = (t0 + 5990);
    t56 = xsi_mem_cmp(t54, t3, 6U);
    if (t56 == 1)
        goto LAB6;

LAB30:    t57 = (t0 + 5996);
    t59 = xsi_mem_cmp(t57, t3, 6U);
    if (t59 == 1)
        goto LAB6;

LAB31:    t60 = (t0 + 6002);
    t62 = xsi_mem_cmp(t60, t3, 6U);
    if (t62 == 1)
        goto LAB6;

LAB32:    t63 = (t0 + 6008);
    t65 = xsi_mem_cmp(t63, t3, 6U);
    if (t65 == 1)
        goto LAB6;

LAB33:    t66 = (t0 + 6014);
    t68 = xsi_mem_cmp(t66, t3, 6U);
    if (t68 == 1)
        goto LAB7;

LAB34:    t69 = (t0 + 6020);
    t71 = xsi_mem_cmp(t69, t3, 6U);
    if (t71 == 1)
        goto LAB7;

LAB35:    t72 = (t0 + 6026);
    t74 = xsi_mem_cmp(t72, t3, 6U);
    if (t74 == 1)
        goto LAB7;

LAB36:    t75 = (t0 + 6032);
    t77 = xsi_mem_cmp(t75, t3, 6U);
    if (t77 == 1)
        goto LAB8;

LAB37:    t78 = (t0 + 6038);
    t80 = xsi_mem_cmp(t78, t3, 6U);
    if (t80 == 1)
        goto LAB9;

LAB38:    t81 = (t0 + 6044);
    t83 = xsi_mem_cmp(t81, t3, 6U);
    if (t83 == 1)
        goto LAB10;

LAB39:    t84 = (t0 + 6050);
    t86 = xsi_mem_cmp(t84, t3, 6U);
    if (t86 == 1)
        goto LAB11;

LAB40:
LAB12:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 6077);
    t4 = (t0 + 3824);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(17, ng0);

LAB44:    t2 = (t0 + 3664);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB45;

LAB1:    return;
LAB5:    xsi_set_current_line(18, ng0);
    t87 = (t0 + 6056);
    t89 = (t0 + 3824);
    t90 = (t89 + 56U);
    t91 = *((char **)t90);
    t92 = (t91 + 56U);
    t93 = *((char **)t92);
    memcpy(t93, t87, 3U);
    xsi_driver_first_trans_fast_port(t89);
    goto LAB4;

LAB6:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 6059);
    t4 = (t0 + 3824);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 6062);
    t4 = (t0 + 3824);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 6065);
    t4 = (t0 + 3824);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 6068);
    t4 = (t0 + 3824);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 6071);
    t4 = (t0 + 3824);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 6074);
    t4 = (t0 + 3824);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB41:;
LAB42:    t3 = (t0 + 3664);
    *((int *)t3) = 0;
    goto LAB2;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

}

static void work_a_2948600957_1446275585_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;
    char *t60;
    int t62;
    char *t63;
    int t65;
    char *t66;
    int t68;
    char *t69;
    int t71;
    char *t72;
    int t74;
    char *t75;
    int t77;
    char *t78;
    int t80;
    char *t81;
    int t83;
    char *t84;
    int t86;
    char *t87;
    int t89;
    char *t90;
    int t92;
    char *t93;
    int t95;
    char *t96;
    int t98;
    char *t99;
    int t101;
    char *t102;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6080);
    t5 = xsi_mem_cmp(t2, t3, 6U);
    if (t5 == 1)
        goto LAB5;

LAB12:    t6 = (t0 + 6086);
    t8 = xsi_mem_cmp(t6, t3, 6U);
    if (t8 == 1)
        goto LAB5;

LAB13:    t9 = (t0 + 6092);
    t11 = xsi_mem_cmp(t9, t3, 6U);
    if (t11 == 1)
        goto LAB5;

LAB14:    t12 = (t0 + 6098);
    t14 = xsi_mem_cmp(t12, t3, 6U);
    if (t14 == 1)
        goto LAB5;

LAB15:    t15 = (t0 + 6104);
    t17 = xsi_mem_cmp(t15, t3, 6U);
    if (t17 == 1)
        goto LAB5;

LAB16:    t18 = (t0 + 6110);
    t20 = xsi_mem_cmp(t18, t3, 6U);
    if (t20 == 1)
        goto LAB5;

LAB17:    t21 = (t0 + 6116);
    t23 = xsi_mem_cmp(t21, t3, 6U);
    if (t23 == 1)
        goto LAB5;

LAB18:    t24 = (t0 + 6122);
    t26 = xsi_mem_cmp(t24, t3, 6U);
    if (t26 == 1)
        goto LAB5;

LAB19:    t27 = (t0 + 6128);
    t29 = xsi_mem_cmp(t27, t3, 6U);
    if (t29 == 1)
        goto LAB5;

LAB20:    t30 = (t0 + 6134);
    t32 = xsi_mem_cmp(t30, t3, 6U);
    if (t32 == 1)
        goto LAB5;

LAB21:    t33 = (t0 + 6140);
    t35 = xsi_mem_cmp(t33, t3, 6U);
    if (t35 == 1)
        goto LAB5;

LAB22:    t36 = (t0 + 6146);
    t38 = xsi_mem_cmp(t36, t3, 6U);
    if (t38 == 1)
        goto LAB5;

LAB23:    t39 = (t0 + 6152);
    t41 = xsi_mem_cmp(t39, t3, 6U);
    if (t41 == 1)
        goto LAB5;

LAB24:    t42 = (t0 + 6158);
    t44 = xsi_mem_cmp(t42, t3, 6U);
    if (t44 == 1)
        goto LAB5;

LAB25:    t45 = (t0 + 6164);
    t47 = xsi_mem_cmp(t45, t3, 6U);
    if (t47 == 1)
        goto LAB6;

LAB26:    t48 = (t0 + 6170);
    t50 = xsi_mem_cmp(t48, t3, 6U);
    if (t50 == 1)
        goto LAB6;

LAB27:    t51 = (t0 + 6176);
    t53 = xsi_mem_cmp(t51, t3, 6U);
    if (t53 == 1)
        goto LAB6;

LAB28:    t54 = (t0 + 6182);
    t56 = xsi_mem_cmp(t54, t3, 6U);
    if (t56 == 1)
        goto LAB6;

LAB29:    t57 = (t0 + 6188);
    t59 = xsi_mem_cmp(t57, t3, 6U);
    if (t59 == 1)
        goto LAB6;

LAB30:    t60 = (t0 + 6194);
    t62 = xsi_mem_cmp(t60, t3, 6U);
    if (t62 == 1)
        goto LAB6;

LAB31:    t63 = (t0 + 6200);
    t65 = xsi_mem_cmp(t63, t3, 6U);
    if (t65 == 1)
        goto LAB6;

LAB32:    t66 = (t0 + 6206);
    t68 = xsi_mem_cmp(t66, t3, 6U);
    if (t68 == 1)
        goto LAB6;

LAB33:    t69 = (t0 + 6212);
    t71 = xsi_mem_cmp(t69, t3, 6U);
    if (t71 == 1)
        goto LAB7;

LAB34:    t72 = (t0 + 6218);
    t74 = xsi_mem_cmp(t72, t3, 6U);
    if (t74 == 1)
        goto LAB7;

LAB35:    t75 = (t0 + 6224);
    t77 = xsi_mem_cmp(t75, t3, 6U);
    if (t77 == 1)
        goto LAB7;

LAB36:    t78 = (t0 + 6230);
    t80 = xsi_mem_cmp(t78, t3, 6U);
    if (t80 == 1)
        goto LAB7;

LAB37:    t81 = (t0 + 6236);
    t83 = xsi_mem_cmp(t81, t3, 6U);
    if (t83 == 1)
        goto LAB7;

LAB38:    t84 = (t0 + 6242);
    t86 = xsi_mem_cmp(t84, t3, 6U);
    if (t86 == 1)
        goto LAB8;

LAB39:    t87 = (t0 + 6248);
    t89 = xsi_mem_cmp(t87, t3, 6U);
    if (t89 == 1)
        goto LAB8;

LAB40:    t90 = (t0 + 6254);
    t92 = xsi_mem_cmp(t90, t3, 6U);
    if (t92 == 1)
        goto LAB8;

LAB41:    t93 = (t0 + 6260);
    t95 = xsi_mem_cmp(t93, t3, 6U);
    if (t95 == 1)
        goto LAB9;

LAB42:    t96 = (t0 + 6266);
    t98 = xsi_mem_cmp(t96, t3, 6U);
    if (t98 == 1)
        goto LAB9;

LAB43:    t99 = (t0 + 6272);
    t101 = xsi_mem_cmp(t99, t3, 6U);
    if (t101 == 1)
        goto LAB10;

LAB44:
LAB11:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 6296);
    t4 = (t0 + 3888);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(30, ng0);

LAB48:    t2 = (t0 + 3680);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB49;

LAB1:    return;
LAB5:    xsi_set_current_line(31, ng0);
    t102 = (t0 + 6278);
    t104 = (t0 + 3888);
    t105 = (t104 + 56U);
    t106 = *((char **)t105);
    t107 = (t106 + 56U);
    t108 = *((char **)t107);
    memcpy(t108, t102, 3U);
    xsi_driver_first_trans_fast_port(t104);
    goto LAB4;

LAB6:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 6281);
    t4 = (t0 + 3888);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 6284);
    t4 = (t0 + 3888);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 6287);
    t4 = (t0 + 3888);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 6290);
    t4 = (t0 + 3888);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 6293);
    t4 = (t0 + 3888);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB45:;
LAB46:    t3 = (t0 + 3680);
    *((int *)t3) = 0;
    goto LAB2;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

}


extern void work_a_2948600957_1446275585_init()
{
	static char *pe[] = {(void *)work_a_2948600957_1446275585_p_0,(void *)work_a_2948600957_1446275585_p_1,(void *)work_a_2948600957_1446275585_p_2};
	xsi_register_didat("work_a_2948600957_1446275585", "isim/divisor_isim_beh.exe.sim/work/a_2948600957_1446275585.didat");
	xsi_register_executes(pe);
}
