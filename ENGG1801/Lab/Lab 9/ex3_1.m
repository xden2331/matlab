clc;
clear;

clf;
clf reset;

figure(3);

x = -10:1:10;
y = -10:1:10;

[xx, yy] = meshgrid(x, y);

zz = xx .* xx + sin(yy);

rows = 1;
cols = 2;

subplot(rows, cols, 1);
mesh(xx, yy, zz);
xlabel('x');
ylabel('y');
zlabel('z');
title('mesh');

subplot(rows, cols, 2);
surf(xx, yy, zz);
xlabel('x');
ylabel('y');
zlabel('z');
title('surf');