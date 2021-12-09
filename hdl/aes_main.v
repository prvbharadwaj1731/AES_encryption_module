module aes(input clk, input[127:0] plaintext, input[127:0] key, output[127:0] encrypted_text);
	 
    // LED D9 for correct value; D2 for incorrect value
   // reg correct_flag, incorrect_flag; 
	//wire  [127:0] plaintext,encrypted_text, ciphertext; 														 
	wire  [127:0] do0, do1,do2,do3,do4,do5,do6,do7,do8,do9,do10; 
	wire  [127:0] key1,key2,key3,key4,key5,key6,key7,key8,key9,key10;
	
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
	round  r1(clk, do0, 		 key1,do1);
	round  r2(clk, do1, 		 key2,do2);
	round  r3(clk, do2, 		 key3,do3);
	round  r4(clk, do3,   	 key4,do4);
	round  r5(clk, do4, 		 key5,do5);
	round  r6(clk, do5, 		 key6,do6);
	round  r7(clk, do6, 		 key7,do7);
	round  r8(clk, do7, 		 key8,do8);
	round  r9(clk, do8, 		 key9,do9);
	f_round  r10(clk, do9, key10, do10);

	assign encrypted_text = do10;
endmodule


module aes_main(input clk, output wire [7:0] indicators);
	wire  [127:0] plaintext[7:0],encrypted_text[7:0], ciphertext[7:0],key[7:0]; 
    
    //test 0
    assign plaintext[0]  = 128'h54776f204f6e65204e696e652054776f;
    assign ciphertext[0] = 128'h29c3505f571420f6402299b31a02d73a;
	assign key[0]        = 128'h5468617473206d79204b756e67204675;

    //test1
    assign plaintext[1]  = 128'h00000000000000000000000000000000;
    assign ciphertext[1] = 128'h66e94bd4ef8a2c3b884cfa59ca342b2e;
	assign key[1]        = 128'h00000000000000000000000000000000;
    
    //test2 
    assign plaintext[2]  = 128'h00000101030307070f0f1f1f3f3f7f7f;
    assign ciphertext[2] = 128'h273ce9894fdca313dc76d89970b2c7ee;
	assign key[2]        = 128'hcbab000000000000000000000000abef;
    
    //test3 
    assign plaintext[3]  = 128'h00000101030307070f0f1f1f3f3f7f7f;
    assign ciphertext[3] = 128'h7f0a533427a337f87f3c3d22cd9d0a08;
	assign key[3]        = 128'h00000000000000000000000000000001;
    
    //test4 - 
    assign plaintext[4]  = 128'h00000101030307070f0f1f1f3f3f7f7f;
    assign ciphertext[4] = 128'hc7d12419489e3b6233a2c5a7f4563172;
	assign key[4]        = 128'h00000000000000000000000000000000;
    
    //test5
    assign plaintext[5]  = 128'haa000101030307070f0f1f1f3f3f7f7f;
    assign ciphertext[5] = 128'h3b0881f614a3bd422078a0fd917fc79c;
	assign key[5]        = 128'h00000000000000000000000000000000;
    
    //test6 - 
    assign plaintext[6]  = 128'haabb0101030307070f0f1f1f3f3f7f7f;
    assign ciphertext[6] = 128'h3cbfc4e6ec8d7d2e9ade95da6b387914;
	assign key[6]        = 128'h0000000000000000000000000000000a;
    
    //test7
    assign plaintext[7]  = 128'haabb0101030307070f0f1f1f3f3f7f7f;
    assign ciphertext[7] = 128'h491a732bad30c9b676b6694c8afcf0b7;
	assign key[7]        = 128'ha000000000000000000000000000000a;
    
    aes t1(clk, plaintext[0], key[0], encrypted_text[0]);
    aes t2(clk, plaintext[1], key[1], encrypted_text[1]);
    aes t3(clk, plaintext[2], key[2], encrypted_text[2]);
    aes t4(clk, plaintext[3], key[3], encrypted_text[3]);
    aes t5(clk, plaintext[4], key[4], encrypted_text[4]);
    aes t6(clk, plaintext[5], key[5], encrypted_text[5]);
    aes t7(clk, plaintext[6], key[6], encrypted_text[6]);
    aes t8(clk, plaintext[7], key[7], encrypted_text[7]);

    assign indicators[0] = (encrypted_text[0]==ciphertext[0])? 1'b0 : 1'b1;
    assign indicators[1] = (encrypted_text[1]==ciphertext[1])? 1'b0 : 1'b1;
    assign indicators[2] = (encrypted_text[2]==ciphertext[2])? 1'b0 : 1'b1;
    assign indicators[3] = (encrypted_text[3]==ciphertext[3])? 1'b0 : 1'b1;
    assign indicators[4] = (encrypted_text[4]==ciphertext[4])? 1'b0 : 1'b1;
    assign indicators[5] = (encrypted_text[5]==ciphertext[5])? 1'b0 : 1'b1;
    assign indicators[6] = (encrypted_text[6]==ciphertext[6])? 1'b0 : 1'b1;
    assign indicators[7] = (encrypted_text[7]==ciphertext[7])? 1'b0 : 1'b1;

endmodule