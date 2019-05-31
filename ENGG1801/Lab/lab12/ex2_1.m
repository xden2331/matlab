clc;
clear;
clf reset;

h = [0.00 1.7 1.95 2.6 2.92 4.04 5.24];
f = [0.00 2.60 3.60 4.03 6.45 11.22 30.61];

coefs1 = polyfit(h, f, 1);
coefs2 = polyfit(h, f, 2);
coefs3 = polyfit(h, f, 3);

figure(1);
hold on;
plot(h, f, '+');
linearVals = polyval(coefs1, h);
quadVals = polyval(coefs2, h);
cubicVals = polyval(coefs3, h);
plot(h, linearVals, 'r-');
plot(h, quadVals, 'g-');
plot(h, cubicVals, 'b-');
xlabel('Height(ft)');
ylabel('Flow(ft^3/sec)');
legend('original data', 'linear', 'quadratic','cubic');

e1 = getError(h, f, coefs1);
e2 = getError(h, f, coefs2);
e3 = getError(h, f, coefs3);
minError = min([e1, e2, e3]);

disp([e1 e2 e3]);