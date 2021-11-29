module AESEncryptionMain(
    input clk, reset,
    input [127:0] plaintext, key, //128-bit input and key
    output [127:0] encrypted_text, //128-bit encrypted output
    );
    
reg [7:0] state_key [3:0][3:0];

KeyStateConvertor convert_1(.clk(clk), .reset(reset), .binary_key(key), .state_key(state_key));

//key state itself is key 0 for round 0 
//further keys are generated using key 0 and RCON table
reg [7:0] key_1 [3:0][3:0]; 
reg [7:0] key_2 [3:0][3:0]; 
reg [7:0] key_3 [3:0][3:0]; 
reg [7:0] key_4 [3:0][3:0]; 
reg [7:0] key_5 [3:0][3:0]; 
reg [7:0] key_6 [3:0][3:0]; 
reg [7:0] key_7 [3:0][3:0]; 
reg [7:0] key_8 [3:0][3:0]; 
reg [7:0] key_9 [3:0][3:0]; 
reg [7:0] key_10 [3:0][3:0];

KeyGenerationModule m1(.clk(clk), .reset(reset), .input_key(state_key), .round_key(key_1), .round_number(4'h1));
KeyGenerationModule m2(.clk(clk), .reset(reset), .input_key(key_1), .round_key(key_2), .round_number(4'h2));
KeyGenerationModule m3(.clk(clk), .reset(reset), .input_key(key_2), .round_key(key_3), .round_number(4'h3));
KeyGenerationModule m4(.clk(clk), .reset(reset), .input_key(key_3), .round_key(key_4), .round_number(4'h4));
KeyGenerationModule m5(.clk(clk), .reset(reset), .input_key(key_4), .round_key(key_5), .round_number(4'h5));
KeyGenerationModule m6(.clk(clk), .reset(reset), .input_key(key_5), .round_key(key_6), .round_number(4'h6));
KeyGenerationModule m7(.clk(clk), .reset(reset), .input_key(key_6), .round_key(key_7), .round_number(4'h7));
KeyGenerationModule m8(.clk(clk), .reset(reset), .input_key(key_7), .round_key(key_8), .round_number(4'h8));
KeyGenerationModule m9(.clk(clk), .reset(reset), .input_key(key_8), .round_key(key_9), .round_number(4'h9));
KeyGenerationModule m10(.clk(clk), .reset(reset), .input_key(key_9), .round_key(key_10), .round_number(4'ha));





endmodule