% Author: Xing DENG
% Lab 4, Exercise 1.1

% Start from a blank workspace and screen
clear;
clc;

% v = u+at

% Final velocity (m/s)
v = 0;

% Acceleration (m/s^2)
a = -9.81;

% The initial height (feet, inch, cm, m, and km)
initialHeightFeet = 25000;
inchesPerFeet = 12;
initialHeightInch = initialHeightFeet*inchesPerFeet;

cmPerInch = 2.54;
initialHeightCm = initialHeightInch*cmPerInch;

mPerCm = 1/100;
initialHeightM = initialHeightCm*mPerCm;

kmPerM = 1/1000;
initialHeightKm = initialHeightM*kmPerM;

% The finial height (km)
finalHeightKm = 100;

% Determine distance travelled (km)
distanceTravelledKm = finalHeightKm - initialHeightKm;

% Convert distance travelled from km to m
mPerKm = 1000;
s = distanceTravelledKm * mPerKm;

% Now use the rearranged formula to calculate initial velocity (m/s)
u = sqrt(v^2 - 2*a*s);

% v = u + at, calculate t, this is the time used for going up.
% t = (v-u)/a
t = (v-u)/a;

% times 2 will get the final seconds.
disp(t*2);

% Costs per second
costs = 200000;
disp('costs per sec');
disp(costs/(t*2));