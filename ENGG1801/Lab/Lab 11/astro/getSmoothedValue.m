% Return the smoothed value for the given pixel coordinates;
% i.e. find the average of this pixel and its 8 neighbours.
% If this pixel does not have 8 neighbours, then the original pixel value
% is returned
%
% smoothedValue = getSmoothedValue(x, y)

% Lab 11, Exercise 3-1
% Author:  


function smoothedValue = getSmoothedValue(originalPhoto, x, y)
        
    % Return original value if this pixel is on the edge of the photo
    if isEdgePixel(x, y)
        smoothedValue = originalPhoto(y,x);
        return;
    end
        
    % To get all neighbours, we need to make changes to x and y values
    changeX = [-1, 0, 1];
    changeY = changeX;
    
    % The current pixel number that we are seeing
    currentPixelNumber = 1;
    
    % Go through all neighbouring pixels, including (x,y) itself;
    % thus we are going through a 3x3 matrix centered at (x,y)
    for dy = changeY
        for dx = changeX
            currentX = x + dx;
            currentY = y + dy;

            % Remember the value at the current pixel
            pixelValues(currentPixelNumber) = originalPhoto(currentY, currentX);
            
            % Get ready to add into the next position in the array
            currentPixelNumber = currentPixelNumber + 1;
        end
    end
        
    % Find average pixel value;
    % note that this will never divide by 0, since we have already
    % determined that this pixel has neighbours
    smoothedValue = mean(pixelValues);
end
