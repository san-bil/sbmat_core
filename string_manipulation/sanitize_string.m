function [ y ] = sanitize_string( x )

y=strrep(lower(x),' ','_');

end

