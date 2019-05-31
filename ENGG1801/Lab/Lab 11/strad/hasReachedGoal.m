% Returns true if the robot has reached the goal location, else
% returns false
%
% result = hasReachedGoal(x, y)

% Lab 11, Exercise 3-3
% Author:  


function result = hasReachedGoal(x, y, xGoal, yGoal)

    % Check if robot's current coordinates is same as goal coordinates
    if x == xGoal && y == yGoal
        result = true;
    else
        result = false;
    end
end
