`timescale 1ns / 1ps

module Top_tb;

	// Inputs
	reg clk;
	reg rst, buttom;
	reg [5:0] rdAddr2;
	// Outputs
	wire [15:0] PCAddr;
	wire [15:0] inst;
	wire [3:0] op;
	wire [15:0] Y;
	wire [15:0] rdData2;
	// Instantiate the Unit Under Test (UUT)
	TopModule uut (.clk(clk), .rst(rst), .buttom(buttom),.rdAddr2(rdAddr2), .inst(inst),.op(op),.Y(Y) , .PCAddr(PCAddr),.rdData2(rdData2));
 
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		buttom = 0;
		rdAddr2 = 2;
		#4;
		rst = 0;
		#300;    
		buttom = 1;
		#4;
		buttom = 0;
		#400;
		$finish;
		// Add stimulus here

	end
   always 
		#2  clk =  ! clk; 
endmodule

