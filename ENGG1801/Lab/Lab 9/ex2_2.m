clc;
clear;

clf;
clf reset;

figure(1);

t = -10: 0.01: 10;
x = (2+cos(16*t)).*cos(t);
y = (2+cos(16*t)).*sin(t);
z = sin(16*t);

plot3(x, y, z);

% Show the dotted gridlines in the background
grid on;

% Add appropriate labels, title, and legend
xlabel('x');
ylabel('y');
zlabel('z');
title('I really love ENGG1801!')