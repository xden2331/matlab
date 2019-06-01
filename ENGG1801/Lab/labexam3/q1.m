% Question 1 - Lab exam 3
% SID: 460072429
% UniKey: xden2331
% Reset the workspace, command window, and figures
clc;
clear;
clf reset;

% Initialize the values of x and y
x = -2:0.01:2;
y = x;

% Fetch the 3-D grid of x and y
[xx, yy] = meshgrid(x, y);

% Calculate the value of f(x, y)
% let zz be f(x, y)
zz = (xx.^2 + yy.^2) .* cos(xx.*yy);

% Plot in figure 1
figure(1);
mesh(xx, yy, zz);

% Add labels
xlabel('x');
ylabel('y');
zlabel('z');