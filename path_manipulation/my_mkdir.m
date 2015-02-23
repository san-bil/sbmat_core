function my_mkdir(dir_name)

% in: a directory path
%
% out: nada
%
% desc: creates the directory, if it doesn't exist already (mkdir already does this, but this
%       just prevents the cluttering warnings)
%
% tags: #file #path #extension #files

    if(~exist(dir_name,'dir'))
        mkdir(dir_name)
    end
    
end
