function [ y ] = sanitize_string( x, sanitizer )

if(~exist('sanitizer','var'))
    sanitizer='_';
end

y=strrep(lower(x),' ',sanitizer);

end

