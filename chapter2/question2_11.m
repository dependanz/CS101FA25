% Prompt user for initial height and velocity

h_0 = input("Enter initial height -> ");
v_0 = input("Enter initial velocity -> ");

g = -9.81;
dt = 0.01;

t = 0:dt:2;

h = 0.5 * g * t .^ 2 + v_0 .* t + h_0;
v = g * t + v_0;

% Plots
figure;
plot(t, h, 'b-', 'DisplayName', 'Height (h)');
hold on;
plot(t, v, 'r-', 'DisplayName', 'Velocity (v)');
hold off;
xlabel('Time (s)');
ylabel('Height (m) / Velocity (m/s)');
title('Height and Velocity vs Time');
legend show;
grid on;