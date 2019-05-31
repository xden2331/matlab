% Show the original photo and the smoothed photo
%
% Lab 11, Exercise 3-1
% Author:  


% The minimum and maximum possible x and y values
global minX;
global maxX;
global minY;
global maxY;


% The name of the file that contains the image
filename = 'astro001.png';

% Read the file and store the image as a 3-D matrix
originalPhoto = imread(filename);

% Determine dimensions of original image
[rows, cols, colors] = size(originalPhoto);

% Set minimum and maximum possible x and y values based on size of image
minX = 1;
minY = 1;
maxX = cols;
maxY = rows;

% Show the original photo in figure 1
figure(1);
imshow(originalPhoto);

% Create the smooothed photo
smoothedPhoto = makeSmoothedPhoto(originalPhoto);

% Show the smoothed photo in figure 2
figure(2);
imshow(smoothedPhoto);
