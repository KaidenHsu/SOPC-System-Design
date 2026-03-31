// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhw2_tb.h for the primary calling header

#include "Vhw2_tb__pch.h"
#include "Vhw2_tb___024root.h"

VL_ATTR_COLD void Vhw2_tb___024root___eval_initial__TOP(Vhw2_tb___024root* vlSelf);
VlCoroutine Vhw2_tb___024root___eval_initial__TOP__Vtiming__0(Vhw2_tb___024root* vlSelf);
VlCoroutine Vhw2_tb___024root___eval_initial__TOP__Vtiming__1(Vhw2_tb___024root* vlSelf);
VlCoroutine Vhw2_tb___024root___eval_initial__TOP__Vtiming__2(Vhw2_tb___024root* vlSelf);

void Vhw2_tb___024root___eval_initial(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_initial\n"); );
    // Body
    Vhw2_tb___024root___eval_initial__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[1U] = 1U;
    Vhw2_tb___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vhw2_tb___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    Vhw2_tb___024root___eval_initial__TOP__Vtiming__2(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__clk__0 
        = vlSelf->hw2_tb__DOT__clk;
    vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__rst__0 
        = vlSelf->hw2_tb__DOT__rst;
}

VL_INLINE_OPT VlCoroutine Vhw2_tb___024root___eval_initial__TOP__Vtiming__0(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_initial__TOP__Vtiming__0\n"); );
    // Body
    co_await vlSelf->__VdlySched.delay(0xf4240ULL, 
                                       nullptr, "hw2_tb.v", 
                                       37);
    VL_FINISH_MT("hw2_tb.v", 37, "");
}

VL_INLINE_OPT VlCoroutine Vhw2_tb___024root___eval_initial__TOP__Vtiming__2(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_initial__TOP__Vtiming__2\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0x1388ULL, 
                                           nullptr, 
                                           "hw2_tb.v", 
                                           35);
        vlSelf->hw2_tb__DOT__clk = (1U & (~ (IData)(vlSelf->hw2_tb__DOT__clk)));
    }
}

