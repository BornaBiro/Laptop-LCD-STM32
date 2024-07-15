//module blinky(input clk_25mhz, output[7:0]led);
//	reg [32:0] counter = 0;
//	
//	always @(posedge clk_25mhz) begin
//		counter = counter + 1;
//	end
//	
//	assign led[7:0] = counter >> 18;
//		
//endmodule

module top(input [3:0] sw, input pllInClock, input pixelClock, input lcdVsync, input lcdHsync, input lcdDe, output lvdsOutClk, output lvdsLine0, output lvdsLine1, output lvdsLine2);
  // Instantiate lvdsClk (assuming it's a PLL)
  lvdsClk myLvdsPll (
    .CLKI(pllInClock),
    .CLKOP(pllOutClock),
    .CLKFB(pllOutClock) // Adjust this if the module definition differs
  );

  // Instantiate parallelToLvds
  parallelToLvds myParallelToLvds (
	.rgbTest(sw),
    .lvdsInputClock(pllOutClock),
    .pixelClock(pixelClock),
    .vsync(lcdVsync),
    .hsync(lcdHsync),
    .de(lcdDe),
    .lvdsOut1(lvdsLine0),
	.lvdsOut2(lvdsLine1),
	.lvdsOut3(lvdsLine2),
	.lvdsClock(lvdsOutClk)
  );

endmodule

module parallelToLvds(
  input [3:0] rgbTest,
  input lvdsInputClock,
  input pixelClock,
  input vsync,
  input hsync,
  input de,
  output lvdsOut1,
  output lvdsOut2,
  output lvdsOut3,
  output lvdsClock
);

  reg [3:0] bitCounter = 0;
  reg [6:0] lvdsTest1 = 7'b0000000;
  reg [6:0] lvdsTest2 = 7'b0000000;
  reg [6:0] lvdsTest3 = 7'b0000000;
  reg [0:0] lvdsClockReg = 0;
  reg enable = 0;

  assign lvdsOut1 = lvdsTest1[bitCounter];
  assign lvdsOut2 = lvdsTest2[bitCounter];
  assign lvdsOut3 = lvdsTest3[bitCounter];
  assign lvdsClock = lvdsClockReg;

  always @ (posedge lvdsInputClock) begin
	  //if (pixelClock == 1 && enable == 0) begin
		//enable <= 1;
		lvdsTest3[1] <= vsync & 1;
		lvdsTest3[2] <= hsync & 1;
		lvdsTest3[0] <= de & 1;
		
		if (rgbTest[0] == 1) begin
			lvdsTest1[6:1] <= 6'b111111;
		end else begin
			lvdsTest1[6:1] <= 6'b000000;
		end
		
		if (rgbTest[1] == 1) begin
			lvdsTest2[6:2] <= 5'b11111;
			lvdsTest1[0] <= 1;
		end else begin
			lvdsTest2[6:2] <= 5'b00000;
			lvdsTest1[0] <= 0;
		end
		
		if (rgbTest[2] == 1) begin
			lvdsTest3[6:3] <= 4'b1111;
			lvdsTest2[1:0] <= 2'b11;
		end else begin
			lvdsTest3[6:3] <= 4'b0000;
			lvdsTest2[1:0] <= 2'b00;
		end
		
	  //end
	  
	  //if (enable) begin
		if (bitCounter > 1 && bitCounter < 5) begin
			lvdsClockReg <= 0;
		end else begin
			lvdsClockReg <= 1;
		end
	  
		bitCounter <= bitCounter + 1;
		if (bitCounter > 6) begin
			bitCounter <= 0;
			enable <= 0;
		end
    //end
  end

endmodule