module blink #(parameter BLINK_SPEED = 50000000)(clk,led) ;
input clk ;
output led ;

reg rled = 0;
reg [$clog2(BLINK_SPEED) - 1:0] divcounter = 0;

always @(posedge clk)
begin
		divcounter <= divcounter + 1'd1 ;
		if (divcounter == 0)
			rled <= ~rled ;
end

assign led = rled ;

endmodule
