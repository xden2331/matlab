
clc;
clear;

clf;
clf reset;

figure(1);

x = -10: 0.1: 10;
y1 = tan(x);
y2 = 50 * sin(x);

plot(x, y1, 'r:');
xlabel('x');
ylabel('y');

hold on;

plot(x, y2, 'b-');

legend('y1 = tanh(x)','y2 = 50 * sin(x)')