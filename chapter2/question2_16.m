%% Spherical coordinates
function [r, theta, phi] = cart2sphere(x,y,z)
    r = sqrt(x^2 + y^2 + z^2);
    theta = atan2(y, x) * (180 / pi); % Convert radians to degrees
    phi = acos(z / r) * (180 / pi);
end

function [x, y, z] = sphere2cart(r, theta, phi)
    theta = theta * (pi / 180); % Convert degrees to radians
    phi = phi * (pi / 180);     % Convert degrees to radians
    x = r * sin(phi) * cos(theta);
    y = r * sin(phi) * sin(theta);
    z = r * cos(phi);
end

[x, y, z] = sphere2cart(5, 45, 30);
disp(['x: ', num2str(x), ', y: ', num2str(y), ', z: ', num2str(z)])
[r, theta, phi] = cart2sphere(x,y,z);
disp(['r: ', num2str(r), ', theta: ', num2str(theta), ', phi: ', num2str(phi)]);
