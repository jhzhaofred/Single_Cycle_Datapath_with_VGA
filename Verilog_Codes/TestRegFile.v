`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:20 02/27/2018
// Design Name:   regfile6x16a
// Module Name:   X:/EC551/lab1/TestRegFile.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regfile6x16a
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestRegFile;

	// Inputs
	reg clk;
	reg write;
	reg [5:0] wrAddr;
	reg [15:0] wrData, PCAddr;
	reg [5:0] rdAddr0,rdAddr1;

	// Outputs
	wire [15:0] rdData0, rdData1, PCNext;

	// Instantiate the Unit Under Test (UUT)
	regfile uut (
		.clk(clk), 
		.write(write), 
		.wrAddr(wrAddr), 
		.wrData(wrData), 
		.rdAddr0(rdAddr0), 
		.rdAddr1(rdAddr1), 
		.rdData0(rdData0),
		.rdData1(rdData1),
		.PCAddr(PCAddr),
		.PCNext(PCNext)
	);
  
	initial begin
		// Initialize Inputs
		clk = 0;
		write = 0;
		wrAddr = 0;
		wrData = 0;
		rdAddr0 = 0;
		rdAddr1 = 0;
		PCAddr = 0;
		#10;
		write = 1;
		wrData = 17;
		PCAddr = 1;
		#10;
		wrAddr = 1;
		rdAddr0 = 1;
		rdAddr1 = 1;
		PCAddr = 2;
		#10;
		wrAddr = 2;
		rdAddr0 = 2;
		rdAddr1 = 2;
		PCAddr = 3;
		#10;
		wrAddr = 3;
		rdAddr0 = 3;
		rdAddr1 = 3;
		PCAddr = 4;
		#10;
		wrAddr = 4;
		rdAddr0 = 4;
		rdAddr1 = 4;
		PCAddr = 5;
		#10;
		PCAddr = 6;
		#10;
        
		// Add stimulus here

	end
   
	always 
		#1  clk =  ! clk; 
endmodule

