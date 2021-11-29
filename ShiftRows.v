module ShiftRows(
    input clk, reset,
    input [7:0] data_in [3:0][3:0],
    output reg [7:0]  data_out [3:0][3:0]
    );
    
    
reg [7:0] temp [3:0][3:0];
    
always@ (posedge(clk))
begin
    if(reset)
    begin
        temp <= 0;    
    end
    else
    begin
        temp[0] <= data_in[0];
        temp[1] <= {data_in[1:3], data_in[0]};
        temp[2] <= {data_in[2:3], data_in[0:1]};
        temp[3] <= {data_in[3], data_in[0:2]};
    end
    
data_out <= temp;
    
end

    
endmodule
