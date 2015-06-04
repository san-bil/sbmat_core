function out = unix_find(folder, filter,find_opts)

if(~exist('find_opts','var'));find_opts = {'-type','f'};end;

opts_str = build_cmd(find_opts);

cmd = build_cmd({'find',folder,opts_str,unix_pipe,'grep',filter});
[~,stdout] = system(cmd);
out = filter_empty_strings(strsplit(stdout,newline));