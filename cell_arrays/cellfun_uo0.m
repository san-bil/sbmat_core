function out = cellfun_uo0(f_handle,varargin)


out = cellfun(f_handle,varargin{:},'UniformOutput',0);