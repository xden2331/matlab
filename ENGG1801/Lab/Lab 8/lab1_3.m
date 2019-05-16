% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%read a decimal number, and print the double of it%%%%%%%%%

% Read csv file
data = csvread('some_numeric_data.csv');

% Fetch matrix size
[rows, cols] = size(data);

% Print the sum of each row
for i = 1:rows
    
    % Initialize sum
    sum = 0;
    
    % Iterate every element in current row,
    for j = 1:cols
        % Sum the elements
        sum = sum + data(i, j);
    end
    
    % Display the result
    disp(sum);
end

output = 'formatted_data.csv');