% Lab 5, Exercise 1-1
% Xing DENG

%Start from a blank workspace and screen
clc;
clear;

% Constructing an array with specific elements
array = [];

% initializing sum
sum = 0;

% summing the array's elements
for i = array
    sum = sum + i;
end

if length(array) > 0
    % Calculate the average
    avg = sum/length(array);

    % print the result
    disp(avg);
else
    % Empty array
    disp("There is no element in the array");
end

