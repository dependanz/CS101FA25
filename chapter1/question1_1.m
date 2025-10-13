x = 0:0.1:10;
y = 4 * exp(-0.3 * x);
plot(x,y);

% A MATLAB script file is a file that ends with ".m"
% Either right-click the files area and create a new script file called
% "test1.m", or use the shortcut "Ctrl-N" (or "Cmd-N" for Mac), then save
% it as "test1.m"

% A script is essentially a sequence of instructions for your computer to
% run.

% From line one of this file, the instructions are:
% (1) Create an array by starting at the number 0, and incrementing by 0.1,
% until you reach the number 10. Assign it to the variable x.
% (2) Using x, evaluate 4 * exp(-0.3 * x), and assign the resulting array
% to y.
% (3) Invoke/call the "plot" function, taking in x and y as parameters.

% Run this script either by pressing the run button at the top right of
% MATLAB, or press F5 (shortcut).