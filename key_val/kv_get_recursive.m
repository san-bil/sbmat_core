function [ res ] = kv_get_recursive(keylist, kv_map )

tmp=kv_map;
for i=1:length(keylist)

    tmp = kv_get(keylist{i},tmp);
    
end
res=tmp;

end

