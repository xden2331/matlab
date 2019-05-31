% Create one frame of the movie; this displays the color map of the created
% frame
%
% result = isWithinRange(x, min, max)

% Lab 11, Exercise 3-2
% Author:  


function frame = createMovieFrame()

    % Create the matrix which contains all informatin needed in the image
    % (i.e. walls and gas concentrations)
    movieMatrix = createMovieMatrix();
    
    % Display to screen a color map representing the above matrix
    imagesc(movieMatrix);
    
    % Show the colorbar on the right, to show what each color represents
    colorbar;       
    
    % Get a frame (same as the image shown above)
    frame = getframe(); 
end
