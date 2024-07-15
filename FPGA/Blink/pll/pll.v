/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module pll
//
module pll (lvdsClk_CLKFB, lvdsClk_CLKI, lvdsClk_CLKOP) /* synthesis sbp_module=true */ ;
    input lvdsClk_CLKFB;
    input lvdsClk_CLKI;
    output lvdsClk_CLKOP;
    
    
    lvdsClk lvdsClk_inst (.CLKFB(lvdsClk_CLKFB), .CLKI(lvdsClk_CLKI), .CLKOP(lvdsClk_CLKOP));
    
endmodule

