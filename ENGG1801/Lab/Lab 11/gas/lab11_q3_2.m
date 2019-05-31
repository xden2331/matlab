% Visualize the gas flowing through a room, and show the concentration at a
% particular point in the room
%
% Lab 11, Exercise 3-2
% Author:  


% The minimum and maximum possible x and y values
global minX;
global maxX;
global minY;
global maxY;

% Matrices containing the concentration at the current iteration and
% the next iteration
global gasPrev;
global gasNext;

% Matrix representing the map of the room
global room;

% Global constants, used in the 'room' matrix, to represent whether
% there exists a wall at that location or if it can be filled with gas
global EMPTY;
EMPTY = 0;
global WALL;
WALL = 1;

% The name of the file that contains the map of the room
filename = 'plan1.csv';

% Read the file and store the room as a 2-D matrix
room = csvread(filename);

% Determine dimensions of room
[rows, cols] = size(room);

% Set minimum and maximum possible x and y values based on size of image
minX = 1;
minY = 1;
maxX = cols;
maxY = rows;


% Prepare to create the movie (.avi) file
video = VideoWriter('gas.avi');
open(video);

% Location of gas leak
xLeak = 16;
yLeak = 22;

% Fixed gas concentration at location of leak
initialConcentration = 1;

% Create a matrix of the concentrations for previous time step
gasPrev = zeros(rows, cols);

% Create a matrix of the concentrations for next time step
gasNext = zeros(rows, cols);

% The initial concentration is where the gas is leaking
gasPrev(yLeak, xLeak) = initialConcentration;
gasNext(yLeak, xLeak) = initialConcentration;

% Use a set of colors that make it easier to see
colormap hot;

% Number of iterations to run the simulation
iterations = 200;

% For each step of the simulation
for i = 1:iterations

    % Calculate the concentrations at the next step of simulation
    createGasNext(initialConcentration, xLeak, yLeak);

    % Create a frame to be used in the movie
    frame = createMovieFrame();
    
    % Store that frame into the video
    writeVideo(video, frame);

    % Get ready for the next iteration, as the concentrations of gas
    % calculated for the next step of the simulation will now become
    % the previous step
    gasPrev = gasNext;      
end

% Close the file so that it saves properly
close(video);
