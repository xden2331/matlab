clc;
clear;

clf;
clf reset;

x = -10:1:10;
y = -15:1:15;

[xx, yy] = meshgrid(x, y);

zz = xx.^3 + yy.^2;

figure(4);

colormap winter;

surf(xx, yy, zz);
xlabel('x');
ylabel('y');
zlabel('z');
title('I love ENGG1801!');

shading interp;