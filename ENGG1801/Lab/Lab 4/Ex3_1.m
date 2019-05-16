% Author: Xing DENG
% Lab 4, Exercise 1.1

% Start from a blank workspace and screen
clear;
clc;

% Create an array with 3 numeric elements
% Each element representing a remperature of water in a container.
temps = [-10,15,100];

% Check the contents, and print any of these message

% if all 3 temperatures are equal, print 'all equal'
if temps(1) == temps(2) && temps(2) == temps(3)
    disp('all equal');
end

% if any number is greater than or equal to 100, print 'boiling'
if (temps(1) > 100 || temps(2) > 100 || temps(3) > 100 ...
        || temps(1) == 100 || temps(2) == 100 || temps(3) == 100)
    disp('boiling');
end

% if any number is less than or equal to 0, print 'freezing'
if (temps(1) < 0 || temps(2) < 0 || temps(3) < 0 ...
        || temps(1) == 0 || temps(2) == 0 || temps(3) == 0)
    disp('freezing');
end