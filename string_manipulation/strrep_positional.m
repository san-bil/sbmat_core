function out = strrep_positional(in,replacee,replacer,idxs)

out = in;
match_locations = (regexp(in,replacee));
out(match_locations(idxs)) = replacer;