% ENGG1801 - Tutorial 10 %
% Exercise: 1-1%
% Author: Xing DENG%

% Clean the workspace and the command window%
clc;
clear;

% ------ %
a = [32 1; 212 1];
b = [0 ; 100];

result = a \ b;

fprintf("s: %d\nt: %d\n", result(1), result(2));
