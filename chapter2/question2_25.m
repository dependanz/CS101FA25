% Prompt user for input
x = input('Enter a value for x: ');
B = (exp(x) + exp(-x)) / 2;

% Compare with MATLAB's intrinsic function
intrinsic_value = cosh(x);

% Display results
fprintf('Calculated cosh(%f) = %f\n', x, B);
fprintf('MATLAB intrinsic cosh(%f) = %f\n', x, intrinsic_value);

% Plot
x_values = linspace(-5, 5, 100);
y_values = cosh(x_values);

figure;
plot(x_values, y_values, 'LineWidth', 2);
title('Hyperbolic Cosine Function');
xlabel('x');
ylabel('cosh(x)');
grid on;

% Find the smallest value of cosh(x) and the corresponding x
min_value = cosh(0);
min_x = 0;
fprintf('The smallest value of cosh(x) is %f at x = %f\n', min_value, min_x);