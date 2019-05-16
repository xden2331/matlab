% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%%%%%%%%%
% initialize two integer variables
a = 8;
b = 9;

% Simulate multiplication via addition
result = 0;
for i = [1:b]
    result = result + a;
end

disp(result);