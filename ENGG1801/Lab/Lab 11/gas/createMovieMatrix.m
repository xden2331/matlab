% Create a matrix containing gas concentrations as well as the walls
%
% movieMatrix = createMovieMatrix()

% Lab 11, Exercise 3-2
% Author:  


function movieMatrix = createMovieMatrix()

    % Global variables
    global minX;
    global maxX;
    global minY;
    global maxY;
    global gasNext;

    % Value to put into matrix to reprensent wall;
    % we choose this value to make it clearest where the highest
    % concentration of gas (1) is, as this will be brightest
    WALL = -0.05;
    
    
    % Create the resultant matrix
    movieMatrix = zeros(maxY, maxX);

    % For each cell in the grid (room)
    for y = minY:maxY            
        for x = minX:maxX

            % If empty space, get the gas concentration at that point
            if isValidCoordinates(x, y)
                movieMatrix(y,x) = gasNext(y, x);
            
            % Else put wall at that location
            else
                movieMatrix(y,x) = WALL;            
            end                
        end
    end   
end

