% Lab 6 Exercise 2-1
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%%%%%%%%%

% Debug the following code so that it behaves as intended. That is, it is
% supposed to find the average pass mark, where the marks of students are
% stored in an array.

% The marks of many students, stored in an array
marks = [67 35 82 51 92 46];

% Start from the 1st student
i = 1;
total = 0;
countPass = 0;

% Go through each student
while i <= length(marks)
    
    % Only count passing students
    if marks(i) >= 50

        % Add to the total the current mark
        total = total + marks(i);
        countPass = countPass+1;
    end
    i = i+1;
end


% Calculate the average of all students who passed
average = total / countPass;

% Print the average to screen
disp(average);