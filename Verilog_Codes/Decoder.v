`timescale 1ns / 1ps

module Decoder(inst, op, RegAddr, write, jump, mov, movReg, store, load);
input [15:0] inst;
output [3:0] op;
output [11:0] RegAddr;
output write, store, load;
output jump, mov, movReg;
assign op = inst [15:12];
assign RegAddr = inst[11:0];

 assign write = op == 1 ? 1 :
					 op == 5 ? 1 :
					 op == 6 ? 1 :
					 op == 7 ? 1 : 					 
					 op == 9 ? 1 : 
					 op == 10 ? 1 :
					 op == 12 ? 1 : 0;
			
 assign jump = op == 2 ? 1 :
					op == 3 ? 1 :
					op == 4 ? 1 : 0;
 
 assign mov = op == 9 ? 1 : 0;

 assign movReg = op == 10 ? 1 : 0;
 
 assign store = op == 11 ? 1 : 0;
 
 assign load = op == 12 ? 1 : 0;
endmodule
