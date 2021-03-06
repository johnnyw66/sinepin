module  frequencyGeneratorLog #(parameter FPMULT = 65536, SINEROMSIZE = 1024) (clk, stepsize, gain,romdata);
  input  clk;
  input [15:0] stepsize ;
  input [15:0] gain ;
  output [15:0] romdata;
	
	reg [$clog2(FPMULT) + $clog2(1024) - 1:0] fpaddress = 0;
	
	always @(posedge clk) begin
		fpaddress <= fpaddress + stepsize  ;
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

 	logsineROM rom(.clk(clk),.address((fpaddress[24] == 0) ? fpaddress[23:16] : (fpaddress[23:16] ^ 8'd255)),.logsn(logsine)) ;
	powerROM powrom(.clk(clk),.address((logsine[7:0] ^ 8'd255)),.sinpow(PtLUT)) ;

	assign ptval = (((PtLUT | 16'd1024)<<1)>>logsine[15:8])  ;
	assign udata = (fpaddress[25]== 0)  ? ptval  : (ptval ^ 16'hffff)  ;
	assign romdata = (udata & 32768  == 0) ? (-udata + 16'd4096)<<0: ((udata ^ 16'hffff) + 16'd4096)<<0 ;
	
endmodule

