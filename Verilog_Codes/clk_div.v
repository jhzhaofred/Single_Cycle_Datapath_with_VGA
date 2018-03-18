`timescale 1ns / 1ps

module clk_div(clk,clk_0);
input clk;
output reg clk_0 = 0;
reg [32:0] k = 0;
always@(posedge clk) begin
	if(k == 25000000) begin
		k <= 0;
		clk_0 = ~clk_0;
	end
	else begin
		k <= k + 1;
	end
end

endmodule
