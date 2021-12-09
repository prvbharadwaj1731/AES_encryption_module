new_project \
         -name {aes_main} \
         -location {C:\Microsemi\Projects\Project_3\AES_jb\designer\aes_main\aes_main_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S010} \
         -name {M2S010}
enable_device \
         -name {M2S010} \
         -enable {TRUE}
save_project
close_project
