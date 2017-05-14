`timescale 1 ns / 1 ns
module filter(
	input	wire			clk,
	input	wire signed	[9:0]	din,
	input 	wire			rst,
	output	reg	signed	[19:0]		dout,
	output	reg				wd
	);
	/*The coefficient of the filter
	reg		[9:0]	coefficient_0;
	reg		[9:0]	coefficient_1;
	reg		[9:0]	coefficient_2;
	reg		[9:0]	coefficient_3;
	reg		[9:0]	coefficient_4;
	reg		[9:0]	coefficient_5;
	reg		[9:0]	coefficient_6;
	reg		[9:0]	coefficient_7;
	reg		[9:0]	coefficient_8;
	reg		[9:0]	coefficient_9;
	reg		[9:0]	coefficient_10;
	reg		[9:0]	coefficient_11;
	reg		[9:0]	coefficient_12;
	reg		[9:0]	coefficient_13;
	reg		[9:0]	coefficient_14;
	reg		[9:0]	coefficient_15;
	reg		[9:0]	coefficient_16;
	reg		[9:0]	coefficient_17;
	reg		[9:0]	coefficient_18;
	reg		[9:0]	coefficient_19;
	reg		[9:0]	coefficient_20;
	reg		[9:0]	coefficient_21;
	reg		[9:0]	coefficient_22;
	reg		[9:0]	coefficient_23;
	reg		[9:0]	coefficient_24;
	reg		[9:0]	coefficient_25;
	reg		[9:0]	coefficient_26;
	reg		[9:0]	coefficient_27;
	reg		[9:0]	coefficient_28;
	reg		[9:0]	coefficient_29;
	reg		[9:0]	coefficient_30;
	reg		[9:0]	coefficient_31;
	reg		[9:0]	coefficient_32;*/
	//counter
	reg		[5:0]	cnt;
	wire	signed	[9:0]	coefficient;
	wire	signed[19:0]	product;
	//wire	[20:0]	psum_wire;
	reg		signed [19:0]	psum;

	always @(posedge clk ) begin
		if (rst) begin
			// reset
			cnt <=0;
		end
		else if (cnt == 23) begin
			cnt <=0;
		end
		else begin
			cnt <=cnt+1;
		end
	end

	

	mux mux1(
		.clk(clk),
		.cnt(cnt),
		.coefficient(coefficient)
		);

	/*mult_gen_0 mult(
		.CLK(clk),
		.A(din),
		.B(coefficient),
		.P(product)
		);*/

	assign product = coefficient * din;

	always @(posedge clk) begin
		if (cnt == 23) begin
			psum <= 0;
		end
		else begin
			psum <= psum + product;
		end
	end

	always @(posedge clk ) begin
		if (cnt == 23) begin
			wd <= 1;
			dout <= psum + product;
		end
		else begin
			dout <= 0;
			wd <= 0;
		end
	end

	initial begin
		
		cnt <=0;
		#6 psum <=0;
	end

endmodule