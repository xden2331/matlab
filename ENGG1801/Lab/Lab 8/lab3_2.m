% Lab 7 Exercise -
% Author Xing DENG

% Start with empty workspace and command window
clc;
clear;

%%%%%%%read a decimal number, and print the double of it%%%%%%%%%

n = createFile('test.txt');
disp(n);

function n = createFile(fileName)
    % Ask for number
    prompt = 'Enter a positive number\n';
    n = input(prompt);
    
    % Ask for string
    prompt = 'Type in a string\n';
    s = input(prompt, 's');

    % Open file
    file = fopen(fileName, 'wt');
    
    % Output n times
    for i = 1:n
        
        % Print to the file
        fprintf(file, "%s\n", s);
    end
    fclose(file);
end