`timescale 1ns / 1ns

module IM_tb;
    reg [11:0] address;
    wire [15:0] inst;
    Instruction_Memory IM0(address, inst);
    initial
    begin
        address = 0;
        #10;
        address = 1;
        #10;
        address = 2;
        #10;
        $finish;
    end
endmodule
