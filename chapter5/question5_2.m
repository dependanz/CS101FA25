%% Using vectorization
t = -9:0.5:9;
y = -3 * t.^2 - 4;

% edit for the t's that are < 0
y(t < 0) = 3 * t(t < 0).^2 - 4;
plot(y, 'LineWidth', 2.0);
hold on;

%% Using vectorization and pre-allocation
t = -9:0.5:9;
y = zeros(size(t));
y(t >= 0) = -3 * t(t >= 0).^2 - 4;
y(t < 0) = 3 * t(t < 0).^2 - 4;

plot(y, 'LineWidth', 2.0);

hold off;