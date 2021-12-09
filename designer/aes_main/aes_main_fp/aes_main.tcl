open_project -project {C:\Users\Jiabin Lin\Desktop\Module4_Libero\designer\aes_main\aes_main_fp\aes_main.pro}
enable_device -name {M2S010} -enable 1
set_programming_file -name {M2S010} -file {C:\Users\Jiabin Lin\Desktop\Module4_Libero\designer\aes_main\aes_main.ppd}
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
save_project
close_project
