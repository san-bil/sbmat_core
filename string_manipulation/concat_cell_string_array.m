function str=concat_cell_string_array(cell_string_array,delim)

if(~exist('delim','var'))
    delim=';';
end

str='';
for i = 1:length(cell_string_array)
    str = [str delim cell_string_array{i}];
end