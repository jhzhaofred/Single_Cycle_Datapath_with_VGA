`timescale 1ns / 1ps

module clk_div_tb;

	// Inputs
	reg clk;

	// Outputs
	wire clk_0;

	// Instantiate the Unit Under Test (UUT)
	clk_div uut (
		.clk(clk), 
		.clk_0(clk_0)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always begin
		#2;
		clk = ~clk;
	end
endmodule

