% Return true if the first number is divisible by the second number
%
% This function is used by the isPrime() function
%
% result = isDivisible(first, second)

% Lab 6, Exercise 4-3
% Author:  


function result = isDivisible(first, second)

    % This will be a multiple of the second number
    n = second;

    % Keep going until n reaches the first number or passes it
    while n < first 
        
        % Each time, keep addding the second number, so that n continues to
        % be a multiple of the second number
        n = n + second;
    end
    
    % Now, if first number is equal to n (which is a multiple of the second
    % number), then the first number is divisible by the second number
    if first == n
        result = true;
    else
        result = false;
    end
end
