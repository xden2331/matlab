% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%%Summing the diagonals of a matrix%%%%%%%%
matrix = [1,2,3;4,5,6;7,8,9];
result = sumDiagonal(matrix);
disp(matrix);
disp(result);

function result = sumDiagonal(matrix)
    result = 0;
    [rowCount, colCount] = size(matrix);
    % Check if the matrix is square or not
    if rowCount ~= colCount
        return
    end
    
    % Diagonal element's position
    count = 1;
    % Sum the diagonal elements
    for rowNum = [1:rowCount]
        % Summation of the two diagonal elements on the current row
        result = result + matrix(rowNum, count) + matrix(rowNum, colCount+1-count);
        
        % Check if one element is counted twice, if yes, minus it.
        if count == colCount+1-count
            result = result - matrix(rowNum, count);
        end
        % Update position
        count = count+1;
    end
end