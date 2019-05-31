% ENGG1801 Lab 11 %
% Author: Xing Deng%

% Clean workspace and command window%
clc;
clear;

% -- %

video = VideoWriter('ex2_2.avi');
open(video);

matrix = zeros(32);

colormap hot;

BG_COLOUR = 0;
BALL_COLOUR = 1;

row = 4;
col = 1;

% Initialise maximum x coordinate
maxCol = 32;
minCol = 1;
dcol = 1;
INITIAL_WAIT_TIME = 15;
waitTime = 0;

for step = 1:200
    
    matrix(row, col) = BALL_COLOUR;
    
    imagesc(matrix);
    
    % Get a frame using athe current heatmap
    frame = getframe();
    
    % Write frame to video
    writeVideo(video, frame);
    
    matrix(row,col) = BG_COLOUR;

    if col + dcol > maxCol || col + dcol < minCol
        dcol = -dcol;
        waitTime = INITIAL_WAIT_TIME;
    end
    
    if waitTime > 0
        waitTime = waitTime - 1;
    else
        col = col + dcol;
    end

end

 % Close the video
 close(video);