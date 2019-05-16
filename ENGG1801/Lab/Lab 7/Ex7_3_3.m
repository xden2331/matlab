% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%Printing a tricky triangle%%%%%%%%%

% Initialize parameter
n = 4;
triangle(n);

% Tak a parameter and print a triangle on the screen whose width
% and height is the given parameter.
function triangle(n)
    space = 0;
    
    % Initialize an array of n elements from n to 1
    array = [n:-1:1];
    
    for row = [1:n]
        
        % Print 'space' spaces
        for col = [1:space]
            
            % Print a single space
            fprintf(" ");
        end
        
        % Print the inversed array
        for n = array
            
            % Print the element
            fprintf("%d", n);
        end
        
        % Print newline character
        fprintf("\n");
        
        % Increase the number of spaces
        space = space+1;
        
        % Remove the head of the the inversed array.
        array(1) = [];
        
    end
end