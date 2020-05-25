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
static const char *ng0 = "D:/Bureau/Cours INSA/SystemeInfor/BancMemData.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4155342229_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned int t8;
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

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1632U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 5828U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t4, t1);
    t18 = (t17 - 255);
    t8 = (t18 * -1);
    t11 = (8U * t8);
    t19 = (0U + t11);
    t7 = (t0 + 3552);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_delta(t7, t19, 8U, 0LL);

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t3 = xsi_get_transient_memory(2048U);
    memset(t3, 0, 2048U);
    t7 = t3;
    t8 = (8U * 1U);
    t9 = t7;
    memset(t9, (unsigned char)2, t8);
    t10 = (t8 != 0);
    if (t10 == 1)
        goto LAB8;

LAB9:    t12 = (t0 + 3552);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t3, 2048U);
    xsi_driver_first_trans_fast(t12);
    goto LAB6;

LAB8:    t11 = (2048U / t8);
    xsi_mem_set_data(t7, t7, t8, t11);
    goto LAB9;

LAB10:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t1 = (t0 + 5828U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t1);
    t18 = (t17 - 255);
    t8 = (t18 * -1);
    xsi_vhdl_check_range_of_index(255, 0, -1, t17);
    t11 = (8U * t8);
    t19 = (0 + t11);
    t9 = (t4 + t19);
    t12 = (t0 + 3616);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB11;

}


extern void work_a_4155342229_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4155342229_3212880686_p_0};
	xsi_register_didat("work_a_4155342229_3212880686", "isim/TestPipeline_isim_beh.exe.sim/work/a_4155342229_3212880686.didat");
	xsi_register_executes(pe);
}
