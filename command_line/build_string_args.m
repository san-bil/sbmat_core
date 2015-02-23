function out = build_string_args(args)
out = '';

for i = 1:length(args)    
    out = [out ' ' args{i}];
end

out = [out ' '];