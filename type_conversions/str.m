function out = str(x)

if(isnumeric(x))
    out = num2str(x);
elseif(ischar(x))
    out = x;
else
    error('wrong type');
end