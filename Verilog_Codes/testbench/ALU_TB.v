`timescale 1ns / 1ps

module ALU_TB;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [3:0] op;
	reg rst;

	// Outputs
	wire flag;
	wire [15:0] Y;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.rst(rst), 
		.flag(flag), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		op = 0;
		rst = 0;
		#10;
		op = 4'b0101;
		b = 11;
		a = 15;
		#10;
		op = 4'b0110;
		b = 11;
		a = 15;
		#10;
		op = 4'b0001;
		b = 11;
		a = 15;
		#10;
		op = 4'b0111;
		b = 11;
		a = 15;
		#10;     
		// Add stimulus here

	end
      
endmodule

