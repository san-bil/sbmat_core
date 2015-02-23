fclose('all');
disp('Closed all file handles...')

isOpen = matlabpool('size') > 0;
if(isOpen)
    matlabpool close
end

clear
clc