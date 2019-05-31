% ENGG1801 Lab 11 %
% Author: Xing Deng%

% Clean workspace and command window%
clc;
clear;

clf;
clf reset;

% --- %

img = imread('oldPicture.jpg');

[rows, cols, channels] = size(img);

top_left = img(1:round(rows/2)+1, 1:round(cols/2)+1, :);

bottom_right = img(round(rows/2):rows, round(cols/2):cols, : );

color = 3;

for thisColor = 1:color
    top_left_trans(:, :, thisColor) = top_left(:, :, thisColor).';
end

result = [top_left_trans, bottom_right];

figure(1);
imshow(result);

