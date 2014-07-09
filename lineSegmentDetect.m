function segments = lineSegmentDetect(image)
% Function returns line segments found on the give image
% Line segments are in the form
%    [a, b, c, d, e, f, g, h ....]
%
% Which defines linesegments 
%   (a, b) -> (c, d)
%   (e, f) -> (g, h)


    % replace this line with proper logic
    segments = round(rand(1, 20) * min([size(image, 1), size(image, 2)]) + 1);

end

