% ENGG1801 - Tutorial 10 %
% Exercise: 2-1%
% Author: Xing DENG%

% Clean the workspace and the command window%
clc;
clear;

% ------ %

matrix = [2 5 7; 3 2 3; 1 3 2];
y = [9; 2; 5];

% a)
inv_m = inv(matrix);

x = inv_m * y;
disp("question a) ");
disp(x);

% b)
x = matrix \ y;
disp("question b) ");
disp(x);