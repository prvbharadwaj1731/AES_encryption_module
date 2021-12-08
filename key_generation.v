module key_generation(input [127:0]key, output [127:0]key_gen, input [3:0] round_num);
wire [31:0] w0,w1,w2,w4,w5,w6,w7,w3_r,w3,w3_s,w3_g;
wire [31:0] rcon;

assign w3 = key[31:0];
assign w2 = key[63:32]; 
assign w1 = key[95:64];
assign w0 = key[127:96];

//funtion g
assign w3_r = {key[23:0],key[31:24]};
sbox s0(w3_r[7:0],   w3_s[7:0]);
sbox s1(w3_r[15:8],  w3_s[15:8]);
sbox s2(w3_r[23:16], w3_s[23:16]);
sbox s3(w3_r[31:24], w3_s[31:24]);
rcon r0(round_num,rcon);
assign w3_g = w3_s ^ rcon;
//end function g

assign w4 = w3_g ^ w0;
assign w5 = w3_g ^ w0 ^ w1;
assign w6 = w3_g ^ w0 ^ w1 ^ w2;
assign w7 = w3_g ^ w0 ^ w1 ^ w2 ^ w3;


assign key_gen = {w4,w5,w6,w7};

endmodule




module rcon(input [3:0] in,output reg [31:0] out);
always @(*)
 case(in)
    4'h1: out=32'h01000000;
    4'h2: out=32'h02000000;
    4'h3: out=32'h04000000;
    4'h4: out=32'h08000000;
    4'h5: out=32'h10000000;  
    4'h6: out=32'h20000000;
    4'h7: out=32'h40000000;
    4'h8: out=32'h80000000;
    4'h9: out=32'h1b000000;
    4'ha: out=32'h36000000;
    default: out=32'h00000000;
  endcase
endmodule

//assign w3_r = {key[103:96], key[127:104]};
