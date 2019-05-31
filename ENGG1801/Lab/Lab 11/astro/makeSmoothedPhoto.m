% Generate the matrix smoothedPhoto, which is the smoothing of the given
% original photo
%
% smoothedPhoto = makeSmoothedPhoto(originalPhoto)

% Lab 11, Exercise 3-1
% Author:  


function smoothedPhoto = makeSmoothedPhoto(originalPhoto)

    % Global variables
    global minX;
    global maxX;
    global minY;
    global maxY;
        
    % For each pixel in the photo; note that we don't need the 3rd loop
    % since we are dealing with black-and-white images, which are
    % m x n x 1 matrices
    for y = minY:maxY            
        for x = minX:maxX

            % Find the smoothed pixel value
            smoothedValue = getSmoothedValue(originalPhoto, x, y);
            
            % Insert this value into the smoothed matrix
            smoothedPhoto(y,x) = smoothedValue;
        end
    end
end
