% Question 2 - Lab exam 3
% SID: 460072429
% UniKey: xden2331
% Reset the workspace, command window, and figures
clc;
clear;

% Initialize the values of x and y
x = [8 -1 6];
y = [3 6 11];

% Initialize the level of degree
degree = 2;

% Use polyfit to get the degree-2 coefficients
coefs = polyfit(x, y, degree);

% print out the labels and values of coefficients in the following orders [a, b, c]
fprintf("a = %.2f\n", coefs(1));
fprintf("b = %.2f\n", coefs(2));
fprintf("c = %.2f\n", coefs(3));