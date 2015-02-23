function out = change_file_ext(file_path,target_ext)

dots = regexp(file_path,'\.');
out = [file_path(1:dots(end)) target_ext];