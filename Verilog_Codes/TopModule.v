`timescale 1ns / 1ps

module TopModule(clk, rst, buttom, rdAddr2, inst, op, Y, PCAddr,rdData2, equal);
input clk, rst, buttom;
input [5:0] rdAddr2;
output [15:0] PCAddr;
output [15:0] inst;
output [3:0] op;

reg [11:0] address;
reg clkReg = 1;
wire clk_in;
wire write;

output reg equal;
output [15:0] rdData2;
wire [15:0] rdData0,rdData1;
wire [5:0] wrAddr;
wire [15:0] PCNext;
wire [11:0] RegAddr;
wire flag;
output [15:0] Y;
wire jump, store, load;
wire [15:0] wrData, Readdata, Data;
wire [11:0] Address;
Instruction_Memory IM0(PCAddr[11:0], inst);
Decoder de0(inst, op, RegAddr, write ,jump , mov, movReg, store, load);
assign PCNext = jump != 1 ? PCAddr + 1 : equal == 1 ? op == 4 ? RegAddr : PCAddr + 1 : op == 2 ? RegAddr : op == 3 ? RegAddr : PCAddr + 1;
assign wrAddr = write == 1 ? op == 1 ? RegAddr[5:0] : RegAddr[11:6] : 0;
assign wrData = mov == 1 ? RegAddr[5:0] : movReg == 1 ? rdData1 : load == 1 ? Readdata : Y;
assign Address = store == 1 ? rdData0 : load == 1 ? rdData1 : 0;
assign Data = store == 1 ? rdData1 : 0; 
assign clk_in = clk & clkReg;
regfile reg0(.clk(clk_in), .rst(rst), .write(write), .wrAddr(wrAddr), .wrData(wrData), .rdAddr0(RegAddr[11:6]),.rdAddr1(RegAddr[5:0]),.rdAddr2(rdAddr2), .rdData0(rdData0),.rdData1(rdData1), .rdData2(rdData2),.PCNext(PCAddr), .PCAddr(PCNext));

DATAMEM dmem0(.address(Address),.data(Data),.read_data(Readdata),.write_enable(store),.read_enable(load),.clk(clk_in),.rst(rst));

ALU alu0(.a(rdData0), .b(rdData1), .op(op), .rst(rst), .flag(flag), .Y(Y));

always@(posedge clk) begin
	if (op == 8 && rdData0 == rdData1) begin
		equal <= 1;
	end
	if (op != 8 && op != 3 && op != 4) begin
		equal <= 0;
	end
	if (op == 0) begin
		clkReg <= 0;
	end
	if (buttom) begin
		clkReg <= 1;
	end
end

endmodule
