% Initialize the 'wharf' and 'progress' global matrices, representing what
% objects lay on the map and how many times each square on the map has been
% visited, respectively. The returned values represent where the robot is,
% and where the robot is moving.
%
% [x, y, dx, dy] = initializeMaps(xStart, yStart)

% Lab 11, Exercise 3-3
% Author:  


function [x, y, dx, dy] = initializeMaps(xStart, yStart)

    % Global variables
    global rows;
    global cols;
    global wharf;
    global progress;
    global COLOR_ROBOT;
    
    
    % Create a matrix showing the progress of the robot
    progress = zeros(rows, cols);

    % Place the robot on the map
    wharf(yStart, xStart) = COLOR_ROBOT;
    
    % Robot has visited the base once
    progress(yStart, xStart) = 1;
    
    
    % Initial robot position is (x,y)
    x = xStart;
    y = yStart;
    
    % Initial robot direction is dx and dy
    dx = 1;
    dy = 0;    
end
