`timescale 1ns / 1ns

module regfile
  (input clk,
   input rst,
   input write,
   input [5:0] wrAddr,
   input [15:0] wrData,
	
   input [5:0] rdAddr0,
	input [5:0] rdAddr1,
	input [5:0] rdAddr2,
	
	input [15:0] PCAddr,
	
   output [15:0] rdData0,
	output [15:0] rdData1,
	output [15:0] rdData2,
	
	output [15:0] PCNext);

   reg [15:0] 	 reg0, reg1, reg2, reg3, reg4, reg5, reg6;

   assign rdData0 = rdAddr0 == 0 ? reg0 :
		    rdAddr0 == 1 ? reg1 :
		    rdAddr0 == 2 ? reg2 :
		    rdAddr0 == 3 ? reg3 : 
			 rdAddr0 == 4 ? reg4 : 
			 rdAddr0 == 5 ? reg5 : 0;
	
	assign rdData1 = rdAddr1 == 0 ? reg0 :
		    rdAddr1 == 1 ? reg1 :
		    rdAddr1 == 2 ? reg2 :
		    rdAddr1 == 3 ? reg3 : 
			 rdAddr1 == 4 ? reg4 :
			 rdAddr1 == 5 ? reg5 : 0;
	
	assign rdData2 = rdAddr2 == 0 ? reg0 :
		    rdAddr2 == 1 ? reg1 :
		    rdAddr2 == 2 ? reg2 :
		    rdAddr2 == 3 ? reg3 : 
			 rdAddr2 == 4 ? reg4 :
			 rdAddr2 == 5 ? reg5 : 0;
	
	assign PCNext = reg6;
	initial
		begin
			 reg0 = 0;
			 reg1 = 0;
			 reg2 = 0;
			 reg3 = 0;
			 reg4 = 0;
			 reg5 = 0;
			 reg6 = 0;
		end
   always @(posedge clk) begin
	if (!rst) begin
		reg6 <= PCAddr;
			if (write) 
		case (wrAddr) 
		  0: begin
			  reg0 <= wrData;
		  end
		  1: begin
			  reg1 <= wrData;
		  end
		  2: begin
			  reg2 <= wrData;
		  end
		  3: begin
			  reg3 <= wrData;
		  end
		  4: begin
			  reg4 <= wrData;
		  end
		  5: begin
			  reg5 <= wrData;
		  end
		endcase
	end
	else begin
		reg0 <= 0;
		reg1 <= 0;
		reg2 <= 0;
		reg3 <= 0;
		reg4 <= 0;
		reg5 <= 0;
		reg6 <= 0;
	end
   end // always @ (posedge clk)
endmodule