`timescale 1ns / 1ps

module decoder_tb;

	// Inputs
	reg [15:0] inst;

	// Outputs
	wire [3:0] op;
	wire [11:0] RegAddr;
	wire write;
	wire jump, mov, movReg, store, load;

	// Instantiate the Unit Under Test (UUT)
	Decoder uut (
		.inst(inst), 
		.op(op), 
		.RegAddr(RegAddr), 
		.write(write),
		.jump(jump),
		.mov(mov),
		.movReg(movReg),
		.store(store),
		.load(load)
	);

	initial begin
		// Initialize Inputs
		inst = 0;
		// Wait 100 ns for global reset to finish
		#10;
		inst = 16'b0001_000000_000000;
		#10;
		inst = 16'b0100_000000_000001;
		#10;
		inst = 16'b0101_000000_000001;
		#10;
		inst = 16'b0101_000000_000001;
      #10
		inst = 16'b1001_000000_000001;
      #10
		inst = 16'b1010_000000_000001;
      #10
		$finish;
		// Add stimulus here

	end
      
endmodule

