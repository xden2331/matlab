% ENGG1801 Lab 11 %
% Author: Xing Deng%

% Clean workspace and command window%
clc;
clear;

% Clear existing figures, and reset image properties
clf;
clf reset;

% ---Write code reads the file lake.jpg (download from course website), 
% then shrinks the image
% along both the x and y axes to 0.7 of the original size.---

pic = imread('lake.jpg', 'jpg');

[rows, cols, channels] = size(pic);

new_rows = 1:1/0.7:rows;
new_cols = 1:1/0.7:cols;

new_rows = round(new_rows);
new_cols = round(new_cols);
new_pic = pic(new_rows, new_cols, :);
figure(1);
imshow(pic);

figure(2);
imshow(new_pic);