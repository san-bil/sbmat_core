function [ out ] = get_git_repo_root()

[~,out]=system('git rev-parse --show-toplevel');
out = strtrim(out);
end

