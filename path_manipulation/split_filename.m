function [ filename_stem,extension ] = split_filename( filename )

% in: a file name
%
% out: the filename and its extension
%
% desc: as above.
%
% tags: #file #path #extension #files

periods = regexp(filename,'\.');

filename_stem = filename(1:periods(end)-1);
extension = filename(periods(end)+1:end);

end

