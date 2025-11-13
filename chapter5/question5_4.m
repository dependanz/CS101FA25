%% With a for-loop
y = [];
for x=-1:0.1:3
    y = [y (x^2 -4 * x + 5)];
end
plot(y, 'r--', LineWidth=3.0);

%% Vectorized
x = -1:0.1:3;
y = (x .^ 2 - 4 * x + 5);
plot(y, 'r--', LineWidth=3.0);