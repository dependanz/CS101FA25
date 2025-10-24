function tan_theta = safe_tan(theta)
    theta_rad = deg2rad(theta); % Or theta_rad = (pi / 180) * theta;
    cos_theta = cos(theta_rad);
    
    if abs(cos_theta) >= 1e-10
        % Calculate tan(\theta) if the magnitude of cos_theta is larger
        % than 1e-10
        tan_theta = sin(theta_rad) / cos_theta;
    else
        % Display error message
        error('Magnitude of cos(theta) is too close to 0, cannot evaluate tan(theta).');
    end
end

% Test safetan
try
    theta = 33;
    tan_theta = safe_tan(theta);
    fprintf('tan(%d) = %f\n', theta, tan_theta);
catch ERR
    fprintf('An error occurred while calculating tan(%d): %s\n', theta, ERR.message);
end

try
    theta = 90;
    tan_theta = safe_tan(theta);
    fprintf('tan(%d) = %f\n', theta, tan_theta);
catch ERR
    fprintf('An error occurred while calculating tan(%d): %s\n', theta, ERR.message);
end