% Lab 6 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%%%%%%%%%
number = -6456;

% Use printPositive to fetch the absolute value of number
number = printPositive(number);
disp(number);

% Return the positive value of n
function n = printPositive(n)
    % If the number is negative
    if n < 0
        % Calculate absolute value
        n = -1*n;
    end
end