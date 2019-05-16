% ENGG1801 - Tutorial 10 %
% Exercise: 2-1%
% Author: Xing DENG%

% Clean the workspace and the command window%
clc;
clear;

% ------ %

matrix = createMatrix(5, 3);

disp(matrix);

function m = createMatrix(a, b)
    % Check if the size of matrix is positive
    if a <= 0
        m = []
        return
    end
    
    % Create the matrix
    m = b * ones(a);
    
    % Negative the down size
    for i = [2:a]
        m(i, 1:i-1) = -1 * m(i, 1:i-1);
    end
end