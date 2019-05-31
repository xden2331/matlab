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

if rows ~= cols
    disp("Not a square matrix");
else
    disp(matrix^2);
    disp(matrix.^2);
end