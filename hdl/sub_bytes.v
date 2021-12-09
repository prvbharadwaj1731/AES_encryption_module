module sub_bytes(input clk, input [127:0] in, output reg [127:0]out );

wire [127:0]temp;

sbox s0(in[7:0], temp[7:0]);
sbox s1(in[15:8], temp[15:8]);
sbox s2(in[23:16], temp[23:16]);
sbox s3(in[31:24], temp[31:24]);

sbox s4(in[39:32], temp[39:32]);
sbox s5(in[47:40], temp[47:40]);
sbox s6(in[55:48], temp[55:48]);
sbox s7(in[63:56], temp[63:56]);

sbox s8(in[71:64], temp[71:64]);
sbox s9(in[79:72], temp[79:72]);
sbox sa(in[87:80], temp[87:80]);
sbox sb(in[95:88], temp[95:88]);

sbox sc(in[103:96], temp[103:96]);
sbox sd(in[111:104], temp[111:104]);
sbox se(in[119:112], temp[119:112]);
sbox sf(in[127:120], temp[127:120]);

always @(posedge clk)
begin
	out<=temp;
end

endmodule
