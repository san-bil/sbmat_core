function pause_with_countdown(interval)

for i = 1:interval
    fprintf('%d..',i);
    pause(1);
end

fprintf('done!\n');
