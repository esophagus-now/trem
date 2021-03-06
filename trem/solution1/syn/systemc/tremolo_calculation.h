// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _tremolo_calculation_HH_
#define _tremolo_calculation_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "trem_fadd_32ns_32bkb.h"
#include "trem_fmul_32ns_32cud.h"
#include "trem_fdiv_32ns_32dEe.h"
#include "trem_sitofp_32s_3eOg.h"

namespace ap_rtl {

struct tremolo_calculation : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > return_r;
    sc_out< sc_logic > return_r_ap_vld;
    sc_in< sc_lv<32> > xin;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const2;


    // Module declarations
    tremolo_calculation(sc_module_name name);
    SC_HAS_PROCESS(tremolo_calculation);

    ~tremolo_calculation();

    sc_trace_file* mVcdFile;

    trem_fadd_32ns_32bkb<1,5,32,32,32>* trem_fadd_32ns_32bkb_U2;
    trem_fmul_32ns_32cud<1,4,32,32,32>* trem_fmul_32ns_32cud_U3;
    trem_fdiv_32ns_32dEe<1,16,32,32,32>* trem_fdiv_32ns_32dEe_U4;
    trem_sitofp_32s_3eOg<1,6,32,32>* trem_sitofp_32s_3eOg_U5;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<31> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > mod_r;
    sc_signal< sc_lv<16> > control;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > grp_fu_53_p1;
    sc_signal< sc_lv<32> > tmp_i_reg_114;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > grp_fu_48_p2;
    sc_signal< sc_lv<32> > m_reg_119;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<32> > grp_fu_37_p2;
    sc_signal< sc_lv<32> > tmp_1_i_reg_124;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<16> > tmp_2_i_fu_69_p2;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<1> > tmp_3_i_fu_80_p2;
    sc_signal< sc_lv<1> > tmp_4_i_fu_86_p2;
    sc_signal< sc_lv<32> > grp_fu_42_p2;
    sc_signal< sc_lv<32> > return_r_preg;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_53_p0;
    sc_signal< sc_logic > grp_fu_53_ce;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<31> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<31> ap_ST_fsm_state1;
    static const sc_lv<31> ap_ST_fsm_state2;
    static const sc_lv<31> ap_ST_fsm_state3;
    static const sc_lv<31> ap_ST_fsm_state4;
    static const sc_lv<31> ap_ST_fsm_state5;
    static const sc_lv<31> ap_ST_fsm_state6;
    static const sc_lv<31> ap_ST_fsm_state7;
    static const sc_lv<31> ap_ST_fsm_state8;
    static const sc_lv<31> ap_ST_fsm_state9;
    static const sc_lv<31> ap_ST_fsm_state10;
    static const sc_lv<31> ap_ST_fsm_state11;
    static const sc_lv<31> ap_ST_fsm_state12;
    static const sc_lv<31> ap_ST_fsm_state13;
    static const sc_lv<31> ap_ST_fsm_state14;
    static const sc_lv<31> ap_ST_fsm_state15;
    static const sc_lv<31> ap_ST_fsm_state16;
    static const sc_lv<31> ap_ST_fsm_state17;
    static const sc_lv<31> ap_ST_fsm_state18;
    static const sc_lv<31> ap_ST_fsm_state19;
    static const sc_lv<31> ap_ST_fsm_state20;
    static const sc_lv<31> ap_ST_fsm_state21;
    static const sc_lv<31> ap_ST_fsm_state22;
    static const sc_lv<31> ap_ST_fsm_state23;
    static const sc_lv<31> ap_ST_fsm_state24;
    static const sc_lv<31> ap_ST_fsm_state25;
    static const sc_lv<31> ap_ST_fsm_state26;
    static const sc_lv<31> ap_ST_fsm_state27;
    static const sc_lv<31> ap_ST_fsm_state28;
    static const sc_lv<31> ap_ST_fsm_state29;
    static const sc_lv<31> ap_ST_fsm_state30;
    static const sc_lv<31> ap_ST_fsm_state31;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<16> ap_const_lv16_FFFF;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_457A0000;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<16> ap_const_lv16_FA0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_53_ce();
    void thread_grp_fu_53_p0();
    void thread_return_r();
    void thread_return_r_ap_vld();
    void thread_tmp_2_i_fu_69_p2();
    void thread_tmp_3_i_fu_80_p2();
    void thread_tmp_4_i_fu_86_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
