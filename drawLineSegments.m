function image = drawLineSegments(originalImage, segments)

    image = originalImage;
    
    for i = 1 : 4 : (length(segments) - 3)
        [x, y] = bresenham(segments(i), segments(i+1), segments(i+2), segments(i+3));
        image(sub2ind(size(originalImage), y, x)) = 1;
    end
end

