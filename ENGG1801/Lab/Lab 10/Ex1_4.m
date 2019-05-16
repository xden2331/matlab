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

minElement = matrix(1, 1);
% Traverse the matrix
for i = [1:rows]
    for j = [1:cols]
        % Check if the current element is less than the current minimum
        if matrix(i, j) < minElement
            
            % If yes, update the current minimum
            minElement = matrix(i, j);
        end
    end
end

disp(minElement);