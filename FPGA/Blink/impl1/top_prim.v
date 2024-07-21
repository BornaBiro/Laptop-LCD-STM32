// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Jul 21 19:42:49 2024
//
// Verilog Description of module top
//

module top (RGBIN, pllInClock, lcdVsync, lcdHsync, lcdDe, lvdsOutClk, 
            lvdsLine0, lvdsLine1, lvdsLine2) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[8:11])
    input [17:0]RGBIN;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    input pllInClock /* synthesis black_box_pad_pin=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[38:48])
    input lcdVsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[56:64])
    input lcdHsync;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[72:80])
    input lcdDe;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[88:93])
    output lvdsOutClk;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[102:112])
    output lvdsLine0;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[121:130])
    output lvdsLine1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[139:148])
    output lvdsLine2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[157:166])
    
    wire pllOutClock /* synthesis is_clock=1, SET_AS_NETWORK=pllOutClock */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(16[10:18])
    
    wire RGBIN_c_17, RGBIN_c_16, RGBIN_c_15, RGBIN_c_14, RGBIN_c_13, 
        RGBIN_c_12, RGBIN_c_11, RGBIN_c_10, RGBIN_c_9, RGBIN_c_8, 
        RGBIN_c_7, RGBIN_c_6, RGBIN_c_5, RGBIN_c_4, RGBIN_c_3, RGBIN_c_2, 
        RGBIN_c_1, RGBIN_c_0, lcdVsync_c, lcdHsync_c, lcdDe_c, lvdsOutClk_c, 
        lvdsLine0_c, lvdsLine1_c, lvdsLine2_c, VCC_net, GND_net;
    
    VHI i5 (.Z(VCC_net));
    IB RGBIN_pad_7 (.I(RGBIN[7]), .O(RGBIN_c_7));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    parallelToLvds myParallelToLvds (.pllOutClock(pllOutClock), .RGBIN_c_13(RGBIN_c_13), 
            .lcdDe_c(lcdDe_c), .lvdsOutClk_c(lvdsOutClk_c), .RGBIN_c_6(RGBIN_c_6), 
            .RGBIN_c_14(RGBIN_c_14), .RGBIN_c_15(RGBIN_c_15), .RGBIN_c_16(RGBIN_c_16), 
            .RGBIN_c_17(RGBIN_c_17), .lcdHsync_c(lcdHsync_c), .lcdVsync_c(lcdVsync_c), 
            .RGBIN_c_7(RGBIN_c_7), .RGBIN_c_8(RGBIN_c_8), .RGBIN_c_9(RGBIN_c_9), 
            .RGBIN_c_10(RGBIN_c_10), .RGBIN_c_11(RGBIN_c_11), .RGBIN_c_12(RGBIN_c_12), 
            .RGBIN_c_0(RGBIN_c_0), .RGBIN_c_1(RGBIN_c_1), .RGBIN_c_2(RGBIN_c_2), 
            .RGBIN_c_3(RGBIN_c_3), .RGBIN_c_4(RGBIN_c_4), .RGBIN_c_5(RGBIN_c_5), 
            .lvdsLine2_c(lvdsLine2_c), .lvdsLine0_c(lvdsLine0_c), .lvdsLine1_c(lvdsLine1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(16[18] 26[4])
    IB Inst1_IB (.I(pllInClock), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=9, LSE_RLINE=13 */ ;   // c:/users/borna/documents/projects/fpga/blink/pll/lvdsclk/lvdsclk.v(20[8:41])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB RGBIN_pad_8 (.I(RGBIN[8]), .O(RGBIN_c_8));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    OB lvdsLine1_pad (.I(lvdsLine1_c), .O(lvdsLine1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[139:148])
    IB RGBIN_pad_9 (.I(RGBIN[9]), .O(RGBIN_c_9));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_4 (.I(RGBIN[4]), .O(RGBIN_c_4));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_6 (.I(RGBIN[6]), .O(RGBIN_c_6));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_1 (.I(RGBIN[1]), .O(RGBIN_c_1));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    GSR GSR_INST (.GSR(VCC_net));
    IB lcdDe_pad (.I(lcdDe), .O(lcdDe_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[88:93])
    IB lcdHsync_pad (.I(lcdHsync), .O(lcdHsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[72:80])
    IB lcdVsync_pad (.I(lcdVsync), .O(lcdVsync_c));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[56:64])
    IB RGBIN_pad_0 (.I(RGBIN[0]), .O(RGBIN_c_0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_5 (.I(RGBIN[5]), .O(RGBIN_c_5));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    OB lvdsLine0_pad (.I(lvdsLine0_c), .O(lvdsLine0));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[121:130])
    IB RGBIN_pad_16 (.I(RGBIN[16]), .O(RGBIN_c_16));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_3 (.I(RGBIN[3]), .O(RGBIN_c_3));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_12 (.I(RGBIN[12]), .O(RGBIN_c_12));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_17 (.I(RGBIN[17]), .O(RGBIN_c_17));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    OB lvdsOutClk_pad (.I(lvdsOutClk_c), .O(lvdsOutClk));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[102:112])
    IB RGBIN_pad_15 (.I(RGBIN[15]), .O(RGBIN_c_15));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_13 (.I(RGBIN[13]), .O(RGBIN_c_13));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    IB RGBIN_pad_10 (.I(RGBIN[10]), .O(RGBIN_c_10));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    OB lvdsLine2_pad (.I(lvdsLine2_c), .O(lvdsLine2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[157:166])
    IB RGBIN_pad_11 (.I(RGBIN[11]), .O(RGBIN_c_11));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    lvdsClk myLvdsPll (.pllOutClock(pllOutClock), .buf_CLKI(buf_CLKI), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(9[11] 13[4])
    IB RGBIN_pad_2 (.I(RGBIN[2]), .O(RGBIN_c_2));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    VLO i1 (.Z(GND_net));
    IB RGBIN_pad_14 (.I(RGBIN[14]), .O(RGBIN_c_14));   // c:/users/borna/documents/projects/fpga/blink/blink.v(6[25:30])
    
endmodule
//
// Verilog Description of module parallelToLvds
//

module parallelToLvds (pllOutClock, RGBIN_c_13, lcdDe_c, lvdsOutClk_c, 
            RGBIN_c_6, RGBIN_c_14, RGBIN_c_15, RGBIN_c_16, RGBIN_c_17, 
            lcdHsync_c, lcdVsync_c, RGBIN_c_7, RGBIN_c_8, RGBIN_c_9, 
            RGBIN_c_10, RGBIN_c_11, RGBIN_c_12, RGBIN_c_0, RGBIN_c_1, 
            RGBIN_c_2, RGBIN_c_3, RGBIN_c_4, RGBIN_c_5, lvdsLine2_c, 
            lvdsLine0_c, lvdsLine1_c) /* synthesis syn_module_defined=1 */ ;
    input pllOutClock;
    input RGBIN_c_13;
    input lcdDe_c;
    output lvdsOutClk_c;
    input RGBIN_c_6;
    input RGBIN_c_14;
    input RGBIN_c_15;
    input RGBIN_c_16;
    input RGBIN_c_17;
    input lcdHsync_c;
    input lcdVsync_c;
    input RGBIN_c_7;
    input RGBIN_c_8;
    input RGBIN_c_9;
    input RGBIN_c_10;
    input RGBIN_c_11;
    input RGBIN_c_12;
    input RGBIN_c_0;
    input RGBIN_c_1;
    input RGBIN_c_2;
    input RGBIN_c_3;
    input RGBIN_c_4;
    input RGBIN_c_5;
    output lvdsLine2_c;
    output lvdsLine0_c;
    output lvdsLine1_c;
    
    wire pllOutClock /* synthesis is_clock=1, SET_AS_NETWORK=pllOutClock */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(11[12:23])
    wire [6:0]lvdsTest1;   // c:/users/borna/documents/projects/fpga/blink/blink.v(44[12:21])
    wire [3:0]bitCounter;   // c:/users/borna/documents/projects/fpga/blink/blink.v(43[12:22])
    
    wire n268;
    wire [6:0]lvdsTest2;   // c:/users/borna/documents/projects/fpga/blink/blink.v(45[12:21])
    wire [6:0]lvdsTest3;   // c:/users/borna/documents/projects/fpga/blink/blink.v(46[12:21])
    
    wire lvdsClock_N_13, bitCounter_3__N_12;
    wire [31:0]bitCounter_3__N_8;
    
    wire n273, n272, n274, n269, n241, n240, n242, n275, n265, 
        n277, n270, n267, n245, n266, n276, n244, n243;
    
    LUT4 lvdsTest1_0__bdd_3_lut_245 (.A(lvdsTest1[2]), .B(bitCounter[0]), 
         .C(lvdsTest1[3]), .Z(n268)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest1_0__bdd_3_lut_245.init = 16'he2e2;
    FD1S3AX lvdsTest2_i0 (.D(RGBIN_c_13), .CK(pllOutClock), .Q(lvdsTest2[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest2_i0.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i0 (.D(lcdDe_c), .CK(pllOutClock), .Q(lvdsTest3[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest3_i0.GSR = "ENABLED";
    FD1S3AX lvdsClockReg_25 (.D(lvdsClock_N_13), .CK(pllOutClock), .Q(lvdsOutClk_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsClockReg_25.GSR = "ENABLED";
    FD1S3IX bitCounter__i0 (.D(bitCounter_3__N_8[0]), .CK(pllOutClock), 
            .CD(bitCounter_3__N_12), .Q(bitCounter[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam bitCounter__i0.GSR = "ENABLED";
    FD1S3IX bitCounter__i2 (.D(bitCounter_3__N_8[2]), .CK(pllOutClock), 
            .CD(bitCounter_3__N_12), .Q(bitCounter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam bitCounter__i2.GSR = "ENABLED";
    LUT4 i45_1_lut (.A(bitCounter[0]), .Z(bitCounter_3__N_8[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(83[7:21])
    defparam i45_1_lut.init = 16'h5555;
    PFUMX i250 (.BLUT(n273), .ALUT(n272), .C0(bitCounter[1]), .Z(n274));
    LUT4 lvdsTest1_0__bdd_3_lut_269 (.A(lvdsTest1[0]), .B(bitCounter[0]), 
         .C(lvdsTest1[1]), .Z(n269)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest1_0__bdd_3_lut_269.init = 16'he2e2;
    PFUMX i219 (.BLUT(n241), .ALUT(n240), .C0(bitCounter[2]), .Z(n242));
    LUT4 i132_3_lut (.A(bitCounter[2]), .B(bitCounter[1]), .C(bitCounter[0]), 
         .Z(bitCounter_3__N_8[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(43[12:22])
    defparam i132_3_lut.init = 16'h6a6a;
    LUT4 lvdsTest3_4__bdd_2_lut_257 (.A(bitCounter[0]), .B(lvdsTest3[6]), 
         .Z(n272)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam lvdsTest3_4__bdd_2_lut_257.init = 16'h4444;
    LUT4 i23_2_lut (.A(bitCounter[1]), .B(bitCounter[0]), .Z(bitCounter_3__N_8[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(89[16:30])
    defparam i23_2_lut.init = 16'h6666;
    LUT4 bitCounter_2__bdd_2_lut (.A(bitCounter[1]), .B(lvdsTest2[5]), .Z(n240)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam bitCounter_2__bdd_2_lut.init = 16'h4444;
    LUT4 lvdsTest3_4__bdd_3_lut_258 (.A(lvdsTest3[4]), .B(bitCounter[0]), 
         .C(lvdsTest3[5]), .Z(n273)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest3_4__bdd_3_lut_258.init = 16'he2e2;
    LUT4 lvdsTest3_0__bdd_3_lut_252 (.A(lvdsTest3[2]), .B(bitCounter[0]), 
         .C(lvdsTest3[3]), .Z(n275)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest3_0__bdd_3_lut_252.init = 16'he2e2;
    LUT4 lvdsTest1_4__bdd_2_lut_265 (.A(bitCounter[0]), .B(lvdsTest1[6]), 
         .Z(n265)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam lvdsTest1_4__bdd_2_lut_265.init = 16'h4444;
    FD1S3AX lvdsTest1_i0 (.D(RGBIN_c_6), .CK(pllOutClock), .Q(lvdsTest1[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest1_i0.GSR = "ENABLED";
    FD1S3IX bitCounter__i1 (.D(bitCounter_3__N_8[1]), .CK(pllOutClock), 
            .CD(bitCounter_3__N_12), .Q(bitCounter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam bitCounter__i1.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i6 (.D(RGBIN_c_14), .CK(pllOutClock), .Q(lvdsTest3[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest3_i6.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i5 (.D(RGBIN_c_15), .CK(pllOutClock), .Q(lvdsTest3[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest3_i5.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i4 (.D(RGBIN_c_16), .CK(pllOutClock), .Q(lvdsTest3[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest3_i4.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i3 (.D(RGBIN_c_17), .CK(pllOutClock), .Q(lvdsTest3[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest3_i3.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i2 (.D(lcdHsync_c), .CK(pllOutClock), .Q(lvdsTest3[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest3_i2.GSR = "ENABLED";
    FD1S3AX lvdsTest3_i1 (.D(lcdVsync_c), .CK(pllOutClock), .Q(lvdsTest3[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest3_i1.GSR = "ENABLED";
    FD1S3AX lvdsTest2_i6 (.D(RGBIN_c_7), .CK(pllOutClock), .Q(lvdsTest2[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest2_i6.GSR = "ENABLED";
    FD1S3AX lvdsTest2_i5 (.D(RGBIN_c_8), .CK(pllOutClock), .Q(lvdsTest2[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest2_i5.GSR = "ENABLED";
    FD1S3AX lvdsTest2_i4 (.D(RGBIN_c_9), .CK(pllOutClock), .Q(lvdsTest2[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest2_i4.GSR = "ENABLED";
    FD1S3AX lvdsTest2_i3 (.D(RGBIN_c_10), .CK(pllOutClock), .Q(lvdsTest2[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest2_i3.GSR = "ENABLED";
    FD1S3AX lvdsTest2_i2 (.D(RGBIN_c_11), .CK(pllOutClock), .Q(lvdsTest2[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest2_i2.GSR = "ENABLED";
    FD1S3AX lvdsTest2_i1 (.D(RGBIN_c_12), .CK(pllOutClock), .Q(lvdsTest2[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest2_i1.GSR = "ENABLED";
    FD1S3AX lvdsTest1_i6 (.D(RGBIN_c_0), .CK(pllOutClock), .Q(lvdsTest1[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest1_i6.GSR = "ENABLED";
    FD1S3AX lvdsTest1_i5 (.D(RGBIN_c_1), .CK(pllOutClock), .Q(lvdsTest1[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest1_i5.GSR = "ENABLED";
    FD1S3AX lvdsTest1_i4 (.D(RGBIN_c_2), .CK(pllOutClock), .Q(lvdsTest1[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest1_i4.GSR = "ENABLED";
    FD1S3AX lvdsTest1_i3 (.D(RGBIN_c_3), .CK(pllOutClock), .Q(lvdsTest1[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest1_i3.GSR = "ENABLED";
    FD1S3AX lvdsTest1_i2 (.D(RGBIN_c_4), .CK(pllOutClock), .Q(lvdsTest1[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest1_i2.GSR = "ENABLED";
    FD1S3AX lvdsTest1_i1 (.D(RGBIN_c_5), .CK(pllOutClock), .Q(lvdsTest1[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=26 */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam lvdsTest1_i1.GSR = "ENABLED";
    L6MUX21 i255 (.D0(n277), .D1(n274), .SD(bitCounter[2]), .Z(lvdsLine2_c));
    L6MUX21 i248 (.D0(n270), .D1(n267), .SD(bitCounter[2]), .Z(lvdsLine0_c));
    L6MUX21 i224 (.D0(n245), .D1(n242), .SD(bitCounter[0]), .Z(lvdsLine1_c));
    PFUMX i242 (.BLUT(n266), .ALUT(n265), .C0(bitCounter[1]), .Z(n267));
    LUT4 lvdsTest1_4__bdd_3_lut_266 (.A(lvdsTest1[4]), .B(bitCounter[0]), 
         .C(lvdsTest1[5]), .Z(n266)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest1_4__bdd_3_lut_266.init = 16'he2e2;
    LUT4 lvdsTest3_0__bdd_3_lut_261 (.A(lvdsTest3[0]), .B(bitCounter[0]), 
         .C(lvdsTest3[1]), .Z(n276)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest3_0__bdd_3_lut_261.init = 16'he2e2;
    PFUMX i253 (.BLUT(n276), .ALUT(n275), .C0(bitCounter[1]), .Z(n277));
    PFUMX i222 (.BLUT(n244), .ALUT(n243), .C0(bitCounter[2]), .Z(n245));
    LUT4 bitCounter_2__bdd_3_lut (.A(lvdsTest2[3]), .B(bitCounter[1]), .C(lvdsTest2[1]), 
         .Z(n241)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam bitCounter_2__bdd_3_lut.init = 16'hb8b8;
    LUT4 i14_3_lut (.A(bitCounter[0]), .B(bitCounter[2]), .C(bitCounter[1]), 
         .Z(lvdsClock_N_13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;
    defparam i14_3_lut.init = 16'hcbcb;
    PFUMX i246 (.BLUT(n269), .ALUT(n268), .C0(bitCounter[1]), .Z(n270));
    LUT4 i1_2_lut (.A(bitCounter[1]), .B(bitCounter[2]), .Z(bitCounter_3__N_12)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/borna/documents/projects/fpga/blink/blink.v(54[9] 93[5])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 lvdsTest2_2__bdd_3_lut_233 (.A(lvdsTest2[2]), .B(lvdsTest2[0]), 
         .C(bitCounter[1]), .Z(n244)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam lvdsTest2_2__bdd_3_lut_233.init = 16'hacac;
    LUT4 lvdsTest2_2__bdd_3_lut_221 (.A(lvdsTest2[4]), .B(bitCounter[1]), 
         .C(lvdsTest2[6]), .Z(n243)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam lvdsTest2_2__bdd_3_lut_221.init = 16'he2e2;
    
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
