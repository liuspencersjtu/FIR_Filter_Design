module mem(
		input wire			clk,
		
		output wire	signed [9:0]	rdata);
	reg	[6:0] addr;
	reg signed [9:0] mem [0:127];  // 32-bit memory with 128 entries

	assign rdata =  mem[addr][9:0];
	always @(posedge clk) begin
		if (addr == 31) begin
			addr <= 0;
		end
		else begin
		addr <= addr + 1;
		end
	end
	
	initial begin
	addr <=0;
	$readmemb("C:/Users/spencer/Desktop/matlab/vlsi/filter1/input.txt",mem);
	/*mem[0] <= 10'd511;
	mem[1] <= -10'd75;
	mem[2] <= 10'd256;
	mem[3] <= -10'd436;
	mem[4] <= 10'd0;
	mem[5] <= -10'd436;
	mem[6] <= 10'd256;
	mem[7] <= -10'd75;
	mem[8] <= 10'd511;
	mem[9] <= -10'd75;
	mem[10] <= 10'd256;
	mem[11] <= -10'd436;
	mem[12] <= 10'd0;
	mem[13] <= -10'd436;
	mem[14] <= 10'd256;
	mem[15] <= -10'd75;
	mem[16] <= 10'd511;
	mem[17] <= -10'd75;
	mem[18] <= 10'd256;
	mem[19] <= -10'd436;
	mem[20] <= 10'd0;
	mem[21] <= -10'd436;
	mem[22] <= 10'd256;
	mem[23] <= -10'd75;
	mem[24] <= 10'd511;
	mem[25] <= -10'd75;
	mem[26] <= 10'd256;
	mem[27] <= -10'd436;
	mem[28] <= 10'd0;
	mem[29] <= -10'd436;
	mem[30] <= 10'd256;
	mem[31] <= -10'd75;*/
	end

endmodule