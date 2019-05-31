% Returns true if the given (x,y) coordinates is a valid coordinate on the
% map (is a non-forbidden coordinate); else, false is returned
%
% result = isValidCoordinates(x, y)

% Lab 11, Exercise 3-3
% Author:  


function result = isValidCoordinates(x, y)

    % Global constants  
    global WALL;   
    global minX;
    global maxX;
    global minY;
    global maxY;
    global wharf;

    % Check if (x,y) within map and not a forbidden point
    if isWithinRange(x, minX, maxX) && isWithinRange(y, minY, maxY) && wharf(y,x) ~= WALL
        result = true;
    else
        result = false;
    end
end
