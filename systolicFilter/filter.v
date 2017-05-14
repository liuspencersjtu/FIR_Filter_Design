module filter(
	input	wire			clk,
	input	wire	signed [9:0]	din,
	input 	wire			rst,
	output	reg		signed [19:0]		dout
	);
	reg	signed [9:0]	coefficient[23:0];
	reg signed[19:0]  psum [22:0];
	wire signed [19:0] product0;
	wire signed[19:0] product1;
	wire signed[19:0] product2;
	wire signed[19:0] product3;
	wire signed[19:0] product4;
	wire signed[19:0] product5;
	wire signed[19:0] product6;
	wire signed[19:0] product7;
	wire signed[19:0] product8;
	wire signed[19:0] product9;
	wire signed[19:0] product10;
	wire signed[19:0] product11;
	wire signed[19:0] product12;
	wire signed[19:0] product13;
	wire signed[19:0] product14;
	wire signed[19:0] product15;
	wire signed[19:0] product16;
	wire signed[19:0] product17;
	wire signed[19:0] product18;
	wire signed[19:0] product19;
	wire signed[19:0] product20;
	wire signed[19:0] product21;
	wire signed[19:0] product22;
	wire signed[19:0] product23;

	//assign product0 = din * coefficient[0];
	assign product0= din * coefficient[0];
	assign product1= din * coefficient[1];
	assign product2= din * coefficient[2];
	assign product3= din * coefficient[3];
	assign product4= din * coefficient[4];
	assign product5= din * coefficient[5];
	assign product6= din * coefficient[6];
	assign product7= din * coefficient[7];
	assign product8= din * coefficient[8];
	assign product9= din * coefficient[9];
	assign product10= din * coefficient[10];
	assign product11= din * coefficient[11];
	assign product12= din * coefficient[12];
	assign product13= din * coefficient[13];
	assign product14= din * coefficient[14];
	assign product15= din * coefficient[15];
	assign product16= din * coefficient[16];
	assign product17= din * coefficient[17];
	assign product18= din * coefficient[18];
	assign product19= din * coefficient[19];
	assign product20= din * coefficient[20];
	assign product21= din * coefficient[21];
	assign product22= din * coefficient[22];
	assign product23= din * coefficient[23];

/*	mult_gen_0_funcsim mult0(
		.CLK(clk),
		.A(din),
		.B(coefficient[0]),
		.P(product0)
		);
mult_gen_0_funcsim mult1(
		.CLK(clk),
		.A(din),
		.B(coefficient[1]),
		.P(product1)
		);
mult_gen_0_funcsim mult2(
		.CLK(clk),
		.A(din),
		.B(coefficient[2]),
		.P(product2)
		);
mult_gen_0_funcsim mult3(
		.CLK(clk),
		.A(din),
		.B(coefficient[3]),
		.P(product3)
		);
mult_gen_0_funcsim mult4(
		.CLK(clk),
		.A(din),
		.B(coefficient[4]),
		.P(product4)
		);
mult_gen_0_funcsim mult5(
		.CLK(clk),
		.A(din),
		.B(coefficient[5]),
		.P(product5)
		);
mult_gen_0_funcsim mult6(
		.CLK(clk),
		.A(din),
		.B(coefficient[6]),
		.P(product6)
		);
mult_gen_0_funcsim mult7(
		.CLK(clk),
		.A(din),
		.B(coefficient[7]),
		.P(product7)
		);
mult_gen_0_funcsim mult8(
		.CLK(clk),
		.A(din),
		.B(coefficient[8]),
		.P(product8)
		);
mult_gen_0_funcsim mult9(
		.CLK(clk),
		.A(din),
		.B(coefficient[9]),
		.P(product9)
		);
mult_gen_0_funcsim mult10(
		.CLK(clk),
		.A(din),
		.B(coefficient[10]),
		.P(product10)
		);
mult_gen_0_funcsim mult11(
		.CLK(clk),
		.A(din),
		.B(coefficient[11]),
		.P(product11)
		);
mult_gen_0_funcsim mult12(
		.CLK(clk),
		.A(din),
		.B(coefficient[12]),
		.P(product12)
		);
mult_gen_0_funcsim mult13(
		.CLK(clk),
		.A(din),
		.B(coefficient[13]),
		.P(product13)
		);
mult_gen_0_funcsim mult14(
		.CLK(clk),
		.A(din),
		.B(coefficient[14]),
		.P(product14)
		);
mult_gen_0_funcsim mult15(
		.CLK(clk),
		.A(din),
		.B(coefficient[15]),
		.P(product15)
		);
mult_gen_0_funcsim mult16(
		.CLK(clk),
		.A(din),
		.B(coefficient[16]),
		.P(product16)
		);
mult_gen_0_funcsim mult17(
		.CLK(clk),
		.A(din),
		.B(coefficient[17]),
		.P(product17)
		);
mult_gen_0_funcsim mult18(
		.CLK(clk),
		.A(din),
		.B(coefficient[18]),
		.P(product18)
		);
mult_gen_0_funcsim mult19(
		.CLK(clk),
		.A(din),
		.B(coefficient[19]),
		.P(product19)
		);
mult_gen_0_funcsim mult20(
		.CLK(clk),
		.A(din),
		.B(coefficient[20]),
		.P(product20)
		);
mult_gen_0_funcsim mult21(
		.CLK(clk),
		.A(din),
		.B(coefficient[21]),
		.P(product21)
		);
mult_gen_0_funcsim mult22(
		.CLK(clk),
		.A(din),
		.B(coefficient[22]),
		.P(product22)
		);
mult_gen_0_funcsim mult23(
		.CLK(clk),
		.A(din),
		.B(coefficient[23]),
		.P(product23)
		);*/

