module KeyStateConvertor(
    input [127:0] binary_key, //ASCII encoded user input key
    input clk,reset,
    output reg [7:0] state_key [3:0] [3:0], // 2-D array holding key state
    );
    

always@ (posedge(clk))
begin
    if(reset)
        state_key <= 0;
    else if(~reset)
    begin
        
        //column 1
        state_key[0][0] = binary_key[0:7];
        state_key[1][0] = binary_key[8:15];
        state_key[2][0] = binary_key[16:23];
        state_key[3][0] = binary_key[24:31];
        
        //column 2
        state_key[0][1] = binary_key[32:39];
        state_key[1][1] = binary_key[40:47];
        state_key[2][1] = binary_key[48:55];
        state_key[3][1] = binary_key[56:63];
        
        //column 3
        state_key[0][2] = binary_key[64:71];
        state_key[1][2] = binary_key[72:79];
        state_key[2][2] = binary_key[80:87];
        state_key[3][2] = binary_key[88:95];
        
        //column 4
        state_key[0][3] = binary_key[96:103];
        state_key[1][3] = binary_key[104:111];
        state_key[2][3] = binary_key[112:119];
        state_key[3][3] = binary_key[120:127];
    end
    
end


endmodule
