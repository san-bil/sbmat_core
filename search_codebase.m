function search_codebase(search_root, search_term, linewise)

if(~exist('linewise','var'));linewise=0;end;

search_term = ['''*' search_term '*'''];

if(~linewise)

    cmd = build_string_args({'find',search_root,'-iwholename',search_term});

else

    cmd = build_string_args({'grep','-R',search_term,search_root});
    
end

system_e(cmd);