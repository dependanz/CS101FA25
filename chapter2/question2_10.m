A = [ -2  5  2  3  4 -1;
       2 -1 -5 -2  6  4;
      -1  6 -4 -5  3 -1;
       4  3 -6 -5 -2 -2;
      -3  6  4  2 -5  4;
       2  4  4  4  5 -4 ];

b = [-3; 1; -6; 10; -6; -2];

% Solve system of equations Ax = b -> x = A \ b;
x = A \ b


%% Test solution
% Verify the solution by calculating the residual
residual = A * x - b;
residualNorm = norm(residual);

% Print the norm of the residual
disp(['Norm of the residual: ', num2str(residualNorm)]);