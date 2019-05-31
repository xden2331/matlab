% Returns a boolean depending on whether the next square where the robot
% wants to go is valid or not
%
% result = nextSquareIsValid(x, y, dx, dy)

% Lab 11, Exercise 3-3
% Author:  


function result = nextSquareIsValid(x, y, dx, dy)
            
    % Where the robot is going to try to go
    newX = x + dx;
    newY = y + dy;
    
    % Is the next intended coordinates valid?
    result = isValidCoordinates(newX, newY); 
end    
