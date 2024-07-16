// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Jul 17 00:59:07 2024
//
// Verilog Description of module top
//

module top (RGBIN, pllInClock, pixelClock, lcdVsync, lcdHsync, lcdDe, 
            lvdsOutClk, lvdsLine0, lvdsLine1, lvdsLine2) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[8:11])
    input [7:0]RGBIN;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    input pllInClock /* synthesis black_box_pad_pin=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[37:47])
    input pixelClock;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[55:65])
    input lcdVsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[73:81])
    input lcdHsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[89:97])
    input lcdDe;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[105:110])
    output lvdsOutClk;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[119:129])
    output lvdsLine0;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[138:147])
    output lvdsLine1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[156:165])
    output lvdsLine2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[174:183])
    
    wire pllOutClock /* synthesis is_clock=1, SET_AS_NETWORK=pllOutClock */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    wire RGBIN_c_7, RGBIN_c_6, RGBIN_c_5, RGBIN_c_4, RGBIN_c_3, RGBIN_c_2, 
        RGBIN_c_1, RGBIN_c_0, lcdVsync_c, lcdHsync_c, lcdDe_c, lvdsOutClk_c, 
        lvdsLine0_c, lvdsLine1_c, lvdsLine2_c, VCC_net, GND_net;
    
    VHI i5 (.Z(VCC_net));
    IB lcdDe_pad (.I(lcdDe), .O(lcdDe_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[105:110])
    parallelToLvds myParallelToLvds (.pllOutClock(pllOutClock), .RGBIN_c_6(RGBIN_c_6), 
            .RGBIN_c_7(RGBIN_c_7), .lcdHsync_c(lcdHsync_c), .lcdVsync_c(lcdVsync_c), 
            .lcdDe_c(lcdDe_c), .RGBIN_c_0(RGBIN_c_0), .RGBIN_c_1(RGBIN_c_1), 
            .RGBIN_c_2(RGBIN_c_2), .RGBIN_c_3(RGBIN_c_3), .RGBIN_c_4(RGBIN_c_4), 
            .lvdsOutClk_c(lvdsOutClk_c), .RGBIN_c_5(RGBIN_c_5), .lvdsLine2_c(lvdsLine2_c), 
            .lvdsLine0_c(lvdsLine0_c), .lvdsLine1_c(lvdsLine1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[18] 27[4])
    IB Inst1_IB (.I(pllInClock), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=9, LSE_RLINE=13 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    IB lcdHsync_pad (.I(lcdHsync), .O(lcdHsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[89:97])
    OB lvdsLine1_pad (.I(lvdsLine1_c), .O(lvdsLine1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[156:165])
    IB lcdVsync_pad (.I(lcdVsync), .O(lcdVsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[73:81])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    OB lvdsLine0_pad (.I(lvdsLine0_c), .O(lvdsLine0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[138:147])
    IB RGBIN_pad_6 (.I(RGBIN[6]), .O(RGBIN_c_6));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_2 (.I(RGBIN[2]), .O(RGBIN_c_2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_7 (.I(RGBIN[7]), .O(RGBIN_c_7));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    OB lvdsOutClk_pad (.I(lvdsOutClk_c), .O(lvdsOutClk));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[119:129])
    IB RGBIN_pad_5 (.I(RGBIN[5]), .O(RGBIN_c_5));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_3 (.I(RGBIN[3]), .O(RGBIN_c_3));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_0 (.I(RGBIN[0]), .O(RGBIN_c_0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    OB lvdsLine2_pad (.I(lvdsLine2_c), .O(lvdsLine2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[174:183])
    IB RGBIN_pad_1 (.I(RGBIN[1]), .O(RGBIN_c_1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    lvdsClk myLvdsPll (.pllOutClock(pllOutClock), .buf_CLKI(buf_CLKI), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(9[11] 13[4])
    VLO i1 (.Z(GND_net));
    IB RGBIN_pad_4 (.I(RGBIN[4]), .O(RGBIN_c_4));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    
endmodule
//
// Verilog Description of module parallelToLvds
//

module parallelToLvds (pllOutClock, RGBIN_c_6, RGBIN_c_7, lcdHsync_c, 
            lcdVsync_c, lcdDe_c, RGBIN_c_0, RGBIN_c_1, RGBIN_c_2, 
            RGBIN_c_3, RGBIN_c_4, lvdsOutClk_c, RGBIN_c_5, lvdsLine2_c, 
            lvdsLine0_c, lvdsLine1_c) /* synthesis syn_module_defined=1 */ ;
    input pllOutClock;
    input RGBIN_c_6;
    input RGBIN_c_7;
    input lcdHsync_c;
    input lcdVsync_c;
    input lcdDe_c;
    input RGBIN_c_0;
    input RGBIN_c_1;
    input RGBIN_c_2;
    input RGBIN_c_3;
    input RGBIN_c_4;
    output lvdsOutClk_c;
    input RGBIN_c_5;
    output lvdsLine2_c;
    output lvdsLine0_c;
    output lvdsLine1_c;
    
    wire pllOutClock /* synthesis is_clock=1, SET_AS_NETWORK=pllOutClock */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
    wire [6:0]lvdsTest3;   // c:/users/borna/documents/projects/fpga/blink/blink.v(48[12:21])
    wire [3:0]bitCounter;   // c:/users/borna/documents/projects/fpga/blink/blink.v(45[12:22])
    
    wire n168;
    wire [6:0]lvdsTest2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(47[12:21])
    
    wire n2;
    wire [6:0]lvdsTest1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(46[12:21])
    
    wire lvdsClock_N_14, bitCounter_3__N_12;
    wire [31:0]bitCounter_3__N_8;
    
    wire n170, n4, n169, n193, n194;
    
    LUT4 i141_3_lut (.A(lvdsTest3[0]), .B(lvdsTest3[1]), .C(bitCounter[0]), 
         .Z(n168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i141_3_lut.init = 16'hcaca;
    LUT4 bitCounter_2__I_0_44_i2_3_lut (.A(lvdsTest2[2]), .B(lvdsTest2[3]), 
         .C(bitCounter[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(52[30:40])
    defparam bitCounter_2__I_0_44_i2_3_lut.init = 16'hcaca;
    FD1S3AX lvdsTest3_4__31 (.D(RGBIN_c_6), .CK(pllOutClock), .Q(lvdsTest3[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest3_4__31.GSR = "ENABLED";
    FD1S3AX lvdsTest3_3__32 (.D(RGBIN_c_7), .CK(pllOutClock), .Q(lvdsTest3[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest3_3__32.GSR = "ENABLED";
    FD1S3AX lvdsTest3_2__33 (.D(lcdHsync_c), .CK(pllOutClock), .Q(lvdsTest3[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest3_2__33.GSR = "ENABLED";
    FD1S3AX lvdsTest3_1__34 (.D(lcdVsync_c), .CK(pllOutClock), .Q(lvdsTest3[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest3_1__34.GSR = "ENABLED";
    FD1S3AX lvdsTest3_0__35 (.D(lcdDe_c), .CK(pllOutClock), .Q(lvdsTest3[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest3_0__35.GSR = "ENABLED";
    FD1S3AX lvdsTest1_3__36 (.D(RGBIN_c_0), .CK(pllOutClock), .Q(lvdsTest1[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest1_3__36.GSR = "ENABLED";
    FD1S3AX lvdsTest1_2__37 (.D(RGBIN_c_1), .CK(pllOutClock), .Q(lvdsTest1[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest1_2__37.GSR = "ENABLED";
    FD1S3AX lvdsTest1_1__38 (.D(RGBIN_c_2), .CK(pllOutClock), .Q(lvdsTest1[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest1_1__38.GSR = "ENABLED";
    FD1S3AX lvdsTest2_3__39 (.D(RGBIN_c_3), .CK(pllOutClock), .Q(lvdsTest2[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest2_3__39.GSR = "ENABLED";
    FD1S3AX lvdsTest2_2__40 (.D(RGBIN_c_4), .CK(pllOutClock), .Q(lvdsTest2[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest2_2__40.GSR = "ENABLED";
    FD1S3AX lvdsClockReg_41 (.D(lvdsClock_N_14), .CK(pllOutClock), .Q(lvdsOutClk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsClockReg_41.GSR = "ENABLED";
    FD1S3AX lvdsTest3_5__30 (.D(RGBIN_c_5), .CK(pllOutClock), .Q(lvdsTest3[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam lvdsTest3_5__30.GSR = "ENABLED";
    FD1S3IX bitCounter__i2 (.D(bitCounter_3__N_8[2]), .CK(pllOutClock), 
            .CD(bitCounter_3__N_12), .Q(bitCounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam bitCounter__i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(bitCounter[1]), .B(bitCounter[2]), .Z(bitCounter_3__N_12)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX bitCounter__i1 (.D(bitCounter_3__N_8[1]), .CK(pllOutClock), 
            .CD(bitCounter_3__N_12), .Q(bitCounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam bitCounter__i1.GSR = "ENABLED";
    LUT4 bitCounter_2__I_0_i7_4_lut (.A(n170), .B(n4), .C(bitCounter[2]), 
         .D(bitCounter[1]), .Z(lvdsLine2_c)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(53[30:40])
    defparam bitCounter_2__I_0_i7_4_lut.init = 16'h0aca;
    LUT4 i30_3_lut (.A(bitCounter[2]), .B(bitCounter[1]), .C(bitCounter[0]), 
         .Z(bitCounter_3__N_8[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[16:30])
    defparam i30_3_lut.init = 16'h6a6a;
    LUT4 i23_2_lut (.A(bitCounter[1]), .B(bitCounter[0]), .Z(bitCounter_3__N_8[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(75[16:30])
    defparam i23_2_lut.init = 16'h6666;
    FD1S3IX bitCounter__i0 (.D(bitCounter_3__N_8[0]), .CK(pllOutClock), 
            .CD(bitCounter_3__N_12), .Q(bitCounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 79[5])
    defparam bitCounter__i0.GSR = "ENABLED";
    PFUMX i143 (.BLUT(n168), .ALUT(n169), .C0(bitCounter[1]), .Z(n170));
    LUT4 i45_1_lut (.A(bitCounter[0]), .Z(bitCounter_3__N_8[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(69[7:21])
    defparam i45_1_lut.init = 16'h5555;
    PFUMX i159 (.BLUT(n193), .ALUT(n194), .C0(bitCounter[1]), .Z(lvdsLine0_c));
    LUT4 n1_bdd_4_lut_then_4_lut (.A(lvdsTest1[3]), .B(lvdsTest1[2]), .C(bitCounter[2]), 
         .D(bitCounter[0]), .Z(n194)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n1_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 bitCounter_2__I_0_i4_3_lut (.A(lvdsTest3[4]), .B(lvdsTest3[5]), 
         .C(bitCounter[0]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(53[30:40])
    defparam bitCounter_2__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 n1_bdd_4_lut_else_4_lut (.A(lvdsTest1[1]), .B(bitCounter[2]), .C(bitCounter[0]), 
         .Z(n193)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n1_bdd_4_lut_else_4_lut.init = 16'h2020;
    LUT4 i13_3_lut (.A(bitCounter[0]), .B(bitCounter[2]), .C(bitCounter[1]), 
         .Z(lvdsClock_N_14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(69[7:39])
    defparam i13_3_lut.init = 16'hcbcb;
    LUT4 i2_3_lut (.A(bitCounter[2]), .B(n2), .C(bitCounter[1]), .Z(lvdsLine1_c)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(52[30:40])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i142_3_lut (.A(lvdsTest3[2]), .B(lvdsTest3[3]), .C(bitCounter[0]), 
         .Z(n169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i142_3_lut.init = 16'hcaca;
    
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
    
    wire pllOutClock /* synthesis is_clock=1, SET_AS_NETWORK=pllOutClock */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(pllOutClock), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(pllOutClock)) /* synthesis FREQUENCY_PIN_CLKOP="336.000000", FREQUENCY_PIN_CLKI="48.000000", ICP_CURRENT="13", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=9, LSE_RLINE=13 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(9[11] 13[4])
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
