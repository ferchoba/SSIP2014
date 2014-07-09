%% Clear everything
clc;
clear all;
close all;

%% Get image filenames
sample_filenames = loadSamplesInFolder('.');

%% Label images

dataset = [];

for i = 1 : length(sample_filenames)
    filename = sample_filenames(i, :)
    entry = struct('filename', filename, 'segments', []);
    dataset = [dataset; entry]
    dataset(1)
    
    segments = [];
    
    display(['labeling of ' filename ' started']);
    
    image = imread(filename);
        
	% States can be three possible values
	%  1: line segment start point is being selected
	%  2: line segment end point is being selected
	%  3: end of selection
	state = 1;
    
	while (1)
        if (state == 1)
            figure(1); imshow(drawLineSegments(image, segments));
            display('Please select line segment start point')
        elseif (state == 2) 
            display('Please select line segment end point')
        end
        
        figure(1);
        [x, y, key] = ginput(1)
            
        if (key ~= 1) % key was pressed
            if (key == 'e' && state == 1) % end labeling
                display(['Image ' filename ' labeled.'])
                break;
            elseif (key == 8 && ~isempty(segments)) % backspace means delete last point
                segments = segments(1 : end - 1);
                state = mod(state, 2) + 1;
                figure(1); hold on; imshow(drawLineSegments(image, segments));
            end
        else
            state = mod(state, 2) + 1;
            segments = [segments, x, y];
        end
        
        entry.segments = segments;
        
        if (length(dataset) == 1) 
        	dataset = entry
            dataset(1)
        else
            dataset(end - 1) = entry
            dataset(1)
        end
        
        save('dataset')
    end
end
