N = 500;
theta = 0:2*pi/(N-1):2*pi;
r = sin(2*theta) .* cos(theta);

polarplot(theta,r);