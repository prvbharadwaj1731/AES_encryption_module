module round(input clk, input [127:0]din, input [127:0]keyin,output [127:0]dout);
wire [127:0] sub_out, shift_out, mix_out;

sub_bytes  step1(clk, din,sub_out );
ShiftRows  step2(clk, sub_out,shift_out);
mixcolumns step3(clk, shift_out,mix_out);
assign dout = mix_out ^ keyin;
endmodule

module f_round(input clk,input [127:0]din, input [127:0]keyin,output [127:0]dout);
wire [127:0] sub_out, shift_out;

sub_bytes  s1(clk, din,sub_out );
ShiftRows  s2(clk, sub_out,shift_out);
assign dout = shift_out ^ keyin;
endmodule
