`timescale 1 ns / 1 ns
module testbench(

	);
	reg clk;
	wire signed [9:0]	din;
	wire signed [19:0]	dout;
	wire rst;

	always begin
		#5;
		clk <= ~clk;
	end

	assign rst = 0;
	mem mem1(
		.clk(clk),
		.rdata(din)
		);

	filter filter1(
		.clk(clk),
		.rst(rst),
		.din(din),
		.dout(dout)
		);

	memStore mem2(
		.clk(clk),
		.dstore(dout)
		);
	initial
	begin
		clk <= 0;
		//$readmemh("C:/Users/spencer/Desktop/matlab/vlsi/filter1/zeros.txt",mem2.mem);
	end
endmodule