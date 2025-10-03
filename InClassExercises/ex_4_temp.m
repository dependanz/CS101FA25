% There are problems where you have to compute the derivative of a given
% signal, but you don't know its underlying function.
% Let's approximate the derivative of the function f(x) = sin(2 * pi * x) over 
% x in [0,5]

N  = 1000;
x  = linspace(0,5,N);
h = x(2) - x(1);
f = sin(2 * pi * x);
df_actual = 2 * pi * cos(2 * pi * x);

% Forward difference approximation of f'(x)
df_approx = (f(2:end) - f(1:end-1)) / h;

% Error between actual and approximate derivative
error = abs(df_actual(2:end) - df_approx);

% (d) 8 pts - Write MATLAB code for a plot with two subplots in two rows (include the title and legends):
% (i) The first subplot, plot df_actual(2:end) in blue and line width of 1, as well as df_approx in
% red and line width of 1. Limit the y-axis to [−8, 8].
% (ii) The second subplot (below the first) plot abs(df_actual(2:end) - df_approx), the error be-
% tween the numerical and exact derivatives. Limit the y-axis to [0, 0.2]

% -- code here --

% (e) 2 pts - What's the max error between df_actual(2:end) and df_approx?

% -- code to display the max error --