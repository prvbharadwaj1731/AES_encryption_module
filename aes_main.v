module aes_main(input clk);
	 
	wire  [127:0] plaintext,encrypted_text; 														 
	wire  [127:0] do0, do1,do2,do3,do4,do5,do6,do7,do8,do9; 
	wire  [127:0] key,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10;
	assign plaintext = 129'h54776f204f6e65204e696e652054776f;
	assign key = 128'h5468617473206d79204b756e67204675;
	key_generation k1(key,   key1,  1);
	key_generation k2(key1,  key2,  2);
	key_generation k3(key2,  key3,  3);
	key_generation k4(key3,  key4,  4);
	key_generation k5(key4,  key5,  5);

	key_generation k6(key5,  key6,  6);
	key_generation k7(key6,  key7,  7);
	key_generation k8(key7,  key8,  8);
	key_generation k9(key8,  key9,  9);
	key_generation k10(key9, key10, 10);

	assign do0 = key ^ plaintext; 
	round  r1(clk, do0, key1,do1);
//		round r2(clk, do1, 		 key2,do2);
//		round r3(clk, do2, 		 key3,do3);
//		round r4(clk, do3,   	 key4,do4);
//		round r5(clk, do4, 		 key5,do5);
//		round r6(clk, do5, 		 key6,do6);
//		round r7(clk, do6, 		 key7,do7);
//		round r8(clk, do7, 		 key8,do8);
//		round r9(clk, do8, 		 key9,do9);
//		round r10(clk, do9, 	    key10,encrypted_text);

		
		

endmodule


//	addroundkey step0(input [127:0]data, input[127:0] key, output [127:0]out);
//	sub_bytes   step1(clk, plaintext,sub_out );
//	ShiftRows   step2(clk, sub_out,shift_out);
//	MixColumns  step3(clk, shift_out,mix_out);
//	assign do1 = mix_out ^ key;