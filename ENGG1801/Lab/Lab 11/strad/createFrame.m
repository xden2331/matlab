% Returns a frame representing the current situation of the wharf
%
% frame = createFrame()

% Lab 11, Exercise 3-3
% Author:  


function frame = createFrame()

    % Global variables
    global movieMatrix;

    % Display an image on the screen, representing the map
    imagesc(movieMatrix);
    
    % Show what numbers each of the colors represents
    colorbar;            
    
    % Create a frame for the movie
    frame = getframe();
end
