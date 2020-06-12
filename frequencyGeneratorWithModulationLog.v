
module  frequencyGeneratorWithModulationLog #(parameter FPMULT = 65536, SINEROMSIZE = 1024) (clk, stepsize_carry, stepsize_modulate, romdata);
  input  clk;
  input [15:0] stepsize_carry ;
  input [15:0] stepsize_modulate ;
  output [15:0] romdata;
	
	reg [$clog2(FPMULT) + $clog2(1024) - 1:0] fpaddress_carry = 0;
	reg [$clog2(FPMULT) + $clog2(1024) - 1:0] fpaddress_modulate = 0;

	always @(posedge clk) begin
		fpaddress_carry <= fpaddress_carry + stepsize_carry  ;
		fpaddress_modulate <= fpaddress_modulate + stepsize_modulate  ;
	end
/*
int getLogSine(int angle) {
    int low8 = angle & 255 ;
    int index = (angle & 256) == 0 ? low8 : (low8 ^ 255) ;
    return   (((angle & (1<<9)) != 0) ? (1<<15) : 0) | lsTable[index]  ;
}

int getPower(int logsine) {
  boolean sign = ((logsine & (1<<15)) != 0);
  int top8 = logsine>>8 ; //256 ;
  int low8neg = (logsine & 0xff) ^ 255 ; // 1's cpl
  int pTvalue = ((pTable[low8neg] +  1024) * 2) >> top8 ;  
  return (sign ?  (pTvalue & 0xffff) ^ 0xffff : pTvalue) ;
}
*/
	wire [15:0] PtLUT ;
	wire [15:0] logsine ;
	wire [15:0] udata ;
	wire [15:0] ptval ;

 	logsineROM rom(.clk(clk),.address((fpaddress_carry[24] == 0) ? fpaddress_carry[23:16] : (fpaddress_carry[23:16] ^ 8'd255)),.logsn(logsine)) ;
	powerROM powrom(.clk(clk),.address((logsine[7:0] ^ 8'd255)),.sinpow(PtLUT)) ;

	assign ptval = ((PtLUT | 1024)<<1)>>logsine[15:8] ;
	assign udata = (fpaddress_carry[25]== 0)  ? ptval : (ptval ^ 16'hffff) ;
	assign romdata = (udata & 32768  == 0) ? (-udata + 4096)<<0: ((udata ^ 16'hffff) + 4096)<<0 ;
	
endmodule
