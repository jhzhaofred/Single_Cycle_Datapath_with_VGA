    `timescale 1ns / 1ps    
        
    module vga_controller(    
        input clk,    
        input rst,    
		  input buttom,
		  input [5:0] rdAddr2,
        output reg [2:0] r,    
        output reg [2:0] g,    
        output reg [1:0] b,    
		  output reg [3:0] sel = 7, 
        output hs,    
        output vs,
		  output [7:0] light,
		  output equal
        );    
        
        parameter UP_BOUND = 31;    
        parameter DOWN_BOUND = 510;    
        parameter LEFT_BOUND = 144;    
        parameter RIGHT_BOUND = 783;    

        wire pclk;    
        reg [1:0] count;    
        reg [9:0] hcount, vcount; 
		  wire hit;
		  wire clk_0;
		  wire [15:0] inst;
		  wire [15:0] rdData2, PCAddr;
        number n0 (rdData2[3:0], hcount, vcount, hit , 0); 
		  number n1 (rdData2[7:4], hcount, vcount, hit1 , 80); 
		  number n2 (rdData2[11:8], hcount, vcount, hit2 , 160); 
		  number n3 (rdData2[15:12], hcount, vcount, hit3 , 240); 
		  number n4 (PCAddr[3:0], hcount, vcount, hit4 , 320); 
		  wire [3:0] outdigit;
		  clk_div clk_div0(clk, clk_0);
		  clk_div1 clk_div_1k(clk, clk_1);
		  TopModule cpu(.clk(clk_0), .rst(rst), .buttom(buttom),.inst(inst),.rdAddr2(rdAddr2),.PCAddr(PCAddr), .rdData2(rdData2),.equal(equal));
		  seg s0(outdigit, light);
		  select_seg ss0(inst, sel, outdigit);
        assign pclk = count[1];    
		  always@(posedge clk_1) begin
				if (sel == 7) sel = 11;
				else if (sel == 11) sel = 13;
				else if (sel == 13) sel = 14;
				else if (sel == 14) sel = 7;
		  end
        always @ (posedge clk)    
        begin    
            if (rst)    
                count <= 0;    
            else
                count <= count+1;    
        end    
            
        assign hs = (hcount < 96) ? 0 : 1;    
        always @ (posedge pclk or posedge rst)    
        begin    
            if (rst)    
                hcount <= 0;    
            else if (hcount == 799)    
                hcount <= 0;    
            else    
                hcount <= hcount+1;    
        end    
            
        assign vs = (vcount < 2) ? 0 : 1;    
        always @ (posedge pclk or posedge rst)    
        begin    
            if (rst)    
                vcount <= 0;    
            else if (hcount == 799) begin    
                if (vcount == 520)    
                    vcount <= 0;    
                else    
                    vcount <= vcount+1;    
            end    
            else    
                vcount <= vcount;    
        end    
            
        always @ (posedge pclk or posedge rst)    
        begin
            if (rst) begin    
                r <= 0;    
                g <= 0;    
                b <= 0;    
            end    
            else begin
					 if(hit || hit1 ||  hit2 || hit3 || hit4) begin
						  r <= 3'b111;    
                    g <= 3'b111;    
                    b <= 2'b11;   
					 end
                else begin    
                    r <= 3'b000;    
                    g <= 3'b000;    
                    b <= 2'b00;    
                end    
            end    
        end          
    endmodule  