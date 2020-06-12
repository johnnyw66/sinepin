module PWMSigmaDeltaDAC #(parameter nBitRes = 12) (clk, ubit_voltage, pwmpin);
input clk ;
input [nBitRes - 1:0] ubit_voltage ;
output   pwmpin ;


reg [nBitRes:0] PWM_accumulator;

always @(posedge clk) PWM_accumulator <= PWM_accumulator[nBitRes - 1:0] + ubit_voltage;

assign pwmpin = PWM_accumulator[nBitRes];
endmodule
