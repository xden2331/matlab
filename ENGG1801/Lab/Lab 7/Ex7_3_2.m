% Lab 6 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%%Printing a cross%%%%%%%
% initialize the height
h = 5;
printCross(h);

function printCross(h)
    if mod(h,2) == 0
        return
    end
    mid = (h+1)/2;
    for row = [1:h]
        for col = [1:h]
            if row == mid
                fprintf("*");
            elseif col == mid
                fprintf("*");
            else
                fprintf(" ");
            end
        end
        fprintf("\n");
    end
end