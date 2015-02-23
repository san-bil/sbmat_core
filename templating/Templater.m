classdef Templater



    properties
    end
    
    methods(Static)
        
        
        function fill(input_template_file,dictionary, output_file, line_ending)
            
            % in: - the path to a template text file, where each field to be filled is preceded by a dollar sign
            %     - a dictionary mapping string fields to string values
            %     - the path to the output file, produced from the template+dictionary
            %     - a line ending delimiter (maybe it needs ';' or something_
            %
            %
            % out: nada.
            %
            % desc: reads in the template file lines, checks if each line contains any of the keys 
            %       in the dictionary - if so, replaces the key with the associated value
            %
            % e.g.: 
            %
            %       input_template_file contains: 
            %                       england=$ENGLAND_CAPITAL;
            %                       france=$FRANCE_CAPITAL;
            %                       middleearth=gondor;
            %                       germany=$GERMANY_CAPITAL;
            %                       italy=$ITALY_CAPITAL;
            %                       sweden=stockholm;
            %
            %       dictionary contains:
            %                       {
            %                       'ENGLAND_CAPITAL','london';
            %                       'FRANCE_CAPITAL','paris';
            %                       'GERMANY_CAPITAL','berlin';
            %                       'ITALY_CAPITAL','rome';
            %                       }
            %
            %       line_ending is ';'
            %
            %       will make output_file contain:
            %                       england=london;
            %                       france=paris;
            %                       middleearth=gondor;
            %                       germany=berlin;
            %                       italy=rome;
            %                       sweden=stockholm;
            %
            % tags: #templating #template #fill
            
            assert(length(kv_getkeys(dictionary))==length(my_unique(kv_getkeys(dictionary))));
            key_list = kv_getkeys(dictionary);
            
            in_fid = fopen(input_template_file);

            input_lines = index_cellarray(textscan(in_fid,'%s','Delimiter','&'),1);
            
            templated_lines = cell(size(input_lines));
            for i = 1:size(input_lines,1)
                
                templated_line=input_lines{i};
                
                for j = 1:length(key_list)
                    key = key_list{j};
                    val = kv_get(key,dictionary);
                    templated_line = strrep(templated_line,['$' key],val);
                end
                
                templated_lines{i} = templated_line;
            end

            out_fid = fopen(output_file, 'w');
            for k = 1:length(input_lines)
                fprintf(out_fid, ['%s' line_ending], templated_lines{k});
            end
            fprintf(out_fid, ['%s' line_ending], '');
            fclose(out_fid);
            
        end
    end
    
end

