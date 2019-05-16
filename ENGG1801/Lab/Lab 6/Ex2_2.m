% Lab 6 Exercise 2-2
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%%%%%%%%%
a = 10;
b = 0;
result = a;
for i = [2:b]
	result = result*a;
end
if b == 0
    result = 1;
    
end
disp(result);