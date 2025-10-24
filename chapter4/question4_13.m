% Calculating the angle of incidence (in degrees)

% i.e. the angle the direction a ray of light makes with a normal axis 
% when transitioning from a region with an index of refraction n_1 to a region with differing
% refraction n_2. (The "normal axis" refers to the axis perpendicular to
% the plane separating the two regions).

% Snell's law: n_1 * sin(theta_1) = n_2 * sin(theta_2)
function theta_2 = incidence(theta_1, n_1, n_2)
    if (n_1 > n_2)
        % (n_1/n_2) * sin(theta_1) > 1.0, so theta_2 is complex.
        fprintf("[WARNING] Since n_1 > n_2, there are no real solutions to computing asin(n_1 / n_2 * sin(theta_1))")
    end
    
    theta_1_rad = theta_1 * (pi / 180);
    theta_2_rad = asin(n_1 / n_2 * sin(theta_1_rad));
    theta_2 = theta_2_rad * (180 / pi);
end

%% Test case (a)
fprintf('Test Case (a): n_1 = 1.0, n_2 = 1.7, theta_1 = 45 degrees\n');
theta_1 = 45;
n_1 = 1.0;
n_2 = 1.7;
theta_2 = incidence(theta_1, n_1, n_2)

% Plotting incident and refracted rays
figure;
hold on;

% Draw boundary line
plot([-1,1], [0,0], 'k', 'LineWidth', 2);

% Calculate the coordinates of the incident ray
incident_ray_x = [0, -cosd(theta_1)];
incident_ray_y = [0, sind(theta_1)];
plot(incident_ray_x, incident_ray_y, 'r', 'LineWidth', 2); % Incident ray

% Calculate the coordinates of the refracted ray
refracted_ray_x = [0, cosd(theta_2)];
refracted_ray_y = [0, -sind(theta_2)];
plot(refracted_ray_x, refracted_ray_y, 'b', 'LineWidth', 2); % Refracted ray

% Set plot limits and labels
xlim([-1, 1]);
ylim([-1, 1]);
xlabel('X-axis');
ylabel('Y-axis');
title('Incident and Refracted Rays');
legend('Boundary', 'Incident Ray', 'Refracted Ray');
grid on;
hold off;

%% Test case (b)
fprintf('Test Case (b): n_1 = 1.7, n_2 = 1.0, theta_1 = 45 degrees\n');
theta_1 = 45;
n_1 = 1.7;
n_2 = 1.0;
theta_2 = incidence(theta_1, n_1, n_2)

% Plotting incident and refracted rays
figure;
hold on;

% Draw boundary line
plot([-1,1], [0,0], 'k', 'LineWidth', 2);

% Calculate the coordinates of the incident ray
incident_ray_x = [0, -cosd(theta_1)];
incident_ray_y = [0, sind(theta_1)];
plot(incident_ray_x, incident_ray_y, 'r', 'LineWidth', 2); % Incident ray

% Calculate the coordinates of the refracted ray
if abs(imag(theta_2)) < 1e-16
    refracted_ray_x = [0, cosd(theta_2)];
    refracted_ray_y = [0, -sind(theta_2)];
    plot(refracted_ray_x, refracted_ray_y, 'b', 'LineWidth', 2); % Refracted ray
end

% Set plot limits and labels
xlim([-1, 1]);
ylim([-1, 1]);
xlabel('X-axis');
ylabel('Y-axis');
title('Incident and Refracted Rays');
legend('Boundary', 'Incident Ray', 'Refracted Ray');
grid on;
hold off;