set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Microsemi\Projects\Project_3\AES_jb\hdl\ShiftRows.v}
read_verilog -mode system_verilog {C:\Microsemi\Projects\Project_3\AES_jb\hdl\sbox.v}
read_verilog -mode system_verilog {C:\Microsemi\Projects\Project_3\AES_jb\hdl\sub_bytes.v}
read_verilog -mode system_verilog {C:\Microsemi\Projects\Project_3\AES_jb\hdl\round.v}
read_verilog -mode system_verilog {C:\Microsemi\Projects\Project_3\AES_jb\hdl\key_generation.v}
read_verilog -mode system_verilog {C:\Microsemi\Projects\Project_3\AES_jb\hdl\mixcolumns.v}
read_verilog -mode system_verilog {C:\Microsemi\Projects\Project_3\AES_jb\hdl\aes_main.v}
set_top_level {aes_main}
map_netlist
check_constraints {C:\Microsemi\Projects\Project_3\AES_jb\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Microsemi\Projects\Project_3\AES_jb\designer\aes_main\synthesis.fdc}
