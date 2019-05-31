clc;
clear;
clf reset;

x = [100 150 250 300 400 500];
y = [2506.7 2582.8 2633.7 2810.4 2967.9 3131.6];

linearNew = interp1(x, y, 350);
splineNew = spline(x, y, 350);

figure(1);
hold on;
plot(x, y, 'o');
plot(x, y, 'b-');

minX = 100;
maxX = 500;
moreX = linspace(minX, maxX, 50);
moreY = spline(x, y, moreX);
plot(x, y, 'r-');