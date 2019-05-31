% Returns true if the given coordinates is that of a pixel on the edge of
% the image, else false is returned
%
% result = isEdgePixel(x, y)

% Lab 11, Exercise 3-1
% Author:  


function result = isEdgePixel(x, y)

    % Global variables
    global minX;
    global maxX;
    global minY;
    global maxY;
    
    % Check if given coordinates are an edge pixel
    if x == minX || x == maxX || y == minY || y == maxY
        result = true;
    else
        result = false;
    end
end
