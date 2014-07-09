%% Clear everything
clc;
clear all;
close all;

%% Get dataset
load dataset
 
%% Show each image

display('Showing results of the algorithm.');

for i = 1 : length(dataset)
    display(['Showing ' dataset(i).filename]);
    
    image = imread(dataset(i).filename);

    figure(1); imshow(image);
    figure(2); imshow(drawLineSegments(zeros(size(image)), dataset(i).segments));
    figure(3); imshow(drawLineSegments(zeros(size(image)), lineSegmentDetect(image)));
    
    pause
end
