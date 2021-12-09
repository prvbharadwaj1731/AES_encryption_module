module ShiftRows(
    input clk,
    input [127:0] data_in,
    output reg [127:0]  data_out);
    
    
always@ (posedge(clk))
begin
   
	//shift zero
	data_out[127:120] <= data_in[127:120];
	data_out[95:88]   <= data_in[95:88];
	data_out[63:56]   <= data_in[63:56];
	data_out[31:24] 	<= data_in[31:24];
	
	//shift one
	data_out[119:112] <= data_in[87:80];
	data_out[87:80]   <= data_in[55:48];
	data_out[55:48]	<= data_in[23:16];
	data_out[23:16]   <= data_in[119:112];
	
	//shift two
	data_out[111:104]	<= data_in[47:40];
   data_out[79:72]	<= data_in[15:8];
   data_out[47:40]	<= data_in[111:104];
   data_out[15:8]		<= data_in[79:72];

	//shift three
	data_out[103:96]	<= data_in[7:0];
	data_out[71:64]	<= data_in[103:96];
	data_out[39:32]	<= data_in[71:64];
	data_out[7:0]		<= data_in[39:32];

end

    
endmodule