% Return a matrix representing the map found in a file
%
% field = getWharfFromFile()

% Lab 11, Exercise 3-3
% Author:  


function wharf = getWharfFromFile()

    % The name of the file that contains the image as a CSV file
    filename = 'wharf.csv';

    % Read the data representing the map
    wharf = csvread(filename);
end
