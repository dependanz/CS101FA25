%% Modified version of ball.m with vectorization
% Constants
conv = pi / 180;     % Degrees-to-radians conversion factor
g = -9.81;           % Accel. due to gravity
vo = 20;             % Initial velocity

%Create an array to hold ranges
range = zeros(1,91);

% Calculate maximum ranges
for ii = 1:91
    theta = ii - 1;
    vxo = vo * cos(theta*conv);
    vyo = vo * sin(theta*conv);
    max_time = -2 * vyo / g;
    range(ii) = vxo * max_time;
end

% Write out table of ranges
fprintf ("Range versus angle theta:\n");
for ii = 1:91
    theta = ii - 1;
    fprintf("  %2d    %8.4f\n", theta, range(ii));
end

% Calculate the maximum range and angle
[maxrange index] = max(range);
maxangle = index - 1;
fprintf ("\nMax range is %8.4f at %2d degrees.\n", ...
         maxrange, maxangle);

% Now plot the trajectories
for ii = 5:10:85

    % Get velocities and max time for this angle
    theta = ii;
    vxo = vo * cos(theta*conv);
    vyo = vo * sin(theta*conv);
    max_time = -2 * vyo / g;

    % Calculate the (x,y) positions

    % [START] THE CHANGED PART
    time = linspace(0, max_time, 21);
    x = vxo * time;
    y = vyo * time + 0.5 * g * time.^2;
    % [END] THE CHANGED PART
    
    plot(x,y,"b");
    if ii == 5
        hold on;
    end
end

% Add titles and axis labels
title ("\bfTrajectory of Ball vs Initial Angle \theta");
xlabel ("\bf\itx \rm\bf(meters)");
ylabel ("\bf\ity \rm\bf(meters)");
axis ([0 45 0 25]);
grid on;

% Now plot the max range trajectory
vxo = vo * cos(maxangle*conv);
vyo = vo * sin(maxangle*conv);
max_time = -2 * vyo / g;

% Calculate the (x,y) positions
x = zeros(1,21);
y = zeros(1,21);
for jj = 1:21
    time = (jj-1) * max_time/20;
    x(jj) = vxo * time;
    y(jj) = vyo * time + 0.5 * g * time^2;
end
plot(x,y,"r","LineWidth",3.0);
hold off
