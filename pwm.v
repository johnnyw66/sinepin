module pwm #(parameter nBitRes = 12) (clk,ubit_voltage,pwmpin) ;

input clk ;
input [nBitRes - 1:0] ubit_voltage ;
output   pwmpin ;
	// So much to say here, for so little amount of Verilog!
	
	// Using Pulse Width Modulation to output a frequency on our FPGA pin (usually 3.3 Level)
	// The voltage out on the 'pwmpin' is: ( ubitVoltage * 3.3 / 2^nBitRes ) volts.
	// We vary our voltage as a function, f, of time t : f(t) = sin(2.pi.freq.t)
	// Where 'freq' is our musical note. This technique gives us much cleaner notes than those 
	// produced with a 50% duty-cycle PWM.
	
	// We've carefully selected our bit resolution to represent voltages applied
	// to the speaker. This is because using variable PWM percentages
   //	to produce a required voltage on our speaker pin, will produce an 'unwanted' frequency
	// on our output.
	
	// The period of this frequency is determined by the time
	// it takes our register 'pwm_counter' to count up to our bit 
	// resolution (nBitRes). 
	// Eg. if we set nBitRes at 16 bits resolution that would give a target count value of 2^16 = 65536
 
   //	The unwanted rogue frequency is equal to CLK/2^(number of bits resolution) using
	// this technique. 
	
	// If we used 16 bits on a CLK of 50Mhz, this would generate a freq of 50000000/2^16 = 763Hz
	// (midi note 79 - G7) which will clearly crap over our carrier frequency (our musical note).
	
	// With 12 bits resolution - we get a freq of 50000000/2^12 = 12207 Hz - clearly out of audible range.
	// (but still very near the last midi note of 127!)
	// 	Using	10 bits - we get an unwanted freq of 50000000/2^10 = 48Khz.
	// 		8 bits resolution generates a 96Khz signal. 
	

	// An alternative method of coping with the unwanted frequency is to use a prescaler 
	// to bring this frequency down the audio band. 
	// So long as we don't break our 'Nyquist rule' - this can produce
	// a rather pleasant sound!
	
	// Our sample rate (i.e how often we 'peek at'ubit_voltage') - used in this module
	// needs to be greater than 2 * highest audio Freq generated - i.e at least 26 Khz for
	// midi range music. (2 * 12543 Hz - midi note 127)
	// So for a 50Mhz clock we need 50MHz/prescaler > 26000Hz	
	// Which means that: prescaler > 1024 (2^10)
	// By using a 10 bit prescaler - we are bringing our 763 Hz (generated when nBitsRes = 16)
	// down to less than 1Hz. With additional support from a Resistor/Capacitor High Pass Filter
	// on the speaker pin - we could remove this unwanted part of the output.
	
	// Johnny Wilson - Brighton, East Sussex 2020.
	
reg [nBitRes - 1:0] pwm_counter = 0;
	
  always @(posedge clk)
    begin
			pwm_counter <= pwm_counter + 1'd1 ;
    end
	assign pwmpin = (pwm_counter < ubit_voltage) ;
endmodule
