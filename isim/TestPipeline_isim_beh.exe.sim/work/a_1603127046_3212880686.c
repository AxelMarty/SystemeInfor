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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Bureau/Cours INSA/SystemeInfor/BancReg.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1603127046_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4448);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t3 = xsi_get_transient_memory(128U);
    memset(t3, 0, 128U);
    t7 = t3;
    t8 = (t0 + 7407);
    t10 = (8U != 0);
    if (t10 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 4560);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 128U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB8:    t11 = (128U / 8U);
    xsi_mem_set_data(t7, t8, 8U, t11);
    goto LAB9;

LAB10:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t1 = (t0 + 7152U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t1);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    t19 = (8U * t11);
    t20 = (0U + t19);
    t8 = (t0 + 4560);
    t9 = (t8 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_delta(t8, t20, 8U, 0LL);
    goto LAB11;

}

static void work_a_1603127046_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7120U);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7152U);
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t16 = (t0 + 2472U);
    t17 = *((char **)t16);
    t16 = (t0 + 1032U);
    t18 = *((char **)t16);
    t16 = (t0 + 7120U);
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t18, t16);
    t20 = (t19 - 15);
    t21 = (t20 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t19);
    t22 = (8U * t21);
    t23 = (0 + t22);
    t24 = (t17 + t23);
    t25 = (t0 + 4624);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t24, 8U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4464);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1512U);
    t11 = *((char **)t7);
    t7 = (t0 + 4624);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t7 = (t0 + 2312U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t1 = t10;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_1603127046_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 7136U);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 7152U);
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t16 = (t0 + 2472U);
    t17 = *((char **)t16);
    t16 = (t0 + 1192U);
    t18 = *((char **)t16);
    t16 = (t0 + 7136U);
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t18, t16);
    t20 = (t19 - 15);
    t21 = (t20 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t19);
    t22 = (8U * t21);
    t23 = (0 + t22);
    t24 = (t17 + t23);
    t25 = (t0 + 4688);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t24, 8U);
    xsi_driver_first_trans_fast_port(t25);

LAB2:    t30 = (t0 + 4480);
    *((int *)t30) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1512U);
    t11 = *((char **)t7);
    t7 = (t0 + 4688);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t7 = (t0 + 2312U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t1 = t10;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_1603127046_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1603127046_3212880686_p_0,(void *)work_a_1603127046_3212880686_p_1,(void *)work_a_1603127046_3212880686_p_2};
	xsi_register_didat("work_a_1603127046_3212880686", "isim/TestPipeline_isim_beh.exe.sim/work/a_1603127046_3212880686.didat");
	xsi_register_executes(pe);
}
