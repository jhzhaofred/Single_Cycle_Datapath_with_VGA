`timescale 1ns / 1ps

module number(num, hcount, vcount, hit, offset);
input [15:0] num;
input [9:0] hcount, vcount;
input [9:0] offset;
output reg hit;

always@(num) begin
	case(num)
	   0: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 191 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		1: begin
			if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 171 && vcount <= 270) begin
				hit <= 1;
			end 
			else begin
				hit <= 0;
			end
		end
		2: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		3: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		4: begin
			if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 171 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 624 && hcount + offset <= 643 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 171 && vcount <= 270) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		5: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		6: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		7: begin
			if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 171 && vcount <= 270) begin
				hit <= 1;
			end
         else if (hcount + offset >= 604 && hcount + offset <= 643 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end			
			else begin
				hit <= 0;
			end
		end
		8: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		9: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		10: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		11: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 171 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		12: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		13: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 171 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 644 && hcount + offset <= 663 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		14: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 251 && vcount <= 270) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 250) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
		15: begin
			if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 171 && vcount <= 190) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 663 && vcount >= 211 && vcount <= 230) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 191 && vcount <= 210) begin
				hit <= 1;
			end
			else if (hcount + offset >= 604 && hcount + offset <= 623 && vcount >= 231 && vcount <= 270) begin
				hit <= 1;
			end
			else begin
				hit <= 0;
			end
		end
	endcase
end
endmodule
