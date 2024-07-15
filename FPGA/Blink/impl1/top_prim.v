// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Jul 16 00:59:31 2024
//
// Verilog Description of module top
//

module top (sw, pllInClock, pixelClock, lcdVsync, lcdHsync, lcdDe, 
            lvdsOutClk, lvdsLine0, lvdsLine1, lvdsLine2) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[8:11])
    input [3:0]sw;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[24:26])
    input pllInClock /* synthesis black_box_pad_pin=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[34:44])
    input pixelClock;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[52:62])
    input lcdVsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[70:78])
    input lcdHsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[86:94])
    input lcdDe;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[102:107])
    output lvdsOutClk;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[116:126])
    output lvdsLine0;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[135:144])
    output lvdsLine1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[153:162])
    output lvdsLine2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[171:180])
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    wire sw_c_2, sw_c_1, sw_c_0, lcdVsync_c, lcdHsync_c, lcdDe_c, 
        lvdsOutClk_c, lvdsLine0_c, lvdsLine1_c, lvdsLine2_c, VCC_net, 
        GND_net;
    
    VHI i5 (.Z(VCC_net));
    parallelToLvds myParallelToLvds (.pllOutClock(pllOutClock), .sw_c_2(sw_c_2), 
            .lcdDe_c(lcdDe_c), .lvdsOutClk_c(lvdsOutClk_c), .lcdHsync_c(lcdHsync_c), 
            .lvdsLine0_c(lvdsLine0_c), .lcdVsync_c(lcdVsync_c), .sw_c_0(sw_c_0), 
            .lvdsLine1_c(lvdsLine1_c), .sw_c_1(sw_c_1), .lvdsLine2_c(lvdsLine2_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(21[18] 32[4])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[24:26])
    IB Inst1_IB (.I(pllInClock), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=14, LSE_RLINE=18 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    IB lcdDe_pad (.I(lcdDe), .O(lcdDe_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[102:107])
    IB lcdHsync_pad (.I(lcdHsync), .O(lcdHsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[86:94])
    IB lcdVsync_pad (.I(lcdVsync), .O(lcdVsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[70:78])
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[24:26])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[24:26])
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB lvdsLine2_pad (.I(lvdsLine2_c), .O(lvdsLine2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[171:180])
    OB lvdsLine1_pad (.I(lvdsLine1_c), .O(lvdsLine1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[153:162])
    VLO i1 (.Z(GND_net));
    OB lvdsLine0_pad (.I(lvdsLine0_c), .O(lvdsLine0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[135:144])
    OB lvdsOutClk_pad (.I(lvdsOutClk_c), .O(lvdsOutClk));   // c:/users/borna/documents/projects/fpga/blink/blink.v(12[116:126])
    lvdsClk myLvdsPll (.pllOutClock(pllOutClock), .buf_CLKI(buf_CLKI), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(14[11] 18[4])
    
endmodule
//
// Verilog Description of module parallelToLvds
//

module parallelToLvds (pllOutClock, sw_c_2, lcdDe_c, lvdsOutClk_c, lcdHsync_c, 
            lvdsLine0_c, lcdVsync_c, sw_c_0, lvdsLine1_c, sw_c_1, 
            lvdsLine2_c) /* synthesis syn_module_defined=1 */ ;
    input pllOutClock;
    input sw_c_2;
    input lcdDe_c;
    output lvdsOutClk_c;
    input lcdHsync_c;
    output lvdsLine0_c;
    input lcdVsync_c;
    input sw_c_0;
    output lvdsLine1_c;
    input sw_c_1;
    output lvdsLine2_c;
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[12:23])
    wire [3:0]bitCounter;   // c:/users/borna/documents/projects/fpga/blink/blink.v(49[13:23])
    
    wire lvdsClock_N_17;
    wire [6:0]lvdsTest3;   // c:/users/borna/documents/projects/fpga/blink/blink.v(52[13:22])
    wire [6:0]lvdsTest2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(51[13:22])
    
    wire n226;
    wire [3:0]n21;
    wire [6:0]lvdsTest1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(50[13:22])
    
    wire n3, n223, n227, bitCounter_3__N_15, n6, n224, n228;
    
    LUT4 i185_4_lut_4_lut (.A(bitCounter[0]), .B(bitCounter[1]), .C(bitCounter[2]), 
         .D(bitCounter[3]), .Z(lvdsClock_N_17)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B ((D)+!C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[31:41])
    defparam i185_4_lut_4_lut.init = 16'hffe3;
    LUT4 lvdsTest3_0__bdd_4_lut (.A(lvdsTest3[2]), .B(lvdsTest2[1]), .C(bitCounter[2]), 
         .D(bitCounter[0]), .Z(n226)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C (D)+!C !(D))+!B))) */ ;
    defparam lvdsTest3_0__bdd_4_lut.init = 16'h0cca;
    LUT4 i121_2_lut_3_lut (.A(bitCounter[0]), .B(bitCounter[1]), .C(bitCounter[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(58[31:41])
    defparam i121_2_lut_3_lut.init = 16'h7878;
    FD1S3AX lvdsTest2_i1 (.D(sw_c_2), .CK(pllOutClock), .Q(lvdsTest2[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(61[10] 105[6])
    defparam lvdsTest2_i1.GSR = "ENABLED";
    LUT4 i54_3_lut_4_lut (.A(bitCounter[0]), .B(bitCounter[1]), .C(lvdsTest1[6]), 
         .D(lvdsTest1[0]), .Z(n3)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[31:41])
    defparam i54_3_lut_4_lut.init = 16'hf1e0;
    FD1S3AX lvdsTest3_i1 (.D(lcdDe_c), .CK(pllOutClock), .Q(lvdsTest3[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(61[10] 105[6])
    defparam lvdsTest3_i1.GSR = "ENABLED";
    FD1S3AX lvdsClockReg_0__30 (.D(lvdsClock_N_17), .CK(pllOutClock), .Q(lvdsOutClk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(61[10] 105[6])
    defparam lvdsClockReg_0__30.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i3 (.D(lcdHsync_c), .CK(pllOutClock), .Q(lvdsTest3[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(61[10] 105[6])
    defparam lvdsTest3_i3.GSR = "ENABLED";
    LUT4 i114_2_lut (.A(bitCounter[1]), .B(bitCounter[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam i114_2_lut.init = 16'h6666;
    LUT4 lvdsTest2_1__bdd_3_lut_196 (.A(lvdsTest1[0]), .B(bitCounter[1]), 
         .C(bitCounter[0]), .Z(n223)) /* synthesis lut_function=(!((B (C))+!A)) */ ;
    defparam lvdsTest2_1__bdd_3_lut_196.init = 16'h2a2a;
    LUT4 lvdsTest3_0__bdd_3_lut_201 (.A(lvdsTest3[0]), .B(lvdsTest3[1]), 
         .C(bitCounter[0]), .Z(n227)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam lvdsTest3_0__bdd_3_lut_201.init = 16'hcaca;
    LUT4 i28_4_lut (.A(bitCounter[0]), .B(bitCounter[3]), .C(bitCounter[2]), 
         .D(bitCounter[1]), .Z(bitCounter_3__N_15)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i28_4_lut.init = 16'heccc;
    PFUMX bitCounter_2__I_0_34_i7 (.BLUT(n3), .ALUT(n6), .C0(bitCounter[2]), 
          .Z(lvdsLine0_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;
    FD1S3AX lvdsTest3_i2 (.D(lcdVsync_c), .CK(pllOutClock), .Q(lvdsTest3[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(61[10] 105[6])
    defparam lvdsTest3_i2.GSR = "ENABLED";
    FD1S3AX lvdsTest1_i2 (.D(sw_c_0), .CK(pllOutClock), .Q(lvdsTest1[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(61[10] 105[6])
    defparam lvdsTest1_i2.GSR = "ENABLED";
    PFUMX i197 (.BLUT(n224), .ALUT(n223), .C0(bitCounter[2]), .Z(lvdsLine1_c));
    FD1S3IX bitCounter_14__i0 (.D(n21[0]), .CK(pllOutClock), .CD(bitCounter_3__N_15), 
            .Q(bitCounter[0]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_14__i0.GSR = "ENABLED";
    LUT4 i112_1_lut (.A(bitCounter[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam i112_1_lut.init = 16'h5555;
    FD1S3IX bitCounter_14__i1 (.D(n21[1]), .CK(pllOutClock), .CD(bitCounter_3__N_15), 
            .Q(bitCounter[1]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_14__i1.GSR = "ENABLED";
    FD1S3IX bitCounter_14__i3 (.D(n21[3]), .CK(pllOutClock), .CD(bitCounter_3__N_15), 
            .Q(bitCounter[3]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_14__i3.GSR = "ENABLED";
    LUT4 n227_bdd_3_lut (.A(n227), .B(lvdsTest2[1]), .C(bitCounter[2]), 
         .Z(n228)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n227_bdd_3_lut.init = 16'hcaca;
    FD1S3AX lvdsTest1_i1 (.D(sw_c_1), .CK(pllOutClock), .Q(lvdsTest1[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=21, LSE_RLINE=32 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(61[10] 105[6])
    defparam lvdsTest1_i1.GSR = "ENABLED";
    PFUMX i199 (.BLUT(n228), .ALUT(n226), .C0(bitCounter[1]), .Z(lvdsLine2_c));
    FD1S3IX bitCounter_14__i2 (.D(n21[2]), .CK(pllOutClock), .CD(bitCounter_3__N_15), 
            .Q(bitCounter[2]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_14__i2.GSR = "ENABLED";
    LUT4 i78_2_lut_3_lut (.A(bitCounter[0]), .B(bitCounter[1]), .C(lvdsTest1[6]), 
         .Z(n6)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(58[31:41])
    defparam i78_2_lut_3_lut.init = 16'h7070;
    LUT4 lvdsTest2_1__bdd_3_lut (.A(lvdsTest2[1]), .B(lvdsTest1[0]), .C(bitCounter[1]), 
         .Z(n224)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam lvdsTest2_1__bdd_3_lut.init = 16'hcaca;
    LUT4 i128_3_lut_4_lut (.A(bitCounter[0]), .B(bitCounter[1]), .C(bitCounter[2]), 
         .D(bitCounter[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(58[31:41])
    defparam i128_3_lut_4_lut.init = 16'h7f80;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module lvdsClk
//

module lvdsClk (pllOutClock, buf_CLKI, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output pllOutClock;
    input buf_CLKI;
    input GND_net;
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(pllOutClock), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(pllOutClock)) /* synthesis FREQUENCY_PIN_CLKOP="336.000000", FREQUENCY_PIN_CLKI="48.000000", ICP_CURRENT="13", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=14, LSE_RLINE=18 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(14[11] 18[4])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 7;
    defparam PLLInst_0.CLKOP_DIV = 2;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 1;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "USERCLOCK";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