VL_INLINE_OPT void Vhw2_tb___024root___act_comb__TOP__0(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___act_comb__TOP__0\n"); );
    // Body
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__n_state 
        = (7U & ((0U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                  ? ((IData)(vlSelf->hw2_tb__DOT__start)
                      ? 1U : 0U) : ((1U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                     ? 2U : ((2U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                              ? ((3U 
                                                  == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter))
                                                  ? 3U
                                                  : 2U)
                                              : ((3U 
                                                  == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                                  ? 
                                                 ((0U 
                                                   == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter))
                                                   ? 4U
                                                   : 3U)
                                                  : 
                                                 ((4U 
                                                   == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                                   ? 
                                                  ((0U 
                                                    == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter))
                                                    ? 5U
                                                    : 3U)
                                                   : 0U))))));
}

void Vhw2_tb___024root___eval_act(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_act\n"); );
    // Body
    if ((0xeULL & vlSelf->__VactTriggered.word(0U))) {
        Vhw2_tb___024root___act_comb__TOP__0(vlSelf);
    }
}

extern const VlWide<8>/*255:0*/ Vhw2_tb__ConstPool__CONST_h9e67c271_0;

VL_INLINE_OPT void Vhw2_tb___024root___nba_sequent__TOP__0(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*5:0*/ __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter;
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter = 0;
    CData/*1:0*/ __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter;
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter = 0;
    CData/*1:0*/ __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter;
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter = 0;
    VlWide<8>/*255:0*/ __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec;
    VL_ZERO_W(256, __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec);
    VlWide<8>/*255:0*/ __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow;
    VL_ZERO_W(256, __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow);
    // Body
    vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__waddr = vlSelf->hw2_tb__DOT__dut__DOT__waddr;
    vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__wdata = vlSelf->hw2_tb__DOT__dut__DOT__wdata;
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter;
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter;
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter;
    vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr = vlSelf->hw2_tb__DOT__dut__DOT__raddr;
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U];
    __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] 
        = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U];
    if (vlSelf->hw2_tb__DOT__rst) {
        vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__waddr = 0U;
        vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__wdata = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter = 0U;
        vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[0U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[1U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[2U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[3U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[4U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[5U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[6U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[7U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[0U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[1U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[2U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[3U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[4U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[5U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[6U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[7U];
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf = 0U;
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf = 0U;
    } else if ((0U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
        vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__waddr = 0U;
        vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__wdata = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter = 0U;
        vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr = 0U;
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[0U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[1U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[2U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[3U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[4U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[5U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[6U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[7U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[0U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[1U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[2U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[3U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[4U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[5U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[6U];
        __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U] 
            = Vhw2_tb__ConstPool__CONST_h9e67c271_0[7U];
        if (vlSelf->hw2_tb__DOT__start) {
            vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf 
                = (0x3fU & (IData)(vlSelf->hw2_tb__DOT__N));
            vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf 
                = (0x3fU & (IData)(vlSelf->hw2_tb__DOT__M));
        } else {
            vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf = 0U;
            vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf = 0U;
        }
    } else {
        if ((4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__waddr 
                = (0x3fU & ((IData)(1U) + (IData)(vlSelf->hw2_tb__DOT__dut__DOT__waddr)));
        }
        if ((3U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__wdata 
                = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__wdata) 
                             + (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata)));
        } else if ((4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__wdata = 0U;
        }
        if ((1U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter = 0U;
            __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter = 3U;
            vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr 
                = (0x1ffU & ((IData)(1U) + (IData)(vlSelf->hw2_tb__DOT__dut__DOT__raddr)));
        } else if ((2U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter 
                = (3U & ((IData)(1U) + (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter)));
            __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter 
                = (3U & ((0U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter))
                          ? ((3U & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf) 
                                    >> 4U)) - (IData)(1U))
                          : ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter) 
                             - (IData)(1U))));
            if ((((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter) 
                  < ((3U & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf) 
                            >> 4U)) - (IData)(1U))) 
                 | (3U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter)))) {
                vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr 
                    = (0x1ffU & ((IData)(1U) + (IData)(vlSelf->hw2_tb__DOT__dut__DOT__raddr)));
            }
        } else if ((3U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter 
                = (3U & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter) 
                         - (IData)(1U)));
            if ((0U != (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter))) {
                vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr 
                    = (0x1ffU & ((IData)(1U) + (IData)(vlSelf->hw2_tb__DOT__dut__DOT__raddr)));
            }
        } else if ((4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter 
                = (3U & (((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf) 
                          >> 4U) - (IData)(1U)));
            vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr 
                = (0x1ffU & ((IData)(1U) + (IData)(vlSelf->hw2_tb__DOT__dut__DOT__raddr)));
        }
        if ((2U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter 
                = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf;
            if (((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter) 
                 < (3U & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf) 
                          >> 4U)))) {
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] 
                    = (IData)(vlSelf->hw2_tb__DOT__dut__DOT__rdata);
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] 
                    = (IData)((vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                               >> 0x20U));
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U] 
                    = (IData)(vlSelf->hw2_tb__DOT__dut__DOT__rdata);
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U] 
                    = (IData)((vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                               >> 0x20U));
            } else {
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] = 0U;
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] = 0U;
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U] = 0U;
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U] = 0U;
            }
        } else if ((3U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
            if ((0U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter))) {
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter 
                    = (0x3fU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter) 
                                - (IData)(1U)));
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U];
            } else {
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
                    = vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U];
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] = 0U;
                __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] = 0U;
            }
        }
    }
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter;
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[0U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[1U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[2U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[3U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[4U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[5U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[6U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow[7U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[2U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[3U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[4U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[5U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[6U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U] 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[7U];
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter;
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter 
        = __Vdly__hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter;
}

VL_INLINE_OPT void Vhw2_tb___024root___nba_sequent__TOP__1(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___nba_sequent__TOP__1\n"); );
    // Init
    CData/*5:0*/ __Vdlyvdim0__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0;
    __Vdlyvdim0__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0 = 0;
    SData/*11:0*/ __Vdlyvval__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0;
    __Vdlyvval__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0 = 0;
    CData/*0:0*/ __Vdlyvset__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0;
    __Vdlyvset__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0 = 0;
    // Body
    __Vdlyvset__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0 = 0U;
    if ((4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
        __Vdlyvval__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0 
            = vlSelf->hw2_tb__DOT__dut__DOT__wdata;
        __Vdlyvset__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0 = 1U;
        __Vdlyvdim0__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0 
            = vlSelf->hw2_tb__DOT__dut__DOT__waddr;
        vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__data_o 
            = vlSelf->hw2_tb__DOT__dut__DOT__wdata;
    } else {
        vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__data_o 
            = vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM
            [vlSelf->hw2_tb__DOT__dut__DOT__waddr];
    }
    vlSelf->hw2_tb__DOT__dut__DOT__rdata = ((0x103U 
                                             >= (IData)(vlSelf->hw2_tb__DOT__dut__DOT__raddr))
                                             ? vlSelf->hw2_tb__DOT__dut__DOT__u_input_image__DOT__RAM
                                            [vlSelf->hw2_tb__DOT__dut__DOT__raddr]
                                             : 0ULL);
    if (__Vdlyvset__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0) {
        vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM[__Vdlyvdim0__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0] 
            = __Vdlyvval__hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM__v0;
    }
}

VL_INLINE_OPT void Vhw2_tb___024root___nba_sequent__TOP__2(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___nba_sequent__TOP__2\n"); );
    // Body
    vlSelf->hw2_tb__DOT__dut__DOT__wdata = vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__wdata;
    vlSelf->hw2_tb__DOT__dut__DOT__waddr = vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__waddr;
    vlSelf->hw2_tb__DOT__dut__DOT__raddr = vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr;
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state 
        = ((IData)(vlSelf->hw2_tb__DOT__rst) ? 0U : (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__n_state));
    if ((3U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__i = 0x10U;
    }
}

VL_INLINE_OPT void Vhw2_tb___024root___nba_comb__TOP__0(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___nba_comb__TOP__0\n"); );
    // Body
    if ((3U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & VL_MULS_III(12, (0xfffU & VL_EXTENDS_II(12,4, 
                                                                (0xfU 
                                                                 & vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U]))), 
                                    (0xfffU & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (IData)(vlSelf->hw2_tb__DOT__dut__DOT__rdata))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                                                                >> 4U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 4U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                                                                >> 8U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 8U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                                                                >> 0xcU)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0xcU))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                                                                >> 0x10U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x10U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                                                                >> 0x14U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x14U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                                                                >> 0x18U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x18U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[0U] 
                                                             >> 0x1cU))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x1cU))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U]))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x20U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                                                                >> 4U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x24U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                                                                >> 8U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x28U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                                                                >> 0xcU)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x2cU))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                                                                >> 0x10U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x30U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                                                                >> 0x14U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x34U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (0xfU 
                                                             & (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                                                                >> 0x18U)))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x38U))))))));
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata 
            = (0xfffU & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata) 
                         + VL_MULS_III(12, (0xfffU 
                                            & VL_EXTENDS_II(12,4, 
                                                            (vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec[1U] 
                                                             >> 0x1cU))), 
                                       (0xfffU & VL_EXTENDS_II(12,4, 
                                                               (0xfU 
                                                                & (IData)(
                                                                          (vlSelf->hw2_tb__DOT__dut__DOT__rdata 
                                                                           >> 0x3cU))))))));
    } else {
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata = 0U;
    }
}

