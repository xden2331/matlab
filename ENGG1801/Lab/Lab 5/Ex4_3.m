% Lab 5, Exercise 1-1
% Xing DENG

%Start from a blank workspace and screen
clc;
clear;

% Constructing an array with specific elements
array = [10, 20, 5];

% initializing sum
sumOverTen = 0;
countOverTen = 0;

% summing the array's elements
for i = array
    if i >= 10
        sumOverTen = sumOverTen + i;
        countOverTen = countOverTen + 1;
    end
end

if countOverTen > 0
    % Calculate the average
    avg = sumOverTen/countOverTen;

    % print the result
    disp(avg);
else
    % Empty array
    disp("There is no element in the array >= 10");
end

