% ENGG1801 - Tutorial 10 %
% Exercise: 1-1%
% Author: Xing DENG%

% Clean the workspace and the command window%
clc;
clear;

% ---Create mirror image--- %

% Read a matrix from the user
matrix = input('Enter a matrix: ');

[rows, cols] = size(matrix);

mirror = zeros(rows, cols);

mirror_matrix_col = 1;

% Reverse the cols
for col = [cols:-1:1]
    mirror(:, mirror_matrix_col) = matrix(:, col);
    mirror_matrix_col = mirror_matrix_col + 1;
end

disp(mirror);