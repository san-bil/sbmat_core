function out = filter_string_list(list,regex)

filter = @(tmp) ~isempty(regexp(tmp, regex, 'once'));
mask = cellfun(filter, list, 'UniformOutput',0);
out = list(cell2mat(mask));