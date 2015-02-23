function i_s = num2str_mod( i, n )

% in: a numeric value
%
% out: string of passed number, padded to desired string length with zeros
%
% desc: as above
%
% tags: #string #strings #numeric

i_s = num2str( i );
while length( i_s ) < n
    i_s = [ '0' i_s ];
end
