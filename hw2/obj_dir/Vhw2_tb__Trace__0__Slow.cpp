// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vhw2_tb__Syms.h"


VL_ATTR_COLD void Vhw2_tb___024root__trace_init_sub__TOP__0(Vhw2_tb___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->pushPrefix("hw2_tb", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+36,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"start",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"M",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+4,0,"N",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBit(c+29,0,"finish",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+5,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+43,0,"j",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+6,0,"cycle_count",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBit(c+7,0,"tb_passed",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("dut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+36,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"start",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"M",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+4,0,"N",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBit(c+29,0,"finish",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declQuad(c+37,0,"rdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declBus(c+30,0,"wdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+31,0,"raddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+32,0,"waddr",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBit(c+39,0,"ren",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+33,0,"wen",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("u_input_image", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+44,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+45,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+46,0,"RAM_SIZE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declArray(c+47,0,"MEM_FILE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 119,0);
    tracep->declBit(c+36,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+51,0,"we",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+39,0,"en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+31,0,"addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declQuad(c+52,0,"data_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declQuad(c+37,0,"data_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->popPrefix();
    tracep->pushPrefix("u_output_image", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+54,0,"DATA_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+55,0,"ADDR_WIDTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+44,0,"RAM_SIZE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+56,0,"MEM_FILE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+36,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+33,0,"we",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+33,0,"en",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+32,0,"addr",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+30,0,"data_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+40,0,"data_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->popPrefix();
    tracep->pushPrefix("u_vmm", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+36,0,"clk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"rst",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"start",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"M",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+4,0,"N",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declQuad(c+37,0,"rdata",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 63,0);
    tracep->declBit(c+39,0,"ren",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+33,0,"wen",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+31,0,"raddr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 8,0);
    tracep->declBus(c+32,0,"waddr",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+30,0,"wdata",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBit(c+29,0,"finish",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+8,0,"col_counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+9,0,"row_counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+10,0,"vec_counter",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+11,0,"M_buf",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declBus(c+12,0,"N_buf",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 5,0);
    tracep->declArray(c+13,0,"vec",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declArray(c+21,0,"vec_shadow",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 255,0);
    tracep->declBus(c+41,0,"next_wdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+34,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+57,0,"S_IDLE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+58,0,"S_WAIT_SRAM",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+59,0,"S_RD_VEC",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+60,0,"S_VMM",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+61,0,"S_OUTPUT",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+62,0,"S_DONE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+35,0,"state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->declBus(c+42,0,"n_state",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 2,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vhw2_tb___024root__trace_init_top(Vhw2_tb___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_init_top\n"); );
    // Body
    Vhw2_tb___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vhw2_tb___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vhw2_tb___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vhw2_tb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vhw2_tb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vhw2_tb___024root__trace_register(Vhw2_tb___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vhw2_tb___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vhw2_tb___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vhw2_tb___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vhw2_tb___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vhw2_tb___024root__trace_const_0_sub_0(Vhw2_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vhw2_tb___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_const_0\n"); );
    // Init
    Vhw2_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vhw2_tb___024root*>(voidSelf);
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vhw2_tb___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vhw2_tb___024root__trace_const_0_sub_0(Vhw2_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_const_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    VlWide<4>/*127:0*/ __Vtemp_1;
    // Body
    bufp->fullIData(oldp+43,(vlSelf->hw2_tb__DOT__j),32);
    bufp->fullIData(oldp+44,(0x40U),32);
    bufp->fullIData(oldp+45,(9U),32);
    bufp->fullIData(oldp+46,(0x104U),32);
    __Vtemp_1[0U] = 0x2e6d656dU;
    __Vtemp_1[1U] = 0x6d616765U;
    __Vtemp_1[2U] = 0x75745f69U;
    __Vtemp_1[3U] = 0x696e70U;
    bufp->fullWData(oldp+47,(__Vtemp_1),120);
    bufp->fullBit(oldp+51,(0U));
    bufp->fullQData(oldp+52,(0ULL),64);
    bufp->fullIData(oldp+54,(0xcU),32);
    bufp->fullIData(oldp+55,(6U),32);
    bufp->fullCData(oldp+56,(0U),8);
    bufp->fullIData(oldp+57,(0U),32);
    bufp->fullIData(oldp+58,(1U),32);
    bufp->fullIData(oldp+59,(2U),32);
    bufp->fullIData(oldp+60,(3U),32);
    bufp->fullIData(oldp+61,(4U),32);
    bufp->fullIData(oldp+62,(5U),32);
}

VL_ATTR_COLD void Vhw2_tb___024root__trace_full_0_sub_0(Vhw2_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vhw2_tb___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_full_0\n"); );
    // Init
    Vhw2_tb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vhw2_tb___024root*>(voidSelf);
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vhw2_tb___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vhw2_tb___024root__trace_full_0_sub_0(Vhw2_tb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vhw2_tb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhw2_tb___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelf->hw2_tb__DOT__rst));
    bufp->fullBit(oldp+2,(vlSelf->hw2_tb__DOT__start));
    bufp->fullCData(oldp+3,(vlSelf->hw2_tb__DOT__M),6);
    bufp->fullCData(oldp+4,(vlSelf->hw2_tb__DOT__N),6);
    bufp->fullIData(oldp+5,(vlSelf->hw2_tb__DOT__i),32);
    bufp->fullIData(oldp+6,(vlSelf->hw2_tb__DOT__cycle_count),32);
    bufp->fullBit(oldp+7,(vlSelf->hw2_tb__DOT__tb_passed));
    bufp->fullCData(oldp+8,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__col_counter),6);
    bufp->fullCData(oldp+9,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__row_counter),2);
    bufp->fullCData(oldp+10,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter),2);
    bufp->fullCData(oldp+11,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf),6);
    bufp->fullCData(oldp+12,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__N_buf),6);
    bufp->fullWData(oldp+13,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec),256);
    bufp->fullWData(oldp+21,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_shadow),256);
    bufp->fullBit(oldp+29,((5U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))));
    bufp->fullSData(oldp+30,(vlSelf->hw2_tb__DOT__dut__DOT__wdata),12);
    bufp->fullSData(oldp+31,(vlSelf->hw2_tb__DOT__dut__DOT__raddr),9);
    bufp->fullCData(oldp+32,(vlSelf->hw2_tb__DOT__dut__DOT__waddr),6);
    bufp->fullBit(oldp+33,((4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))));
    bufp->fullIData(oldp+34,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__i),32);
    bufp->fullCData(oldp+35,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state),3);
    bufp->fullBit(oldp+36,(vlSelf->hw2_tb__DOT__clk));
    bufp->fullQData(oldp+37,(vlSelf->hw2_tb__DOT__dut__DOT__rdata),64);
    bufp->fullBit(oldp+39,((((2U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state)) 
                             & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter) 
                                < (3U & ((IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__M_buf) 
                                         >> 4U)))) 
                            | (4U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state)))));
    bufp->fullSData(oldp+40,(vlSelf->hw2_tb__DOT__dut__DOT__u_output_image__DOT__data_o),12);
    bufp->fullSData(oldp+41,(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__next_wdata),12);
    bufp->fullCData(oldp+42,((7U & ((0U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                     ? ((IData)(vlSelf->hw2_tb__DOT__start)
                                         ? 1U : 0U)
                                     : ((1U == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                         ? 2U : ((2U 
                                                  == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__state))
                                                  ? 
                                                 ((3U 
                                                   == (IData)(vlSelf->hw2_tb__DOT__dut__DOT__u_vmm__DOT__vec_counter))
                                                   ? 3U
                                                   : 2U)
                                                  : 
                                                 ((3U 
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
                                                    : 0U))))))),3);
}
