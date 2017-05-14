module memStore(
		input wire			clk,
		input wire 	signed[19:0]	dstore
		);
	reg [10:0]	addr;
	reg signed [19:0] mem [1023:0]; 

	always @(posedge clk) begin
		mem[addr][19:0]	<=	dstore[19:0];
	end

	always @(posedge clk) begin
		addr <= addr+1;
	end

	initial begin
	addr <= 0;
	$readmemh("C:/Users/spencer/Desktop/matlab/vlsi/filter1/zero.txt",mem);
	
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