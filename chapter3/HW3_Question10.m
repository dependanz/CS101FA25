% Polar Coordinates and Polar Plots

%% Cartesian Coordinates
% In 2D space, you'd typically specify a point by two
% numbers [b_x, b_y], this is your canonical "distance 
% of b_x in the x-axis, distance of b_y in the y-axis". 
% We call "specification of points" the 
% Cartesian coordinate system.

% Uncomment the code below to see a visual of p = [1,3]

% p = [1,3];
% quiver(0,0,p(1),p(2),0,'b-',LineWidth=2);
% hold on;
% quiver(0,0,0,1,0,'r-',LineWidth=2);
% quiver(0,0,1,0,0,'r-',LineWidth=2);
% scatter(0,0,50,'black','filled');
% xlim([-4,4])
% ylim([-4,4])
% text(-0.6,0.5,'y-axis')
% text(0.25,-0.2,'x-axis')
% grid on;
% pbaspect([1 1 1])
% hold off;

%% Polar Coordinates
% We could also specify the same point [b_x,b_y] in 2D space
% by its straight line distance from the origin [0,0], 
% and also the angle it makes with the x-axis vector [1,0]. 
% This is called a polar coordinate system.

% You can think of it as specifying the radius (r) of a circle
% with its center at [0,0], and then the angle (𝜃) gives "at
% which point of the circle is our point?"

% Uncomment below to see a polar coordinate visualization of 
% the same p = [1,3].

% p = [1,3];
% r = norm(p);
% theta = acos(p(1) / r);
% phi = linspace(0,2*pi,100);
% phiarc = linspace(0,theta,100);
% quiver(0,0,p(1),p(2),0,'b-',LineWidth=2);
% hold on;
% plot(r * cos(phi), r * sin(phi), 'b--')
% plot(0.5 * cos(phiarc), 0.5 * sin(phiarc), LineStyle='-', Color=[0,0,0],LineWidth=2)
% plot(r * cos(phiarc), r * sin(phiarc), LineStyle='-', Color=[0,0.8,0.1],LineWidth=2)
% quiver(0,0,r,0,0,'r-',LineWidth=2);
% scatter(0,0,50,'black','filled');
% xlim([-4,4])
% ylim([-4,4])
% text(0.5,0.4,'\theta = angle(p)')
% text(-2.1,2,'The radius of this circle is the \newline"magnitude" of p=[1,3]. \newline r = |p|',Interpreter='tex')
% text(0.25,-0.2,'x-axis')
% grid on;
% pbaspect([1 1 1])
% title("Polar coordinate visualization of p = [1,3], the blue arrow.")
% hold off;

%% Uh, why?
% Polar Coordinates allow us to analyze/model physical phenomena that have
% a "circular" aspect to it. The mechanics of spinning, orbital motion of
% planets, directional gain in sound acoustics, and in general stuff with a 
% periodic nature to them.

% We use polar coordinates because such problems tend to have a simpler
% solution than their solution in cartesian coordinates.

%% HW 3 Question 10 - polarplot
% The question is to plot the motion of a satellite in 2D space, which is 
% expressed in polar coordinates as:

% r = p / (1 - eps * cos(theta)).

% r     : the radius of the position of the satellite
%               - i.e. the distance from [0,0]
% theta : the angle of the position of the satellite
%               - i.e. the angle the position makes with [1,0]
% p     : size of the orbit
% eps   : how much of an "oval" the orbit is (aka the eccentricity)
%               - eps = 0, means the motion is a circle.
%               - 0 < eps < 1, means the motion is some sort of oval
%               - eps = 1, means the motion is a parabola (the satellite escapes earth's gravitation)
%               - eps > 1, means the motion is hyperbolic

%% (b) Plot the orbit of this satellite if eps = 0.25
p = 800; % (km)
eps = 0.5;
theta = linspace(0,2*pi,100);
r = p ./ (1 - eps * cos(theta));

polarplot(theta,r, LineWidth=2);
hold on;


%% How close (in km) does each orbit come to Earth?
% (b) eps = 0.25

% Note first, r is a function of theta, i.e. r = r(theta).
% Well if r(theta) is the "distance of the satellite from the center of the
% earth", then the minimum r(theta) over all thetas should be the closest 
% the satellite comes to Earth.

howClose = min(r) % (km)

%% How far away (in km) does each orbit get from Earth?
% (b) eps = 0.25

% Similarly, the maximum radius should be the maximum distance the
% satellite gets from Earth.

howFar = max(r) % (km)

%% Hint for that last part:
% A hint for that question is to check out the points which the orbit paths
% intersect.