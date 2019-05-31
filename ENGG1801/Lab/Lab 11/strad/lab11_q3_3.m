% Move a robot randomly until it reaches the goal or the maximum
% number of iterations is reached

% Lab 11, Exercise 3-3
% Author:  


% Matrix showing whether there exists a wall or empty space at any given
% location on the map
global wharf;

% Matrix showing how many times robot has visited any given location on the
% map
global progress;

% Matrix which is used to create color / heat map, containing all above
% information, as well as where the robot is right now, and its goal
% location
global movieMatrix;

% Number representing the color of the robot
global COLOR_ROBOT;


% Prepare to create the movie (.avi) file
video = VideoWriter('robot.avi');
open(video);

% Read the map from file
wharf = getWharfFromFile();

% Set the values of many global variables
setGlobalVariables();

% The starting location of the robot
xStart = 5;
yStart = 5;

% The goal location (where the robot is trying to go to)
xGoal = 20;
yGoal = 20;

% Set the variables associated with what the map contains, how many
% times each square has been visited, where the truck is, and where the
% truck is going to
[x, y, dx, dy] = initializeMaps(xStart, yStart);

% Create the matrix that will be used to create color maps, leading to
% frames and finally the movie
createMovieMatrix(xStart, yStart, xGoal, yGoal);

% The number of steps the simulation will be run
iterations = 200;

% For each iteratation 'i'
for i = 1:iterations

    % Determine where the robot will actually move to next
    [nextX, nextY, dx, dy] = getNextPositionRandom(x, y);

    % Update the progress matrix
    progress(nextY, nextX) = progress(nextY, nextX) + 1;


    % Update the movie matrix
    % First, move the robot to new location
    movieMatrix(nextY, nextX) = COLOR_ROBOT;

    % Replace where the robot was with the color representing how many
    % times the robot has been there
    movieMatrix(y,x) = progress(y,x);


    % Create a frame for the movie
    frame = createFrame();  
    
    % Store the frame into the video
    writeVideo(video, frame);

    % If we are at the goal location
    if hasReachedGoal(x, y, xGoal, yGoal)
        
        % Close the file so that it saves properly before we stop completely
        close(video);
        return;
    end

    % Now change the values of x and y
    x = x + dx;
    y = y + dy;    
end

% Close the file so that it saves properly
close(video);
