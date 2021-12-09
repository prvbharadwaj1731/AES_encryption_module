set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package tq144 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {PLL_SUPPLY} {PLL_SUPPLY_25}
set_def USE_CONSTRAINTS_FLOW 1
set_netlist -afl {C:\Microsemi\Projects\Project_3\AES_jb\designer\aes_main\aes_main.afl} -adl {C:\Microsemi\Projects\Project_3\AES_jb\designer\aes_main\aes_main.adl}
set_constraints   {C:\Microsemi\Projects\Project_3\AES_jb\designer\aes_main\aes_main.tcml}
set_placement   {C:\Microsemi\Projects\Project_3\AES_jb\designer\aes_main\aes_main.loc}
set_routing     {C:\Microsemi\Projects\Project_3\AES_jb\designer\aes_main\aes_main.seg}
