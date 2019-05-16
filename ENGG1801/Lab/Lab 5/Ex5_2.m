% Lab 5, Exercise 5-2
% Xing DENG

%Start from a blank workspace and screen
clc;
clear;

% Create an array with 3 numeric elements
% Each element representing a remperature of water in a container.
temps = [-10,15,100];

% Check the contents, and print any of these message

% if all 3 temperatures are equal, print 'all equal'
if temps(1) == temps(2) && temps(2) == temps(3)
    disp('all equal');
end

% if any number is greater than or equal to 100, print 'boiling'
boilingCount = 0;
for temp = temps
    if temp >= 100
        boilingCount = boilingCount+1;
    end
end

if boilingCount > 0
    disp("boiling");
end

% if any number is less than or equal to 0, print 'freezing'
freezingCount = 0;
for temp = temps
    if temp <= 0
        freezingCount = freezingCount + 1;
    end
end

if freezingCount > 0
    disp("freezing");
end