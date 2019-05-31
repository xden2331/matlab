% Create a matrix to represent the field, its contents, and colors
% reprensenting the progress of the robot, where the robot starts at
% (xBase,yBase)
%
% movieMatrix = createMovieMatrix(xStart, yStart)

% Lab 11, Exercise 3-3
% Author:  


function createMovieMatrix(xStart, yStart, xGoal, yGoal)

    % Global constants
    global WALL;
    
    global COLOR_ROBOT;
    global COLOR_WALL;
    global COLOR_GOAL; 
    
    
    % Global variables
    global minX;
    global maxX;
    global minY;
    global maxY;
    global rows;
    global cols;
    global wharf;
    global movieMatrix;
    
    
    % Create the resultant matrix
    movieMatrix = zeros(rows, cols);

    % For each cell in the grid (FIELD)
    for y = minY:maxY            
        for x = minX:maxX

            % Depending on what is at each cell, put the corresponding
            % color into the resultant matrix; empty does not need to be
            % searched, since the matrix already contains zeros (which
            % represents empty)
            if wharf(y,x) == WALL
                movieMatrix(y,x) = COLOR_WALL;    
            end                
        end
    end   
    
    % Robot starts at (xStart,yStart)
    movieMatrix(yStart,xStart) = COLOR_ROBOT;     
    
    % Robot wants to go to (xGoal,yGoal)
    movieMatrix(yGoal,xGoal) = COLOR_GOAL;    
end
