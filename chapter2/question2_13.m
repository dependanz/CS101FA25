% Polar coordinates
% I've explained Polar coordinates in https://github.com/dependanz/CS101FA25/blob/main/chapter3/HW3_Question10.m

%% Question (a)
function [r,theta] = cart2polar(x,y)
    
    r = sqrt(x ^ 2 + y ^ 2);
    theta = (180 / pi) * atan2(y, x); % The coefficient on the left is because atan2 returns radians not degrees.


end

%% Question (b)
function [x,y] = polar2cart(r,theta)
    thetaRad = (pi / 180) * theta;
    x = r * cos(thetaRad);
    y = r * sin(thetaRad);
end

%% Example usages
% Convert Cartesian coordinates (3, 4) to polar coordinates
[r, theta] = cart2polar(3, 4)

% Convert back to Cartesian coordinates
[x, y] = polar2cart(r, theta)