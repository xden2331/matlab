% Lab 5, Exercise 1-1
% Xing DENG

%Start from a blank workspace and screen
clc;
clear;

% Constructing an array with specific elements
array = [8, 4, 12, 9, 5, 10];

% let the max value equal to the first element
if length(array) > 0
    max = array(1);

    % Finding the max value
    for i = array
        if i >= max
            max = i;
        end
    end

    disp(max);
else
    disp("No maximum, since array is empty");
end