always @(posedge clk) begin
	if (rst) begin
		psum[0] <= 0;
	psum[1] <= 0;
	psum[2] <= 0;
	psum[3] <= 0;
	psum[4] <= 0;
	psum[5] <= 0;
	psum[6] <= 0;
	psum[7] <= 0;
	psum[8] <= 0;
	psum[9] <= 0;
	psum[10] <= 0;
	psum[11] <= 0;
	psum[12] <= 0;
	psum[13] <= 0;
	psum[14] <= 0;
	psum[15] <= 0;
	psum[16] <= 0;
	psum[17] <= 0;
	psum[18] <= 0;
	psum[19] <= 0;
	psum[20] <= 0;
	psum[21] <= 0;
	psum[22] <= 0;
	end
	else  begin
	psum[0] <= product23;
	//psum[1] <= product22 +psum[0];
	psum[1] <= product22 + psum[0];
	psum[2] <= product21 + psum[1];
	psum[3] <= product20 + psum[2];
	psum[4] <= product19 + psum[3];
	psum[5] <= product18 + psum[4];
	psum[6] <= product17 + psum[5];
	psum[7] <= product16 + psum[6];
	psum[8] <= product15 + psum[7];
	psum[9] <= product14 + psum[8];
	psum[10] <= product13 + psum[9];
	psum[11] <= product12 + psum[10];
	psum[12] <= product11 + psum[11];
	psum[13] <= product10 + psum[12];
	psum[14] <= product9 + psum[13];
	psum[15] <= product8 + psum[14];
	psum[16] <= product7 + psum[15];
	psum[17] <= product6 + psum[16];
	psum[18] <= product5 + psum[17];
	psum[19] <= product4 + psum[18];
	psum[20] <= product3 + psum[19];
	psum[21] <= product2 + psum[20];
	psum[22] <= product1 + psum[21];
	dout <= product0 + psum[22];		//hazard?
	end
end

initial begin
	
	$readmemb("C:/Users/spencer/Desktop/matlab/vlsi/filter1/coefficient.txt",coefficient);
	
	/*coefficient[0] <= -10'd1;
	coefficient[1] <= -10'd2;
	coefficient[2] <= 10'd4;
	coefficient[3] <= 10'd5;
	coefficient[4] <= -10'd8;
	coefficient[5] <= -10'd11;
	coefficient[6] <= 10'd15;
	coefficient[7] <= 10'd20;
	coefficient[8] <= -10'd29;
	coefficient[9] <= -10'd43;
	coefficient[10] <= 10'd75;
	coefficient[11] <= 10'd231;
	coefficient[12] <= 10'd231;
	coefficient[13] <= 10'd75;
	coefficient[14] <= -10'd43;
	coefficient[15] <= -10'd29;
	coefficient[16] <= 10'd20;
	coefficient[17] <= 10'd15;
	coefficient[18] <= -10'd11;
	coefficient[19] <= -10'd8;
	coefficient[20] <= 10'd5;
	coefficient[21] <= 10'd4;
	coefficient[22] <= -10'd2;
	coefficient[23] <= -10'd1;	*/
	end
endmodule