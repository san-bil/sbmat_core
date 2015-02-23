function [trial_vector]=apply_func_pipeline(input, func_pipeline) 



    
    
    trial_vector = input;
    for k = 1:length(func_pipeline)    
            func_h = func_pipeline{k};
            trial_vector=func_h(trial_vector);
    end
    
    