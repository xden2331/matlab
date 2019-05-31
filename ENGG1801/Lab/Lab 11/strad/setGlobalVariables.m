% Set the values of global variables
%
% setGlobalVariables()

% Lab 11, Exercise 3-3
% Author:  


function setGlobalVariables()

    % Global variables
    global minX;
    global maxX;
    global minY;
    global maxY;
    global rows;
    global cols;
    global EMPTY;   
    global WALL;
    global COLOR_ROBOT;    
    global COLOR_WALL;
    global COLOR_GOAL;    
    global wharf;

    % Determine the limits of the map
    [rows, cols] = size(wharf);
    minX = 1;
    minY = 1;
    maxY = rows;
    maxX = cols;
    
    % Values representing whether there exists a wall at a location, or
    % whether the robot can move here
    EMPTY = 0;
    WALL = 1;
    
    % Color representing where the robot is, where a wall is, and where a
    % pile of dirt is
    COLOR_ROBOT = -3;

    % Value to put into matrix to reprensent wall
    COLOR_WALL = -10;
    
    % Value to put into matrix to represent goal
    COLOR_GOAL = 10;
end