void Vhw2_tb___024root___eval_nba(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vhw2_tb___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vhw2_tb___024root___nba_sequent__TOP__1(vlSelf);
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vhw2_tb___024root___nba_sequent__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
    }
    if ((3ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vhw2_tb___024root___nba_comb__TOP__0(vlSelf);
    }
    if ((0xfULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vhw2_tb___024root___act_comb__TOP__0(vlSelf);
    }
}

void Vhw2_tb___024root___timing_commit(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___timing_commit\n"); );
    // Body
    if ((! (2ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_hc2b181af__0.commit("@(posedge hw2_tb.clk)");
    }
    if ((! (8ULL & vlSelf->__VactTriggered.word(0U)))) {
        vlSelf->__VtrigSched_hc2b18262__0.commit("@(negedge hw2_tb.clk)");
    }
}

void Vhw2_tb___024root___timing_resume(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___timing_resume\n"); );
    // Body
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_hc2b181af__0.resume("@(posedge hw2_tb.clk)");
    }
    if ((8ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VtrigSched_hc2b18262__0.resume("@(negedge hw2_tb.clk)");
    }
    if ((4ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vhw2_tb___024root___eval_triggers__act(Vhw2_tb___024root* vlSelf);

bool Vhw2_tb___024root___eval_phase__act(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<4> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vhw2_tb___024root___eval_triggers__act(vlSelf);
    Vhw2_tb___024root___timing_commit(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vhw2_tb___024root___timing_resume(vlSelf);
        Vhw2_tb___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vhw2_tb___024root___eval_phase__nba(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vhw2_tb___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhw2_tb___024root___dump_triggers__nba(Vhw2_tb___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vhw2_tb___024root___dump_triggers__act(Vhw2_tb___024root* vlSelf);
#endif  // VL_DEBUG

void Vhw2_tb___024root___eval(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vhw2_tb___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("hw2_tb.v", 7, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vhw2_tb___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("hw2_tb.v", 7, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vhw2_tb___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vhw2_tb___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vhw2_tb___024root___eval_debug_assertions(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
