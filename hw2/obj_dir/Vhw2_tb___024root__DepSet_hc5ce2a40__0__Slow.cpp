// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhw2_tb.h for the primary calling header

#include "Vhw2_tb__pch.h"
#include "Vhw2_tb___024root.h"

VL_ATTR_COLD void Vhw2_tb___024root___eval_static__TOP(Vhw2_tb___024root* vlSelf);

VL_ATTR_COLD void Vhw2_tb___024root___eval_static(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_static\n"); );
    // Body
    Vhw2_tb___024root___eval_static__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[4U] = 1U;
    vlSelf->__Vm_traceActivity[3U] = 1U;
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->__Vm_traceActivity[1U] = 1U;
    vlSelf->__Vm_traceActivity[0U] = 1U;
}

VL_ATTR_COLD void Vhw2_tb___024root___eval_static__TOP(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_static__TOP\n"); );
    // Body
    vlSelf->hw2_tb__DOT__clk = 0U;
    vlSelf->hw2_tb__DOT__cycle_count = 0U;
    vlSelf->hw2_tb__DOT__tb_passed = 1U;
}

VL_ATTR_COLD void Vhw2_tb___024root___eval_initial__TOP(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_initial__TOP\n"); );
    // Init
    VlWide<4>/*127:0*/ __Vtemp_1;
    // Body
    __Vtemp_1[0U] = 0x2e6d656dU;
    __Vtemp_1[1U] = 0x6d616765U;
    __Vtemp_1[2U] = 0x75745f69U;
    __Vtemp_1[3U] = 0x696e70U;
    VL_READMEM_N(true, 64, 260, 0, VL_CVT_PACK_STR_NW(4, __Vtemp_1)
                 ,  &(vlSelf->hw2_tb__DOT__dut__DOT__u_input_image__DOT__RAM)
                 , 0, ~0ULL);
}

VL_ATTR_COLD void Vhw2_tb___024root___eval_final(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhw2_tb___024root___dump_triggers__stl(Vhw2_tb___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vhw2_tb___024root___eval_phase__stl(Vhw2_tb___024root* vlSelf);

VL_ATTR_COLD void Vhw2_tb___024root___eval_settle(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vhw2_tb___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("hw2_tb.v", 7, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vhw2_tb___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhw2_tb___024root___dump_triggers__stl(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vhw2_tb___024root___stl_sequent__TOP__0(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___stl_sequent__TOP__0\n"); );
    // Body
    if ((3U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))) {
        vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__i = 0x10U;
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

VL_ATTR_COLD void Vhw2_tb___024root___eval_stl(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vhw2_tb___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vhw2_tb___024root___eval_triggers__stl(Vhw2_tb___024root* vlSelf);

VL_ATTR_COLD bool Vhw2_tb___024root___eval_phase__stl(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vhw2_tb___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vhw2_tb___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhw2_tb___024root___dump_triggers__act(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge hw2_tb.clk or posedge hw2_tb.rst)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(posedge hw2_tb.clk)\n");
    }
    if ((4ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
    if ((8ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 3 is active: @(negedge hw2_tb.clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhw2_tb___024root___dump_triggers__nba(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge hw2_tb.clk or posedge hw2_tb.rst)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(posedge hw2_tb.clk)\n");
    }
    if ((4ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
    if ((8ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 3 is active: @(negedge hw2_tb.clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vhw2_tb___024root___ctor_var_reset(Vhw2_tb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->hw2_tb__DOT__clk = VL_RAND_RESET_I(1);
    vlSelf->hw2_tb__DOT__rst = VL_RAND_RESET_I(1);
    vlSelf->hw2_tb__DOT__start = VL_RAND_RESET_I(1);
    vlSelf->hw2_tb__DOT__M = VL_RAND_RESET_I(6);
    vlSelf->hw2_tb__DOT__N = VL_RAND_RESET_I(6);
    vlSelf->hw2_tb__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->hw2_tb__DOT__j = VL_RAND_RESET_I(32);
    vlSelf->hw2_tb__DOT__cycle_count = VL_RAND_RESET_I(32);
    vlSelf->hw2_tb__DOT__tb_passed = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 64; ++__Vi0) {
        vlSelf->hw2_tb__DOT__golden[__Vi0] = VL_RAND_RESET_I(12);
    }
    vlSelf->hw2_tb__DOT__dut__DOT__rdata = VL_RAND_RESET_Q(64);
    vlSelf->hw2_tb__DOT__dut__DOT__wdata = VL_RAND_RESET_I(12);
    vlSelf->hw2_tb__DOT__dut__DOT__raddr = VL_RAND_RESET_I(9);
    vlSelf->hw2_tb__DOT__dut__DOT__waddr = VL_RAND_RESET_I(6);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter = VL_RAND_RESET_I(6);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter = VL_RAND_RESET_I(2);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter = VL_RAND_RESET_I(2);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf = VL_RAND_RESET_I(6);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf = VL_RAND_RESET_I(6);
    VL_RAND_RESET_W(256, vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec);
    VL_RAND_RESET_W(256, vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata = VL_RAND_RESET_I(12);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__i = VL_RAND_RESET_I(32);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state = VL_RAND_RESET_I(3);
    vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__n_state = VL_RAND_RESET_I(3);
    for (int __Vi0 = 0; __Vi0 < 260; ++__Vi0) {
        vlSelf->hw2_tb__DOT__dut__DOT__u_input_image__DOT__RAM[__Vi0] = VL_RAND_RESET_Q(64);
    }
    vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__data_o = VL_RAND_RESET_I(12);
    for (int __Vi0 = 0; __Vi0 < 64; ++__Vi0) {
        vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__RAM[__Vi0] = VL_RAND_RESET_I(12);
    }
    vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__raddr = VL_RAND_RESET_I(9);
    vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__waddr = VL_RAND_RESET_I(6);
    vlSelf->__Vdly__hw2_tb__DOT__dut__DOT__wdata = VL_RAND_RESET_I(12);
    vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__clk__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__hw2_tb__DOT__rst__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 5; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
