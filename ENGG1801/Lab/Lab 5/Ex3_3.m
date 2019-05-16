% Lab 5, Exercise 1-1
% Xing DENG

%Start from a blank workspace and screen
clc;
clear;

% Constructing an array with specific elements
array = [8, 4, 12, 9, 5, 10];

% initializing sum
sum = 0;

% summing the array's elements
for i = array
    sum = sum + i;
end

% print the result
disp(sum);