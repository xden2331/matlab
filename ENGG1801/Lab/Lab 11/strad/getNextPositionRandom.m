% Returns the position where the robot will actually go to next, based on
% the random strategy
%
% [nextX, nextY, dx, dy] = getNextPositionRandom(x, y)

% Lab 11, Exercise 3-3
% Author:  


function [nextX, nextY, dx, dy] = getNextPositionRandom(x, y)
           
    % Keep looping until the next intended square is not a wall
    ok = false;
    while ~ok

        % The possible directions to move in (left, right, down, up)
        possibleDx = [-1, 1];
        possibleDy = possibleDx;
        
        % Select to move either horizontally or vertically
        HORIZONTAL  = 1;
        VERTICAL    = 2;
        randomVerticalHorizontal = randi([1 2]);
        
        % And then select to move either left/right or down/up
        randomIndex = randi([1 2]);
        
        % Set directional variables based on above random outcomes
        if randomVerticalHorizontal == HORIZONTAL
            dx = possibleDx(randomIndex);
            dy = 0;
        elseif randomVerticalHorizontal == VERTICAL
            dx = 0;
            dy = possibleDy(randomIndex);            
        else
            error('Impossible direction (neither horizontal nor vertical)');
        end
        
        % Find out if the square where the robot wants to go to is valid
        if nextSquareIsValid(x, y, dx, dy)
            ok = true;
        end   
    end      
    
    % Now we can confirm the new coordinates
    nextX = x + dx;
    nextY = y + dy;            
end
