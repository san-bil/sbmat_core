function [s] = kv_to_str( kv_map )


% in: a 2-column cell array representing a dictionary (first column==string keys, second column==values), 
%
% out: a string representing the concatenation of all the keys and all the values 
%      e.g. kv_to_str({'x',20;'y',40}) returns 'x20y40'
%
% desc: as above.
%
% tags: #map #dictionary #associativearray #associative #keyvalue

acc=[];

for i = 1:size(kv_map,1)
    key = kv_map{i,1};
    val = kv_map{i,2};
   
        if(ischar(val))
            acc = [acc key val];
        else
            acc = [acc key num2str(val)];
        end
end

s=acc;

end

