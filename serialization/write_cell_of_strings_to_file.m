function write_cell_of_strings_to_file(filepath,string_arr)
touch(filepath);
fid=fopen(filepath,'a');

csvFun = @(str)sprintf('%s\n,',str);

xchar = cellfun(csvFun, string_arr, 'UniformOutput', false);

xchar = strcat(xchar{:});

xchar = strcat(xchar(1:end-1),'\n');
fprintf(fid,strrep(xchar,',',''));
fclose(fid);
