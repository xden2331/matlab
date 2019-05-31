% Return the concentration of gas for the coordinates (x,y) after 1 step in
% the simulation
%
% newConcentration = getNewConcentration(x, y)

% Lab 11, Exercise 3-2
% Author:  


function newConcentration = getNewConcentration(x, y)

    % Global variables
    global gasPrev;
        
    
    % To get all neighbours, we need to make changes to x and y values
    changeX = [-1, 0, 1];
    changeY = changeX;
    
    % Find total and count to determine average
    total = 0;
    count = 0;
    
    % Go through all neighbouring pixels, including (x,y) itself;
    % thus we are going through a 3x3 matrix centered at (x,y)
    for dy = changeY
        for dx = changeX
            currentX = x + dx;
            currentY = y + dy;
            
            % Is this neighbour a valid coordinate?
            if isValidCoordinates(currentX, currentY)

                % Get concentration at that position, and add to total
                total = total + gasPrev(currentY, currentX);
                count = count + 1;
            end
        end
    end
        
    % New concentration at (x,y) is average concentration of all
    % neighbours; note that this will never divide by 0, since the average
    % of all neighbours for a cell includes that cell itself
    newConcentration = total / count;
end

    
