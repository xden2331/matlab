% Question 2 - Lab exam 3
% SID: 460072429
% UniKey: xden2331
% Reset the workspace, command window, and figures

function q3(filename)
    % Read the matrix from given csv file
    matrix = csvread(filename);
    
    % Ask user to input a string, assuming the string can be used to create
    % such a valid filename
    str = input('Enter a file name: ', 's');
    
    % Ask user to input an integer
    integer = input('Enter a positive integer: ');
    
    % Calculate the output matrix
    outputMatrix = integer * matrix;
    
    % Concatenate the output file name
    outputFilename = [str,'.csv'];
    
    % Write the output
    csvwrite(outputFilename, outputMatrix);
end