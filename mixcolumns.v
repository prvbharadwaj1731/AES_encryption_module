module mixcolumns(
	 input clk,
    input [127:0] data_in,
    output [127:0] data_out);
    x32 m32_0(clk, data_in[127:96], data_out[127:96]);
    x32 m32_1(clk, data_in[95:64],  data_out[95:64]);
    x32 m32_2(clk, data_in[63:32],  data_out[63:32]);
    x32 m32_3(clk, data_in[31:0],   data_out[31:0]);
endmodule






module x32(clk, din, dout);
input  clk; 
input  [31:0] din;
output [31:0] dout;


wire [7:0]d0_x2_out, d1_x2_out,d2_x2_out, d3_x2_out; 
wire [7:0]d0_x3_out, d1_x3_out,d2_x3_out, d3_x3_out; 
wire [7:0] dout0, dout1,dout2,dout3;

x2 m0(clk, din[31:24],   d0_x2_out);
x2 m1(clk, din[23:16],   d1_x2_out);
x2 m2(clk, din[15:8],    d2_x2_out);
x2 m3(clk, din[7:0],     d3_x2_out);

x3 m4(clk, din[31:24],   d0_x3_out);
x3 m5(clk, din[23:16],   d1_x3_out);
x3 m6(clk, din[15:8],    d2_x3_out);
x3 m7(clk, din[7:0],     d3_x3_out);

assign dout0 = d0_x2_out ^ d1_x3_out ^ din[15:8]  ^ din[7:0];
assign dout1 = din[7:0]  ^ d1_x2_out   ^ d2_x3_out^ din[31:24];
assign dout2 = din[31:24]  ^ din[23:16] ^ d2_x2_out  ^ d3_x3_out;
assign dout3 = d0_x3_out ^ din[23:16] ^ din[15:8] ^ d3_x2_out;
assign dout = {dout0, dout1,dout2,dout3};
endmodule 



module x2(clk, din, dout);
input clk;
input [7:0]din;
output reg [7:0]dout;
always @(posedge clk) begin
	dout <= {din[6:0],1'b0} ^ (8'h1b & {8{din[7]}});
end
endmodule 

module x3(clk, din, dout);
input clk;
input [7:0]din;
output [7:0]dout;
wire [7:0]temp; 
x2 m0(clk, din, temp);
assign dout=temp ^  din;
endmodule 