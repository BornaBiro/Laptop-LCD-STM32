// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Jul 16 18:41:42 2024
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
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    wire RGBIN_c_7, RGBIN_c_6, RGBIN_c_5, RGBIN_c_4, RGBIN_c_3, RGBIN_c_2, 
        RGBIN_c_1, RGBIN_c_0, lcdVsync_c, lcdHsync_c, lcdDe_c, lvdsOutClk_c, 
        lvdsLine0_c, lvdsLine1_c, lvdsLine2_c, VCC_net, GND_net;
    
    VHI i5 (.Z(VCC_net));
    parallelToLvds myParallelToLvds (.pllOutClock(pllOutClock), .RGBIN_c_6(RGBIN_c_6), 
            .lvdsLine1_c(lvdsLine1_c), .RGBIN_c_7(RGBIN_c_7), .lcdHsync_c(lcdHsync_c), 
            .lcdVsync_c(lcdVsync_c), .lcdDe_c(lcdDe_c), .RGBIN_c_0(RGBIN_c_0), 
            .RGBIN_c_1(RGBIN_c_1), .RGBIN_c_2(RGBIN_c_2), .RGBIN_c_3(RGBIN_c_3), 
            .RGBIN_c_4(RGBIN_c_4), .lvdsOutClk_c(lvdsOutClk_c), .RGBIN_c_5(RGBIN_c_5), 
            .lvdsLine2_c(lvdsLine2_c), .lvdsLine0_c(lvdsLine0_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[18] 27[4])
    IB Inst1_IB (.I(pllInClock), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=9, LSE_RLINE=13 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB lcdDe_pad (.I(lcdDe), .O(lcdDe_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[105:110])
    IB lcdHsync_pad (.I(lcdHsync), .O(lcdHsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[89:97])
    IB lcdVsync_pad (.I(lcdVsync), .O(lcdVsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[73:81])
    IB RGBIN_pad_0 (.I(RGBIN[0]), .O(RGBIN_c_0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_1 (.I(RGBIN[1]), .O(RGBIN_c_1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_2 (.I(RGBIN[2]), .O(RGBIN_c_2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_3 (.I(RGBIN[3]), .O(RGBIN_c_3));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_4 (.I(RGBIN[4]), .O(RGBIN_c_4));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_5 (.I(RGBIN[5]), .O(RGBIN_c_5));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    IB RGBIN_pad_6 (.I(RGBIN[6]), .O(RGBIN_c_6));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    VLO i1 (.Z(GND_net));
    OB lvdsLine2_pad (.I(lvdsLine2_c), .O(lvdsLine2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[174:183])
    OB lvdsLine1_pad (.I(lvdsLine1_c), .O(lvdsLine1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[156:165])
    IB RGBIN_pad_7 (.I(RGBIN[7]), .O(RGBIN_c_7));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[24:29])
    lvdsClk myLvdsPll (.pllOutClock(pllOutClock), .buf_CLKI(buf_CLKI), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(9[11] 13[4])
    OB lvdsLine0_pad (.I(lvdsLine0_c), .O(lvdsLine0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[138:147])
    OB lvdsOutClk_pad (.I(lvdsOutClk_c), .O(lvdsOutClk));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[119:129])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module parallelToLvds
//

module parallelToLvds (pllOutClock, RGBIN_c_6, lvdsLine1_c, RGBIN_c_7, 
            lcdHsync_c, lcdVsync_c, lcdDe_c, RGBIN_c_0, RGBIN_c_1, 
            RGBIN_c_2, RGBIN_c_3, RGBIN_c_4, lvdsOutClk_c, RGBIN_c_5, 
            lvdsLine2_c, lvdsLine0_c) /* synthesis syn_module_defined=1 */ ;
    input pllOutClock;
    input RGBIN_c_6;
    output lvdsLine1_c;
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
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
    wire [6:0]lvdsTest2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(47[12:21])
    wire [3:0]bitCounter;   // c:/users/borna/documents/projects/fpga/blink/blink.v(45[12:22])
    
    wire n2;
    wire [6:0]lvdsTest3;   // c:/users/borna/documents/projects/fpga/blink/blink.v(48[12:21])
    
    wire n209;
    wire [6:0]lvdsTest1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(46[12:21])
    
    wire lvdsClock_N_14, bitCounter_3__N_12;
    wire [3:0]n21;
    
    wire n210, n207, n213, n208, n214;
    
    LUT4 bitCounter_2__I_0_45_i2_3_lut (.A(lvdsTest2[2]), .B(lvdsTest2[3]), 
         .C(bitCounter[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(52[30:40])
    defparam bitCounter_2__I_0_45_i2_3_lut.init = 16'hcaca;
    FD1S3AX lvdsTest3_4__31 (.D(RGBIN_c_6), .CK(pllOutClock), .Q(lvdsTest3[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest3_4__31.GSR = "ENABLED";
    LUT4 lvdsTest3_0__bdd_3_lut_183 (.A(lvdsTest3[0]), .B(bitCounter[0]), 
         .C(lvdsTest3[1]), .Z(n209)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest3_0__bdd_3_lut_183.init = 16'he2e2;
    LUT4 i2_3_lut (.A(bitCounter[1]), .B(bitCounter[2]), .C(n2), .Z(lvdsLine1_c)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(52[30:40])
    defparam i2_3_lut.init = 16'h2020;
    FD1S3AX lvdsTest3_3__32 (.D(RGBIN_c_7), .CK(pllOutClock), .Q(lvdsTest3[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest3_3__32.GSR = "ENABLED";
    FD1S3AX lvdsTest3_2__33 (.D(lcdHsync_c), .CK(pllOutClock), .Q(lvdsTest3[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest3_2__33.GSR = "ENABLED";
    FD1S3AX lvdsTest3_1__34 (.D(lcdVsync_c), .CK(pllOutClock), .Q(lvdsTest3[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest3_1__34.GSR = "ENABLED";
    FD1S3AX lvdsTest3_0__35 (.D(lcdDe_c), .CK(pllOutClock), .Q(lvdsTest3[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest3_0__35.GSR = "ENABLED";
    FD1S3AX lvdsTest1_3__36 (.D(RGBIN_c_0), .CK(pllOutClock), .Q(lvdsTest1[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest1_3__36.GSR = "ENABLED";
    FD1S3AX lvdsTest1_2__37 (.D(RGBIN_c_1), .CK(pllOutClock), .Q(lvdsTest1[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest1_2__37.GSR = "ENABLED";
    FD1S3AX lvdsTest1_1__38 (.D(RGBIN_c_2), .CK(pllOutClock), .Q(lvdsTest1[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest1_1__38.GSR = "ENABLED";
    FD1S3AX lvdsTest2_3__39 (.D(RGBIN_c_3), .CK(pllOutClock), .Q(lvdsTest2[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest2_3__39.GSR = "ENABLED";
    FD1S3AX lvdsTest2_2__40 (.D(RGBIN_c_4), .CK(pllOutClock), .Q(lvdsTest2[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest2_2__40.GSR = "ENABLED";
    FD1S3AX lvdsClockReg_0__41 (.D(lvdsClock_N_14), .CK(pllOutClock), .Q(lvdsOutClk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsClockReg_0__41.GSR = "ENABLED";
    FD1S3AX lvdsTest3_5__30 (.D(RGBIN_c_5), .CK(pllOutClock), .Q(lvdsTest3[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=27 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(56[9] 103[5])
    defparam lvdsTest3_5__30.GSR = "ENABLED";
    FD1S3IX bitCounter_11__i3 (.D(n21[3]), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[3]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_11__i3.GSR = "ENABLED";
    LUT4 i112_2_lut_3_lut (.A(bitCounter[1]), .B(bitCounter[0]), .C(bitCounter[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam i112_2_lut_3_lut.init = 16'h7878;
    LUT4 n210_bdd_3_lut (.A(n210), .B(n207), .C(bitCounter[1]), .Z(lvdsLine2_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n210_bdd_3_lut.init = 16'hcaca;
    LUT4 i103_1_lut (.A(bitCounter[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam i103_1_lut.init = 16'h5555;
    LUT4 lvdsTest3_2__bdd_4_lut_182 (.A(lvdsTest3[2]), .B(bitCounter[2]), 
         .C(bitCounter[0]), .D(lvdsTest3[3]), .Z(n207)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam lvdsTest3_2__bdd_4_lut_182.init = 16'h3202;
    LUT4 i105_2_lut (.A(bitCounter[1]), .B(bitCounter[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam i105_2_lut.init = 16'h6666;
    LUT4 n1_bdd_4_lut_else_4_lut (.A(lvdsTest1[1]), .B(bitCounter[2]), .C(bitCounter[0]), 
         .Z(n213)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n1_bdd_4_lut_else_4_lut.init = 16'h2020;
    FD1S3IX bitCounter_11__i2 (.D(n21[2]), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[2]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_11__i2.GSR = "ENABLED";
    FD1S3IX bitCounter_11__i1 (.D(n21[1]), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[1]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_11__i1.GSR = "ENABLED";
    PFUMX i178 (.BLUT(n209), .ALUT(n208), .C0(bitCounter[2]), .Z(n210));
    FD1S3IX bitCounter_11__i0 (.D(n21[0]), .CK(pllOutClock), .CD(bitCounter_3__N_12), 
            .Q(bitCounter[0]));   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam bitCounter_11__i0.GSR = "ENABLED";
    LUT4 i169_4_lut (.A(bitCounter[3]), .B(bitCounter[1]), .C(bitCounter[0]), 
         .D(bitCounter[2]), .Z(lvdsClock_N_14)) /* synthesis lut_function=(A+(B (D)+!B (C+!(D)))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(95[12] 97[6])
    defparam i169_4_lut.init = 16'hfebb;
    LUT4 i25_4_lut (.A(bitCounter[0]), .B(bitCounter[3]), .C(bitCounter[2]), 
         .D(bitCounter[1]), .Z(bitCounter_3__N_12)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i25_4_lut.init = 16'heccc;
    LUT4 i119_3_lut_4_lut (.A(bitCounter[1]), .B(bitCounter[0]), .C(bitCounter[2]), 
         .D(bitCounter[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(99[17:31])
    defparam i119_3_lut_4_lut.init = 16'h7f80;
    LUT4 n1_bdd_4_lut_then_4_lut (.A(lvdsTest1[3]), .B(lvdsTest1[2]), .C(bitCounter[2]), 
         .D(bitCounter[0]), .Z(n214)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n1_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 lvdsTest3_0__bdd_3_lut_177 (.A(lvdsTest3[4]), .B(lvdsTest3[5]), 
         .C(bitCounter[0]), .Z(n208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam lvdsTest3_0__bdd_3_lut_177.init = 16'hcaca;
    PFUMX i180 (.BLUT(n213), .ALUT(n214), .C0(bitCounter[1]), .Z(lvdsLine0_c));
    
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
    
    wire pllOutClock /* synthesis SET_AS_NETWORK=pllOutClock, is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
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
