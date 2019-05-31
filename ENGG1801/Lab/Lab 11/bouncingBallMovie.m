% Create a movie with a bouncing ball;
% the initial rate of change along the x and y axes is dx and dy
%
% Lecture 11-2
% Author:  
	
% Create a movie with a bouncing ball;
%
% bouncingBallMovie()


function bouncingBallMovie() 

    % Plot in figure 1
    figure(1);

    % Clear existing figure and reset plotting properties
    clf;
    clf reset;
    

    % Prepare to create the movie (.avi) file
    video = VideoWriter('bouncingBall.avi');
    open(video);

    % Create a 32x32 matrix; all values are 0
    matrix = zeros(32,32);
    
    % Find out how many rows and columns are in the matrix; note y before x
    [rows, cols] = size(matrix); 

    % Note the minimum possible x and y values
    minX = 1;
    minY = 1; 

    % Initial position of active pixel (ball)
    x = 1;
    y = 1;

    % Initial rate of change of ball along x and y axes
    dx = 1;
    dy = 1;
    
    % Initial goalkeeper size
    GOAL_KEEPER_X = 30;
    GOAL_KEEPER_WIDTH = 5;
    GOAL_KEEPER_HALF_WIDTH = (GOAL_KEEPER_WIDTH-1)/2;
    
    % Current color for all pixels in the matrix
    BG_COLOR = 0;
    
    % Color for active pixel in matrix (where the ball is)
    BALL_COLOR = 1;
    
    % Color for goalkeeper
    GK_COLOR = 2;

    % Choose the colors to be used in the movie
    colormap hot;

	% For each of the 300 frames in the movie 
    for step = 1:300
        
        % Put the ball at location (x,y); note y before x
        matrix(x, y) = BALL_COLOR;
        
        % -- Drawing goalkeeper -- %
        
        gkCenter = y;
        gkStartIdx = gkCenter - GOAL_KEEPER_HALF_WIDTH;
        gkEndIdx = gkCenter + GOAL_KEEPER_HALF_WIDTH;
        
        if gkStartIdx < 1
            gkStartIdx = 1;
        elseif gkEndIdx > cols
            gkStartIdx = cols-GOAL_KEEPER_WIDTH;
        end
        gkEndIdx = gkStartIdx + GOAL_KEEPER_WIDTH;
        
        matrix(GOAL_KEEPER_X, gkStartIdx:gkEndIdx) = GK_COLOR;
        
        % -- End of Drawing goalkeeper -- %
        
        % Get the next frame (image)
        imagesc(matrix);
        
        % Change color of where the ball is back to background color  
        matrix(x, y) = BG_COLOR;
        matrix(GOAL_KEEPER_X, gkStartIdx:gkEndIdx) = BG_COLOR;
    
        % Get a frame (same as the image shown above), and store into the video
        frame = getframe();
        writeVideo(video, frame);
        
        % If the next change in coordinates will put us outside of the range,
        % then negate the appropriate dx or dy (change directions = bounce)
        if (x + dx > cols && dx > 0) || (x + dx < minX && dx < 0) || (x + dx > GOAL_KEEPER_X)
            dx = -1 * dx;
        end
        if (y + dy > rows && dy > 0) || (y + dy < minY && dy < 0)
            dy = -1 * dy;
        end
        
        % Move the ball
        x = x + dx;
        y = y + dy;
    end

    % Close the file so that it saves properly
    close(video);
end
