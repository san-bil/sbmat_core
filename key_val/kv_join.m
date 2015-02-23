function [ kv_map_joined ] = kv_join( varargin )


% in: 2 dictionaries (where each dictionary is a 2-column cell array [first column==string keys, second column==values])
%
% out: both dictionaries merged into one. Responsibility for key-uniqueness in the joined dictionary is with the user.
%
% desc: as above.
%
% tags: #map #dictionary #associativearray #associative #keyvalue

kv_map_joined = vertcat(varargin{:});


if(length(unique(kv_getkeys(kv_map_joined)))<length(kv_getkeys(kv_map_joined)))
    error( 'kv_map is no longer consistent' );
end
    


end

