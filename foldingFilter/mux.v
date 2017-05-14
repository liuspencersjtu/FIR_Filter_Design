module mux(
	input	wire			clk,
	input	wire	[5:0]	cnt,
	output	reg	signed 	[9:0]	coefficient		
	);
reg	signed [9:0]	b[23:0];
always @(posedge clk) begin
	case(cnt)
	//0:coefficient<=b[0];
	0:coefficient<=b[0][9:0];
	1:coefficient<=b[1][9:0];
	2:coefficient<=b[2][9:0];
	3:coefficient<=b[3][9:0];
	4:coefficient<=b[4][9:0];
	5:coefficient<=b[5][9:0];
	6:coefficient<=b[6][9:0];
	7:coefficient<=b[7][9:0];
	8:coefficient<=b[8][9:0];
	9:coefficient<=b[9][9:0];
	10:coefficient<=b[10][9:0];
	11:coefficient<=b[11][9:0];
	12:coefficient<=b[12][9:0];
	13:coefficient<=b[13][9:0];
	14:coefficient<=b[14][9:0];
	15:coefficient<=b[15][9:0];
	16:coefficient<=b[16][9:0];
	17:coefficient<=b[17][9:0];
	18:coefficient<=b[18][9:0];
	19:coefficient<=b[19][9:0];
	20:coefficient<=b[20][9:0];
	21:coefficient<=b[21][9:0];
	22:coefficient<=b[22][9:0];
	23:coefficient<=b[23][9:0];
	endcase
end


initial begin
	
	$readmemb("C:/Users/spencer/Desktop/matlab/vlsi/filter1/coefficient.txt",b);
	
	/*b[0] <= -10'd1;
	b[1] <= -10'd2;
	b[2] <= 10'd4;
	b[3] <= 10'd5;
	b[4] <= -10'd8;
	b[5] <= -10'd11;
	b[6] <= 10'd15;
	b[7] <= 10'd20;
	b[8] <= -10'd29;
	b[9] <= -10'd43;
	b[10] <= 10'd75;
	b[11] <= 10'd231;
	b[12] <= 10'd231;
	b[13] <= 10'd75;
	b[14] <= -10'd43;
	b[15] <= -10'd29;
	b[16] <= 10'd20;
	b[17] <= 10'd15;
	b[18] <= -10'd11;
	b[19] <= -10'd8;
	b[20] <= 10'd5;
	b[21] <= 10'd4;
	b[22] <= -10'd2;
	b[23] <= -10'd1;*/	
	end
endmodule