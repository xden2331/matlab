% Creates the gasNext matrix, which is stored in a global variable. This
% matrix contains the concentrations of gas at all locations in the room in
% the next step of the simulation.
%
% createGasNext(initialConcentration)

% Lab 11, Exercise 3-2
% Author:  


function createGasNext(initialConcentration, xLeak, yLeak)

    % The minimum and maximum possible x and y values
    global minX;
    global maxX;
    global minY;
    global maxY;
    
    % A matrix containing the concentrations of gas for next time step
    global gasNext;

    % For each cell in the grid (room)
    for y = minY:maxY            
        for x = minX:maxX

            % Only adjust concentration if (x,y) is valid coordinates
            if isValidCoordinates(x, y)

                % Adjust the gas concentration at (x,y)
                gasNext(y,x) = getNewConcentration(x, y);                                    
            end                
        end
    end

    % The concentration where the gas is leaking shouldnt change
    gasNext(yLeak, xLeak) = initialConcentration;
end
