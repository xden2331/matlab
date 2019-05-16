% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%Swapping elements in arrays%%%%%%%%

% Swap odd-index elements with even-index elements
array = [5 6 3 9 8];
result = swapPairs(array);
disp(result);

function result = swapPairs(array)
    result = [];
    for i = [1:length(array)]
        if i == length(array) && mod(i, 2) ~= 0
            return
        end
        if mod(i,2) == 0
            temp = array(i);
            array(i) = array(i-1);
            array(i-1) = temp
        end
    end
    return
end