/*
# see http://www.zeridajh.org/articles/various/sn76489/index.htm
import math ;

startvalue = 0b100000000000000;

newvalue = startvalue ;
print("StartValue  %d   %d" % (newvalue,int(0b100000000000000))) ;


for seq in range (32768):
	feedbit = (newvalue & 2) ^ ((newvalue & 1)<<1) ;
	newvalue = (newvalue>>1) | feedbit<<13 ;
	#print("sequence %d : %d  bit0 = %d" % (seq,newvalue,newvalue & 1)) ;
	print(newvalue & 1) ;

*/
module  noiseGeneratorQuart #(parameter FPMULT = 65536,SINEROMSIZE = 1024) (clk, stepsize,romdata);
  input  clk;
  input [15:0] stepsize ;
  output [31:0] romdata;
	
	
	reg [$clog2(FPMULT) + $clog2(SINEROMSIZE) - 1:0] fpaddress = 0;
	
	always @(posedge clk) begin
		fpaddress <= fpaddress + stepsize ;
	end
	
	wire  [15:0] sromvalue ;
	wire [9:0] address ;
	wire [31:0] sum ;
	
	
	assign address = fpaddress[25:16] ;
	
	// Our SINE look-up table is only one quadrant of sine wave (0 to PI/2) - so we 
	// need to do reflection on x and y axis for other quadrants.
	sineQuartROM rom(.clk(clk),.address((address[8] == 0) ? address[7:0] : (address[7:0] ^ 8'd255)),.svalue(sromvalue)) ;
   assign romdata = (address[9] == 0)  ? sromvalue : ((sromvalue ^ 16'hffff)) ;
	
endmodule