% linspace(min,max,N) - 
%   creates a uniform grid vector from min to
%   including max of length N.
min_val = 0;
max_val = 10;
N = 100;
x_linspace = linspace(min_val, max_val, N);

% Equivalent of linspace using a range:
step = (max_val - min_val) / (N-1);
x = min_val:step:max_val;

% Sanity check that they are the same domain
assert(norm(x - x_linspace) < 1e-9, "They aren't the same...")

% Evaluate your functions
y1 = exp(-0.5 * x) .* sin(2 * x);
y2 = exp(-0.5 * x) .* cos(2 * x);

figure;
hold on;
plot(x, y1, 'b-', 'LineWidth', 2);
plot(x, y2, 'r--', 'LineWidth', 3);

title('Exponentially Decaying Oscillators');
xlabel('x');
ylabel('y');
legend('sine', 'cosine');
grid on;
hold off;