function out = cellcell(outer_dims, inner_dims)

out = cell(outer_dims);

total_size = prod(outer_dims);

for i = 1:total_size

    out{i} = cell(inner_dims);

end
