--VHDL instantiation template

component pll is
    port (lvdsClk_CLKFB: in std_logic;
        lvdsClk_CLKI: in std_logic;
        lvdsClk_CLKOP: out std_logic
    );
    
end component pll; -- sbp_module=true 
_inst: pll port map (lvdsClk_CLKFB => __,lvdsClk_CLKI => __,lvdsClk_CLKOP => __);
