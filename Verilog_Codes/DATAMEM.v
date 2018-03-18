`timescale 1ns / 1ns


module DATAMEM(address,data,read_data,write_enable,read_enable,clk,rst);

    input [15:0] data;
	 input [11:0] address;
    input write_enable, read_enable, clk, rst;
    output reg [15:0] read_data;

    reg [15:0] memory_file [0:63];
    
    integer i;

    always @(memory_file[address],read_enable)
    begin
        if (read_enable!=0)
        read_data = memory_file[address[6:0]];
    end
    
    always @(posedge clk)
    begin
            if (!rst)
            begin
                if (write_enable!= 0)
                    memory_file[address] <= data; 
            end
            else
            begin
                for (i=0; i<64; i=i+1) memory_file[i] <= 'b0; 
            end
    end

endmodule
