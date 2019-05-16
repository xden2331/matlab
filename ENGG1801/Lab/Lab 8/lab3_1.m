% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%%%%%%%%%

prompt = 'Enter a password: ';

userInput = input(prompt, 's');

correctInput = "ENGG1801 is so much fun";

isCorrect = (strcmpi(correctInput, userInput) == 0);

while isCorrect == 1
    disp("Try again");
    userInput = input(prompt, 's');
    isCorrect = (strcmpi(correctInput, userInput) == 0);
end