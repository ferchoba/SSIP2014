# Line segment detection in forms processing problems

Forms processing is a process by which one can capture information entered into fields of a document form and convert it into an electronic format. Form fields are typically organized into tabular structures, where line segments separate different form fields. When the exact position of a form field on the image is known (by locating the neighbouring line segments), OCR process can be performed to automatically capture information inside the fields. 

Using the provided dataset of 200 input images, your task is to:

1. Process input images to enhance and amplify image elements which belong to line segments
2. Classify image pixels in those who belong to line segments, and others which belong to image background
3. Group image pixels belonging to a single line segment
4. Compute all line segments on the input image in parametric form 
   (e.g Line Segment 1: Start Point(34, 14), End Point(128,92) = [34, 14, 128, 92])
5. Use the provided MATLAB app to visually compare obtained Line Segments with the input image.

A very fast method (with running time under 40ms on a typical PC) is required.

## Dataset

A dataset of 200 images is provided for algorithm evaluation. 5 samples are manually labeled and can be used for measuring how well the method behaves in real life situations. MATLAB sample application is provided which enables visual inspection for unlabeled samples.

## Recommended reading:

- http://www.ipol.im/pub/art/2012/gjmr-lsd/
- http://www.eecs.berkeley.edu/~yang/software/line_detector.tar.gz

## Provided Code

### Function `lineSegmentDetect.m`

Contains dummy implementation of a method for line segment detection. You should provide your implementation of the method.

### Script `test.m`

Script used for visual testing of `lineSegmentDetect` function. Script loads the `dataset.mat`, shows each input image in the dataset, and draw line segments returned by `lineSegmentDetect` function.

### Function `drawLineSegments.m`

Draws input line segments on the image.

### Script `label.m`

Is used for labeling of images. Should you require manual exact labeling of the images, you can used this script.

### Function `loadSamplesInFolder.m`

Returns an array of image filenames in a specified folder.

## Contact

Contact us at <jurica.cerovec@photopay.net> and <boris.trubic@photopay.net> with all inquires and questions.