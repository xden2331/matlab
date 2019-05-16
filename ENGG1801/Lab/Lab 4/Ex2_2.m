% Author: Xing DENG
% Lab 4, Exercise 1.1

% Start from a blank workspace and screen
clear;
clc;

% Initialize the coefficients of the quadratic equation (a, b and c)
a = 1;
b = 0;
c = 1;

% b^2 - 4ac
delta = b^2-4*a*c;

% if delta > 0 there are two different roots, 
if delta > 0
    disp('Root 1: ');
    disp((-b+sqrt(delta))/(2*a));
    disp('Root 2: ');
    disp((-b-sqrt(delta))/(2*a));
% else print 'There are less than 2 real roots for these coefficients'
else
    disp('There are less than 2 real roots for these coefficients');
end