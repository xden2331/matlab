% Create a movie with a bouncing ball;
% the initial rate of change along the x and y axes is dx and dy
%
% Lab exam 3
% SID: 460072429
% Unikey: xden2331
	
% Create a movie with a bouncing ball;
%
% bouncingBallMovie()

% Changes:
% 1. 3 balls
% 2. all are initially moving diagonally, bottom-right, 1 column and 1 row
% per frame
% 3. 32 rows, 29 cols
% 4. 200 iterations
% 5. Balls' initial coors: (5, 2), (21, 1) and (9, 26)
% 6. Hole 2x2 pixels big, top-left at coor (16,14), diff color from ball
% and bg
% 7. balls reach hole => balls disappear
% 8. assume balls never collide


function bouncingBallMovie() 

    % Plot in figure 1
    figure(1);

    % Clear existing figure and reset plotting properties
    clf;
    clf reset;
    

    % Prepare to create the movie (.avi) file
    video = VideoWriter('bouncingBall.avi');
    open(video);

    % Create a 32x29 matrix; all values are 0
    matrix = zeros(32,29);
    
    % Find out how many rows and columns are in the matrix; note y before x
    [rows, cols] = size(matrix); 

    % Note the minimum possible x and y values
    minX = 1;
    minY = 1; 
    
    % Initial position of active pixel (balls)
    % note: the values of x and y have been swapped.
    x = [2 1 26];
    y = [5 21 9];
    
    % Initial position of the hole
    hx = [14 14 15 15];
    hy = [16 17 16 17];

    % Initial rate of change of balls along x and y axes
    dx = [1 1 1];
    dy = [1 1 1];
    
    % Current color for all pixels in the matrix
    BG_COLOR = 0;
    
    % Color for active pixel in matrix (where the ball is)
    BALL_COLOR = 1;
    
    % Color for hole
    HOLE_COLOR = -1;

    % Choose the colors to be used in the movie
    colormap hot;

	% For each of the 200 frames in the movie 
    for step = 1:200
        
        % -- Checking if any ball drops -- %
        
        isDrop = false(1, length(x));
        
        % Check if any balls drop
        for i = 1:length(x)
            
            % Get the position of the current ball
            bx = x(i);
            by = y(i);
            
            % Check if the ball drops
            if (bx >= 14 && bx <=15) && (by >= 16 && by <= 17)
                
                % If drops, set the corresponding boolean value to true
                isDrop(i) = true;
                
            end
                
        end
        
        % Initialize the position of new balls
        newBallsX = [];
        newBallsY = [];
        newBallsDx = [];
        newBallsDy = [];
        
        % Check which ball should be dropped
        for i = 1:length(isDrop)
            
            % if the current ball should not be dropped
            if ~isDrop(i)
                
                % Add it to new balls
                newBallsX(length(newBallsX)+1) = x(i);
                newBallsY(length(newBallsY)+1) = y(i);
                newBallsDx(length(newBallsDx)+1) = dx(i);
                newBallsDy(length(newBallsDy)+1) = dy(i);
            end
            
        end
        
        % Update the positions
        x = newBallsX;
        y = newBallsY;
        dx = newBallsDx;
        dy = newBallsDy;
        
        % -- End of checking if any ball drops -- %
        
        % Put the ball at location (x,y);
        for i = 1:length(x)
            matrix(x(i), y(i)) = BALL_COLOR;
        end
        
        % Put the hole at location (hx, hy)
        matrix(hx, hy) = HOLE_COLOR;
        
        % Get the next frame (image)
        imagesc(matrix);
        
        % Change color of where the ball is back to background color  
        for i = 1:length(x)
            matrix(x(i), y(i)) = BG_COLOR;
        end
        matrix(hx, hy) = BG_COLOR;
    
        % Get a frame (same as the image shown above), and store into the video
        frame = getframe();
        writeVideo(video, frame);
        
        % Update the position of balls
        for i = 1:length(x)
            % If the next change in coordinates will put us outside of the range,
            % then negate the appropriate dx or dy (change directions = bounce)
            if (x(i) + dx(i) > rows && dx(i) > 0) || (x(i) + dx(i) < minX && dx(i) < 0)
                dx(i) = -1 * dx(i);
            end
            if (y(i) + dy(i) > cols && dy(i) > 0) || (y(i) + dy(i) < minY && dy(i) < 0)
                dy(i) = -1 * dy(i);
            end

            % Move the ball
            x(i) = x(i) + dx(i);
            y(i) = y(i) + dy(i);
        end
    end

    % Close the file so that it saves properly
    close(video);
end
