% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%%%%%%%%%

% Initialize n (integer)
n = 0;

% Initialize the result
result = 1;
% Factorizing
for i = [n:-1:1]
    result = result * n;
    n = n-1;
end

% Display the result
disp(result);