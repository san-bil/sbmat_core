function map = kv_set_recurse(keys,val,map)

if(length(keys)==1)

    map = kv_set(keys{1},val,map);
    
else
    
    map = kv_set_recurse(keys(2:end),val,kv_get(keys{1},map));

end