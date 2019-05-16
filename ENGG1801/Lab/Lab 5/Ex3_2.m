% Lab 5, Exercise 1-1
% Xing DENG

%Start from a blank workspace and screen
clc;
clear;

% Constructing an array with specific elements
array = [8, 4, 12, 9, 5, 10];

% print the array's elements
i = 1;

while i <= length(array)
    disp(array(i));
    i = i+1;
end