function [ updated_parent_dict ] = kv_update(updater_dict, parent_dict)

    updated_parent_dict=parent_dict;
    for i = 1:size(updater_dict,1)
        
        if(kv_haskey(updater_dict{i,1},parent_dict))
            fprintf('Overwriting dict value for %s\n',str(updater_dict{i,1}));
        end
        
        updated_parent_dict = kv_set(updater_dict{i,1},updater_dict{i,2},parent_dict);
    end

end

