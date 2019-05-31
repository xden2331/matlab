% ENGG1801 Lab 11 %
% Author: Xing Deng%

% Clean workspace and command window%
clc;
clear;

% Clear existing figures, and reset image properties

% --- --- %
rows = 32;
cols = 32;
channels = 1;
matrix = zeros(rows, cols, channels, 'int8');
colormap hot;

% Initialize ball coordinates
x = 1;
y = 4;

BG_COLOR = 0;
BALL_COLOR = 1;
% Create a heatmap of the matrix as it stands
matrix(y, x) = BALL_COLOR;
imagesc(matrix);
colorbar;
