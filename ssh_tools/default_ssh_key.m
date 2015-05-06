function out = default_ssh_key()

out = path_join(home_folder,'.ssh','id_rsa');

if(~exist(out,'file'))
    warning([mfilename ': Using ' out ' as the default ssh key, however it does not exist!']);
end