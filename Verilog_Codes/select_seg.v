`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:24 03/14/2018 
// Design Name: 
// Module Name:    select_seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module select_seg(inputs, sel, digit);
input [15:0] inputs;
input [3:0] sel;
output reg [3:0] digit;
	always@(inputs or sel) begin
	case(sel)
	14: digit <= inputs[3:0];   //0111
	13: digit <= inputs[7:4];   //1011
	11: digit <= inputs[11:8];  //1101
	 7: digit <= inputs[15:12]; //1110
	endcase
	end	
endmodule
