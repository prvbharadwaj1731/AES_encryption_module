set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Users\Jiabin Lin\Desktop\Module4_Libero\hdl\ShiftRows.v}
read_verilog -mode system_verilog {C:\Users\Jiabin Lin\Desktop\Module4_Libero\hdl\sbox.v}
read_verilog -mode system_verilog {C:\Users\Jiabin Lin\Desktop\Module4_Libero\hdl\sub_bytes.v}
read_verilog -mode system_verilog {C:\Users\Jiabin Lin\Desktop\Module4_Libero\hdl\round.v}
read_verilog -mode system_verilog {C:\Users\Jiabin Lin\Desktop\Module4_Libero\hdl\key_generation.v}
read_verilog -mode system_verilog {C:\Users\Jiabin Lin\Desktop\Module4_Libero\hdl\mixcolumns.v}
read_verilog -mode system_verilog {C:\Users\Jiabin Lin\Desktop\Module4_Libero\hdl\aes_main.v}
set_top_level {aes_main}
map_netlist
check_constraints {C:\Users\Jiabin Lin\Desktop\Module4_Libero\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\Jiabin Lin\Desktop\Module4_Libero\designer\aes_main\synthesis.fdc}
