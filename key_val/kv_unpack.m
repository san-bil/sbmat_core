function kv_unpack(dict)

for i = 1:size(dict,1)

    key = dict{i,1};
    val = dict{i,2};
    assignin('caller', key, val);
    
end
