% Return true if the given integer is a prime number, else return false
%
% result = isPrime(n)

% Lab 6, Exercise 5-2
% Author:  


function result = isPrime(n)

    % As the question states, assume that n is always a positive integer

    % 1 is not a prime number
    if n == 1
        result = false;
        return;
    end

    % Go through each integer from 2 up to n
    for i = 2:n-1
        
        % Is n divisible by the current integer? Here, we use another
        % function that we wrote; in week 7, we will learn of another
        % function that we can use, which is already part of Matlab
        if mod(n,i) == 0
            
            % Divisible by another number besides 1 and n means that n is
            % not a prime number
            result = false;
            return;
        end        
    end
    
    % If we get to here, that means n is not divisible by any numbers
    % between 2 and n-1, so n is a prime number
    result = true;
end
