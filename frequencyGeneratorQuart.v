// frequencyGeneratorQuart module is used to generate a voltage 
// on a precalculated 'normalised' sine wave stored in our 'Sine ROM'.
// The rate (stepsize) which we cycle through our sineROM determines the 
// frequency we hear.
// Our fixed point SineROM address and 'stepsize' is used to 
// cycle through the rom at different rates - depending on the desired audio frequency.
// The precalculated stepsize input is equal to : -  
// ((REQUIRED_AUDIO_FREQUENCY * FPMULT * SINEROMSIZE )/BOARD_CLOCKSPEED)
// 'SINEROMSIZE' is actually the number of steps it takes to go through a complete sine wave cycle.
// So in the cases where we only store a quarter wave in our 'ROM', the number of steps
// (i.e SINEROMSIZE) would be four times (x4) the number of entries.

module  frequencyGeneratorQuart #(parameter FPMULT = 65536,SINEROMSIZE = 1024) (clk, stepsize, gain, phase, romdata);
  input  clk;
  input [15:0] stepsize ;
  input  [31:0] phase ;
  input [4:0] gain ;
  output [31:0] romdata;
	
	
	reg [$clog2(FPMULT) + $clog2(SINEROMSIZE) - 1:0] fpaddress = 0;
	
	always @(posedge clk) begin
		fpaddress <= fpaddress + stepsize ;
	end

	wire  [15:0] sromvalue ;
	wire [9:0] address ;
	wire [31:0] phasegain ;
	wire [31:0] sum ;
	
	localparam phase_adjust_factor = 163 ; //int(SINEROMSIZE/(2 * 3.14159))  ;
	
	assign phasegain = (gain & 16) == 0 ? ((phase) << gain) : ((phase) >> (gain - 16))  ;
	// fpaddress is using a fixed point (FP) of 65536
	// phase (a result returned from our sinerom table) is using a FP of 32768 

	// 'phase_adjust_factor' (paf): The x2 factor is the difference in the two Fixed point systems 
	// (fpaddress and our sine rom table). The other factor SINEROMSIZE / (2 * PI) -
	// is used to adjust a phase which came from a 'radian system' (0 to 2 * PI) 
	// to a system which deals with sine rom indexs(0 to SINEROMSIZE)
	// NOTE: 'SINEROMSIZE' is the number of effective ROM entries which describes a 'full circle'
	// From a resource prespective - this 'paf' adjustment is not needed for audio efx 
	// - but gives a more robust mathematical model for FM.
	
	
	assign sum =  phasegain * 2 * phase_adjust_factor  + fpaddress;	
	assign address = sum[25:16] ;
	
	// Our SINE look-up table is only one quadrant of sine wave (0 to PI/2) - so we 
	// need to do reflection on x and y axis for other quadrants.
	sineQuartROM rom(.clk(clk),.address((address[8] == 0) ? address[7:0] : (address[7:0] ^ 8'd255)),.svalue(sromvalue)) ;
   assign romdata = (address[9] == 0)  ? sromvalue : ((sromvalue ^ 16'hffff)) ;
endmodule
