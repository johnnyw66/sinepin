// 2 Channel Mixer

module mixer( clk, chn1, chn2, mixedaudio) ;
input clk ;
input [15:0] chn1;
input [15:0] chn2;
output [16:0] mixedaudio ;

reg [16:0] maudio ;
	
	always @(posedge clk) 
	begin
		maudio <= ({1'b0,chn1} + {1'b0,chn2}) / 2;
	end
	
assign mixedaudio = maudio ;


endmodule 
