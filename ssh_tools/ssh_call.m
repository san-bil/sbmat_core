function out = ssh_call(cmd,host,key)

cmd_bits = {'ssh -i ',key,host,['"' cmd '"']};

cmd = concat_cell_string_array(cmd_bits,' ');

[~,out] = system(cmd);