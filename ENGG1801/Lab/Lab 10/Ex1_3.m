% ENGG1801 - Tutorial 10 %
% Exercise: 1-1%
% Author: Xing DENG%

% Clean the workspace and the command window%
clc;
clear;

% ------ %

% Read a matrix from the user
matrix = input('Enter a matrix: ');

% Fetch the size
[rows, cols] = size(matrix);

% Traverse the matrix
for i = [1:rows]
    for j = [1:cols]
        % Check if the current element is less than 5
        if matrix(i, j) < 5
            
            % If less than 5, replace it with 0
            matrix(i, j) = 0;
        end
    end
end

disp(matrix);