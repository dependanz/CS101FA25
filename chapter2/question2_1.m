array1 = [0.0  0.5  2.1 -3.5  5.0; ...
         -0.1 -1.2 -6.6  1.1  3.4; ...
          1.2  0.1  0.5 -0.4  1.3; ...
          1.1  5.1  0.0  1.4 -2.1];

% (a) Size of array1
a = size(array1)

% (b) Index row 1, column 4
array1(1,4)

% (c) MATLAB default is column-major order, count the elements of the first
% row, then the second, etc.
% array1(9) the same as array1(mod(9, num_rows), floor(9 / num_rows) + 1)
array1(9)

% (d) 
array1(:, 1:2:4)
size(array1(:, 1:2:4))

% (e)
array1([1 3],[end-1 end])
size(array1([1 3],[end-1 end]))