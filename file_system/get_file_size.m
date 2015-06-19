function fsize = get_file_size(file_path)

tmp = dir(file_path);
fsize = tmp.bytes;