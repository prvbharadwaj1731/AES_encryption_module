//Rijndael S-box function
module sbox(input [7:0]data, output reg [7:0]sub_byte);
always@(data) begin
	case(data) 
			  
	  //Row 1
	  8'h00: sub_byte = 8'h63;
	  8'h01: sub_byte = 8'h7c;
	  8'h02: sub_byte = 8'h77;
	  8'h03: sub_byte = 8'h7b;
	  8'h04: sub_byte = 8'hf2;
	  8'h05: sub_byte = 8'h6b;
	  8'h06: sub_byte = 8'h6f;
	  8'h07: sub_byte = 8'hc5;
	  8'h08: sub_byte = 8'h30;
	  8'h09: sub_byte = 8'h01;
	  8'h0a: sub_byte = 8'h67;
	  8'h0b: sub_byte = 8'h2b;
	  8'h0c: sub_byte = 8'hfe;
	  8'h0d: sub_byte = 8'hd7;
	  8'h0e: sub_byte = 8'hab;
	  8'h0f: sub_byte = 8'h76;
	  
	  //Row 2
	  8'h10: sub_byte = 8'hca;
	  8'h11: sub_byte = 8'h82;
	  8'h12: sub_byte = 8'hc9;
	  8'h13: sub_byte = 8'h7d;
	  8'h14: sub_byte = 8'hfa;
	  8'h15: sub_byte = 8'h59;
	  8'h16: sub_byte = 8'h47;
	  8'h17: sub_byte = 8'hf0;
	  8'h18: sub_byte = 8'had;
	  8'h19: sub_byte = 8'hd4;
	  8'h1a: sub_byte = 8'ha2;
	  8'h1b: sub_byte = 8'haf;
	  8'h1c: sub_byte = 8'h9c;
	  8'h1d: sub_byte = 8'ha4;
	  8'h1e: sub_byte = 8'h72;
	  8'h1f: sub_byte = 8'hc0;
	  
	  //Row 3
	  8'h20: sub_byte = 8'hb7;
	  8'h21: sub_byte = 8'hfd;
	  8'h22: sub_byte = 8'h93;
	  8'h23: sub_byte = 8'h26;
	  8'h24: sub_byte = 8'h36;
	  8'h25: sub_byte = 8'h3f;
	  8'h26: sub_byte = 8'hf7;
	  8'h27: sub_byte = 8'hcc;
	  8'h28: sub_byte = 8'h34;
	  8'h29: sub_byte = 8'ha5;
	  8'h2a: sub_byte = 8'he5;
	  8'h2b: sub_byte = 8'hf1;
	  8'h2c: sub_byte = 8'h71;
	  8'h2d: sub_byte = 8'hd8;
	  8'h2e: sub_byte = 8'h31;
	  8'h2f: sub_byte = 8'h15;
	  
	  //Row 4
	  8'h30: sub_byte = 8'h04;
	  8'h31: sub_byte = 8'hc7;
	  8'h32: sub_byte = 8'h23;
	  8'h33: sub_byte = 8'hc3;
	  8'h34: sub_byte = 8'h18;
	  8'h35: sub_byte = 8'h96;
	  8'h36: sub_byte = 8'h05;
	  8'h37: sub_byte = 8'h9a;
	  8'h38: sub_byte = 8'h07;
	  8'h39: sub_byte = 8'h12;
	  8'h3a: sub_byte = 8'h80;
	  8'h3b: sub_byte = 8'he2;
	  8'h3c: sub_byte = 8'heb;
	  8'h3d: sub_byte = 8'h27;
	  8'h3e: sub_byte = 8'hb2;
	  8'h3f: sub_byte = 8'h75;
	  
	  //Row 5
	  8'h40: sub_byte = 8'h09;
	  8'h41: sub_byte = 8'h83;
	  8'h42: sub_byte = 8'h2c;
	  8'h43: sub_byte = 8'h1a;
	  8'h44: sub_byte = 8'h1b;
	  8'h45: sub_byte = 8'h6e;
	  8'h46: sub_byte = 8'h5a;
	  8'h47: sub_byte = 8'ha0;
	  8'h48: sub_byte = 8'h52;
	  8'h49: sub_byte = 8'h3b;
	  8'h4a: sub_byte = 8'hd6;
	  8'h4b: sub_byte = 8'hb3;
	  8'h4c: sub_byte = 8'h29;
	  8'h4d: sub_byte = 8'he3;
	  8'h4e: sub_byte = 8'h2f;
	  8'h4f: sub_byte = 8'h84;
	  
	  //Row 6
	  8'h50: sub_byte = 8'h53;
	  8'h51: sub_byte = 8'hd1;
	  8'h52: sub_byte = 8'h00;
	  8'h53: sub_byte = 8'hed;
	  8'h54: sub_byte = 8'h20;
	  8'h55: sub_byte = 8'hfc;
	  8'h56: sub_byte = 8'hb1;
	  8'h57: sub_byte = 8'h5b;
	  8'h58: sub_byte = 8'h6a;
	  8'h59: sub_byte = 8'hcb;
	  8'h5a: sub_byte = 8'hbe;
	  8'h5b: sub_byte = 8'h39;
	  8'h5c: sub_byte = 8'h4a;
	  8'h5d: sub_byte = 8'h4c;
	  8'h5e: sub_byte = 8'h58;
	  8'h5f: sub_byte = 8'hcf;
	  
	  //Row 7
	  8'h60: sub_byte = 8'hd0;
	  8'h61: sub_byte = 8'hef;
	  8'h62: sub_byte = 8'haa;
	  8'h63: sub_byte = 8'hfb;
	  8'h64: sub_byte = 8'h43;
	  8'h65: sub_byte = 8'h4d;
	  8'h66: sub_byte = 8'h33;
	  8'h67: sub_byte = 8'h85;
	  8'h68: sub_byte = 8'h45;
	  8'h69: sub_byte = 8'hf9;
	  8'h6a: sub_byte = 8'h02;
	  8'h6b: sub_byte = 8'h7f;
	  8'h6c: sub_byte = 8'h50;
	  8'h6d: sub_byte = 8'h3c;
	  8'h6e: sub_byte = 8'h9f;
	  8'h6f: sub_byte = 8'ha8;
	  
	  //Row 8
	  8'h70: sub_byte = 8'h51;
	  8'h71: sub_byte = 8'ha3;
	  8'h72: sub_byte = 8'h40;
	  8'h73: sub_byte = 8'h8f;
	  8'h74: sub_byte = 8'h92;
	  8'h75: sub_byte = 8'h9d;
	  8'h76: sub_byte = 8'h38;
	  8'h77: sub_byte = 8'hf5;
	  8'h78: sub_byte = 8'hbc;
	  8'h79: sub_byte = 8'hb6;
	  8'h7a: sub_byte = 8'hda;
	  8'h7b: sub_byte = 8'h21;
	  8'h7c: sub_byte = 8'h10;
	  8'h7d: sub_byte = 8'hff;
	  8'h7e: sub_byte = 8'hf3;
	  8'h7f: sub_byte = 8'hd2;
	  
	  //Row 9
	  8'h80: sub_byte = 8'hcd;
	  8'h81: sub_byte = 8'h0c;
	  8'h82: sub_byte = 8'h13;
	  8'h83: sub_byte = 8'hec;
	  8'h84: sub_byte = 8'h5f;
	  8'h85: sub_byte = 8'h97;
	  8'h86: sub_byte = 8'h44;
	  8'h87: sub_byte = 8'h17;
	  8'h88: sub_byte = 8'hc4;
	  8'h89: sub_byte = 8'ha7;
	  8'h8a: sub_byte = 8'h7e;
	  8'h8b: sub_byte = 8'h3d;
	  8'h8c: sub_byte = 8'h64;
	  8'h8d: sub_byte = 8'h5d;
	  8'h8e: sub_byte = 8'h19;
	  8'h8f: sub_byte = 8'h73;
	  
	  //Row 10
	  8'h90: sub_byte = 8'h60;
	  8'h91: sub_byte = 8'h81;
	  8'h92: sub_byte = 8'h4f;
	  8'h93: sub_byte = 8'hdc;
	  8'h94: sub_byte = 8'h22;
	  8'h95: sub_byte = 8'h2a;
	  8'h96: sub_byte = 8'h90;
	  8'h97: sub_byte = 8'h88;
	  8'h98: sub_byte = 8'h46;
	  8'h99: sub_byte = 8'hee;
	  8'h9a: sub_byte = 8'hb8;
	  8'h9b: sub_byte = 8'h14;
	  8'h9c: sub_byte = 8'hde;
	  8'h9d: sub_byte = 8'h5e;
	  8'h9e: sub_byte = 8'h0b;
	  8'h9f: sub_byte = 8'hdb;
	  
	  //Row 11
	  8'ha0: sub_byte = 8'he0;
	  8'ha1: sub_byte = 8'h32;
	  8'ha2: sub_byte = 8'h3a;
	  8'ha3: sub_byte = 8'h0a;
	  8'ha4: sub_byte = 8'h49;
	  8'ha5: sub_byte = 8'h06;
	  8'ha6: sub_byte = 8'h24;
	  8'ha7: sub_byte = 8'h5c;
	  8'ha8: sub_byte = 8'hc2;
	  8'ha9: sub_byte = 8'hd3;
	  8'haa: sub_byte = 8'hac;
	  8'hab: sub_byte = 8'h62;
	  8'hac: sub_byte = 8'h91;
	  8'had: sub_byte = 8'h95;
	  8'hae: sub_byte = 8'he4;
	  8'haf: sub_byte = 8'h79;
	  
	  //Row 12
	  8'hb0: sub_byte = 8'he7;
	  8'hb1: sub_byte = 8'hc8;
	  8'hb2: sub_byte = 8'h37;
	  8'hb3: sub_byte = 8'h6d;
	  8'hb4: sub_byte = 8'h8d;
	  8'hb5: sub_byte = 8'hd5;
	  8'hb6: sub_byte = 8'h4e;
	  8'hb7: sub_byte = 8'ha9;
	  8'hb8: sub_byte = 8'h6c;
	  8'hb9: sub_byte = 8'h56;
	  8'hba: sub_byte = 8'hf4;
	  8'hbb: sub_byte = 8'hea;
	  8'hbc: sub_byte = 8'h65;
	  8'hbd: sub_byte = 8'h7a;
	  8'hbe: sub_byte = 8'hae;
	  8'hbf: sub_byte = 8'h08;
	  
	  //Row 13
	  8'hc0: sub_byte = 8'hba;
	  8'hc1: sub_byte = 8'h78;
	  8'hc2: sub_byte = 8'h25;
	  8'hc3: sub_byte = 8'h2e;
	  8'hc4: sub_byte = 8'h1c;
	  8'hc5: sub_byte = 8'ha6;
	  8'hc6: sub_byte = 8'hb4;
	  8'hc7: sub_byte = 8'hc6;
	  8'hc8: sub_byte = 8'he8;
	  8'hc9: sub_byte = 8'hdd;
	  8'hca: sub_byte = 8'h74;
	  8'hcb: sub_byte = 8'h1f;
	  8'hcc: sub_byte = 8'h4b;
	  8'hcd: sub_byte = 8'hbd;
	  8'hce: sub_byte = 8'h8b;
	  8'hcf: sub_byte = 8'h8a;
	  
	  //Row 14
	  8'hd0: sub_byte = 8'h70;
	  8'hd1: sub_byte = 8'h3e;
	  8'hd2: sub_byte = 8'hb5;
	  8'hd3: sub_byte = 8'h66;
	  8'hd4: sub_byte = 8'h48;
	  8'hd5: sub_byte = 8'h03;
	  8'hd6: sub_byte = 8'hf6;
	  8'hd7: sub_byte = 8'h0e;
	  8'hd8: sub_byte = 8'h61;
	  8'hd9: sub_byte = 8'h35;
	  8'hda: sub_byte = 8'h57;
	  8'hdb: sub_byte = 8'hb9;
	  8'hdc: sub_byte = 8'h86;
	  8'hdd: sub_byte = 8'hc1;
	  8'hde: sub_byte = 8'h1d;
	  8'hdf: sub_byte = 8'h9e;
	  
	  //Row 15
	  8'he0: sub_byte = 8'he1;
	  8'he1: sub_byte = 8'hf8;
	  8'he2: sub_byte = 8'h98;
	  8'he3: sub_byte = 8'h11;
	  8'he4: sub_byte = 8'h69;
	  8'he5: sub_byte = 8'hd9;
	  8'he6: sub_byte = 8'h8e;
	  8'he7: sub_byte = 8'h94;
	  8'he8: sub_byte = 8'h9b;
	  8'he9: sub_byte = 8'h1e;
	  8'hea: sub_byte = 8'h87;
	  8'heb: sub_byte = 8'he9;
	  8'hec: sub_byte = 8'hce;
	  8'hed: sub_byte = 8'h55;
	  8'hee: sub_byte = 8'h28;
	  8'hef: sub_byte = 8'hdf;
	  
	  //Row 16
	  8'hf0: sub_byte = 8'h8c;
	  8'hf1: sub_byte = 8'ha1;
	  8'hf2: sub_byte = 8'h89;
	  8'hf3: sub_byte = 8'h0d;
	  8'hf4: sub_byte = 8'hbf;
	  8'hf5: sub_byte = 8'he6;
	  8'hf6: sub_byte = 8'h42;
	  8'hf7: sub_byte = 8'h68;
	  8'hf8: sub_byte = 8'h41;
	  8'hf9: sub_byte = 8'h99;
	  8'hfa: sub_byte = 8'h2d;
	  8'hfb: sub_byte = 8'h0f;
	  8'hfc: sub_byte = 8'hb0;
	  8'hfd: sub_byte = 8'h54;
	  8'hfe: sub_byte = 8'hbb;
	  8'hff: sub_byte = 8'h16;
	  
	  default: sub_byte = 8'h00;
	endcase
end
endmodule 
