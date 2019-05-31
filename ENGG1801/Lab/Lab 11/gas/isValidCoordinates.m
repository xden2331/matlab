% Returns true if the given (x,y) coordinates is a valid coordinate in the
% room (is empty space in the room); else, false is returned
%
% result = isValidCoordinates(x, y)

% Lab 11, Exercise 3-2
% Author:  


function result = isValidCoordinates(x, y)

    % Global constants
    global EMPTY;
    global minX;
    global maxX;
    global minY;
    global maxY;

    % Global variables
    global room;

    % Check if given coordinates are within acceptable ranges and the
    % coordinates is of empty space (not wall, etc.)
    if isWithinRange(x, minX, maxX) && isWithinRange(y, minY, maxY) && (room(y,x) == EMPTY)
        result = true;
    else
        result = false;
    end
end
