% ENGG1801 Lab 11 %
% Author: Xing Deng%

% Clean workspace and command window%
clc;
clear;

% -- %

clf;
clf reset;

bounceOffWalls('map.csv');

function bounceOffWalls(filename)

    video = VideoWriter('bounceOffWalls.avi');
    open(video);
    
    WALL_INITIAL_LIFE = 3;
    
    matrix = WALL_INITIAL_LIFE * csvread(filename);
    x = 7;
    y = 2;
    dx = 1;
    dy = 1;
    
    BG_COLOR = 0;
    BALL_COLOR = 1;
    figure(1);
    colormap hot;
    
    [rows, cols] = size(matrix);
    
    for step = 1:90
        matrix(x, y) = BALL_COLOR;
        
        imagesc(matrix);
        
        matrix(x, y) = BG_COLOR;
        
        colorbar;
        
        frame = getframe();
        
        writeVideo(video, frame);
        
        if x+dx < rows && x+dx > 0 && matrix(x+dx, y) > 0
            matrix(x+dx, y) = matrix(x+dx, y) - 1
            dx = -dx;
        end
        
        if y+dy < cols && y+dy > 0 && matrix(x, y+dy) > 0
            matrix(x, y+dy) = matrix(x, y+dy) - 1
            dy = -dy;
            
        end
        
        if (x + dx) > rows || (x + dx) < 1
            dx = -dx;
        end
        
        if (y + dy) > cols || (y + dy) < 1
            dy = -dy;
        end
        
        x = x + dx;
        y = y + dy;
    end
    
    close(video);
end