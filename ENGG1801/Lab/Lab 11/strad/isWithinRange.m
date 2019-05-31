% Returns true if the given x value is within the range of the given
% minimum and maximum allowed values (including if equal to them)
%
% result = isWithinRange(x, min, max)

% Lab 11, Exercise 3-3
% Author:  


function result = isWithinRange(x, min, max)

    % Check if x is between min and max inclusive
    if x >= min && x <= max
        result = true;
    else
        result = false;
    end
end
