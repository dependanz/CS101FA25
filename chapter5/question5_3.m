n = 0:2:50;
n_squared = n .^ 2;

% display a table
disp(table(n', n_squared', 'VariableNames', {'Integer', 'Squared'}));