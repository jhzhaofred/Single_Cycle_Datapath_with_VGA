`timescale 1ns / 1ns
module Instruction_Memory(Address, ReadData1);
parameter BITSIZE = 16;
parameter REGSIZE = 12;
input [REGSIZE-1:0] Address;
output reg [BITSIZE-1:0] ReadData1;

reg [BITSIZE-1:0] memory_file [0:63];	// Entire list of memory

// Asyncronous read of memory. Was not specified.
always @(Address, memory_file[Address])
begin
	ReadData1 = memory_file[Address];
end

integer i;
//MY method of filling the memory instead of through a test bench
initial
    begin
        i = 0; 
		  memory_file[i] = 16'b1001_000000_000000;   //0	mov R0,0 
		  i = i+1;
		  memory_file[i] = 16'b1001_000001_001010;   //1	mov R1, 10
		  i = i+1;
		  memory_file[i] = 16'b1001_000010_010100;	//2	mov R2, 20
		  i = i+1;
		  memory_file[i] = 16'b1011_000001_000000;	//3	mov [R1], R0
		  i = i+1;
		  memory_file[i] = 16'b0001_000000_000000;	//4	inc R0
		  i = i+1;
		  memory_file[i] = 16'b0001_000000_000001;	//5	inc R1
		  i = i+1;
		  memory_file[i] = 16'b1000_000001_000010;	//6	cmp R1, R2
		  i = i+1;
		  memory_file[i] = 16'b0011_000000_000011;	//7	jne 3
		  i = i+1;
		  memory_file[i] = 16'b0000_000000_000000;	//8	halt until push button is activated
		  i = i+1;
		  memory_file[i] = 16'b1000_000001_000010;	//9	cmp R1, R2
		  i = i+1;
		  memory_file[i] = 16'b0100_000000_000000;	//10 	je 0
		  i = i+1;
//		  memory_file[i] = 16'b1001_000001_000001; // mov R1 1    R1 = 1
//		  i = i+1; 
//		  memory_file[i] = 16'b1001_000011_000010; // mov R3 2    R3 = 2
//		  i = i+1;
//		  memory_file[i] = 16'b1011_000011_000011; // mov [R3] R3    Mem[2] = 2
//		  i = i+1;
//		  memory_file[i] = 16'b1100_000000_000011; // mov R0 [R3]    R0 = 2
//		  i = i+1;
//        memory_file[i] = 16'b0001_000000_000000; // inc R0         R0 = 3
//        i = i+1; 
//		  memory_file[i] = 16'b0101_000000_000001; // add R0 R1      R0 = 4
//        i = i+1; 
//		  memory_file[i] = 16'b0101_000000_000001; // add R0 R1      R0 = 5
//        i = i+1; 
//		  memory_file[i] = 16'b0101_000000_000001; // add R0 R1      R0 = 6
//        i = i+1; 
//		  memory_file[i] = 16'b0110_000000_000001; // sub R0 R1      R0 = 5
//        i = i+1; 
//		  memory_file[i] = 16'b0111_000000_000001; // xor R0 R1      R0 = 4
//        i = i+1; 
//		  memory_file[i] = 16'b1010_000001_000000; // mov R1 R0      R1 = R0 = 4
//        i = i+1; 
//		  memory_file[i] = 16'b1000_000001_000000; // cmp R0 R1      
//		  i = i+1;
//	 //  memory_file[i] = 16'b0100_000000_000000; // je 0    
//    //    i = i+1; 
//		  memory_file[i] = 16'b0011_000000_000000; // jne 0    
//        i = i+1; 
//		  memory_file[i] = 16'b0101_000000_000001; // add R0 R1      
//        i = i+1; 
//		  memory_file[i] = 16'b1011_000100_000000; // mov [R4] R0    Mem[0] = 8
//		  i = i+1;
//		  memory_file[i] = 16'b0001_000000_000000; // inc R0         R0 = 9
//        i = i+1;
//		  memory_file[i] = 16'b1011_000001_000000; // mov [R1] R0    Mem[4] = 9
//		  i = i+1;
//		  memory_file[i] = 16'b0010_000000_000000; // jmp 0
//        i = i+1; 
    end

endmodule
