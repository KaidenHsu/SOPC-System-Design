// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vhw2_tb.h for the primary calling header

#ifndef VERILATED_VHW2_TB___024ROOT_H_
#define VERILATED_VHW2_TB___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vhw2_tb__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vhw2_tb___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ hw2_tb__DOT__clk;
    CData/*0:0*/ hw2_tb__DOT__rst;
    CData/*0:0*/ hw2_tb__DOT__start;
    CData/*5:0*/ hw2_tb__DOT__M;
    CData/*5:0*/ hw2_tb__DOT__N;
    CData/*0:0*/ hw2_tb__DOT__tb_passed;
    CData/*5:0*/ hw2_tb__DOT__dut__DOT__waddr;
    CData/*5:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter;
    CData/*1:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter;
    CData/*1:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter;
    CData/*5:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf;
    CData/*5:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf;
    VlWide<8>/*255:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec;
    VlWide<8>/*255:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow;
    CData/*2:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__state;
    CData/*2:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__n_state;
    CData/*5:0*/ __Vdly__hw2_tb__DOT__dut__DOT__waddr;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__hw2_tb__DOT__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__hw2_tb__DOT__rst__0;
    CData/*0:0*/ __VactContinue;
    SData/*11:0*/ hw2_tb__DOT__dut__DOT__wdata;
    SData/*8:0*/ hw2_tb__DOT__dut__DOT__raddr;
    SData/*11:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata;
    SData/*11:0*/ hw2_tb__DOT__dut__DOT__u_output_image__DOT__data_o;
    SData/*8:0*/ __Vdly__hw2_tb__DOT__dut__DOT__raddr;
    SData/*11:0*/ __Vdly__hw2_tb__DOT__dut__DOT__wdata;
    IData/*31:0*/ hw2_tb__DOT__i;
    IData/*31:0*/ hw2_tb__DOT__j;
    IData/*31:0*/ hw2_tb__DOT__cycle_count;
    IData/*31:0*/ hw2_tb__DOT__dut__DOT__u_vmm__DOT__i;
    IData/*31:0*/ __VactIterCount;
    QData/*63:0*/ hw2_tb__DOT__dut__DOT__rdata;
    VlUnpacked<SData/*11:0*/, 64> hw2_tb__DOT__golden;
    VlUnpacked<QData/*63:0*/, 260> hw2_tb__DOT__dut__DOT__u_input_image__DOT__RAM;
    VlUnpacked<SData/*11:0*/, 64> hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM;
    VlUnpacked<CData/*0:0*/, 5> __Vm_traceActivity;
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_hc2b181af__0;
    VlTriggerScheduler __VtrigSched_hc2b18262__0;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<4> __VactTriggered;
    VlTriggerVec<4> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vhw2_tb__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vhw2_tb___024root(Vhw2_tb__Syms* symsp, const char* v__name);
    ~Vhw2_tb___024root();
    VL_UNCOPYABLE(Vhw2_tb___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
