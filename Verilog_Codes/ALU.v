`timescale 1ns / 1ns


module ALU(a, b, op, rst, flag, Y);
    output reg [15:0] Y;
    output reg flag;
    input rst;
    input [15:0] a,b;
    input [3:0] op;
    
always @(rst or op or a or b)
	begin
		 if (!rst)
			 begin
				  case(op)
				  4'b0001: Y = b + 1;//1 INC
				  4'b0101: Y = a + b;//5 ADD
				  4'b0110: Y = a - b;//6 SUB
				  4'b0111: Y = a ^ b;//7 XOR
				  default: Y=16'bx;
				  endcase
			 end
		 
		 else
			 begin
				Y=0;
			 end
		 
	end
	always @(Y)
	begin
		if (Y==0)
			flag = 1;
		else 
			flag = 0;
	end
endmodule
