% Question 1
x = (49 - 27 * sqrt(5) + 3 * sqrt(6) * sqrt(93 - 49 * sqrt(5))) ^(1/3);
R = (1/2) * sqrt((8 * 2 ^ (2/3) - 16 * x + (2^(1/3)) * (x^2)) / (8 * 2 ^ (2/3) - 10 * x + (2^(1/3)) * (x^2)));
x
R

% Question 2
s2  = sqrt(2);
s17 = sqrt(17);
gamma = sqrt(17 - s17);
beta  = sqrt(17 + s17);
alpha = sqrt(34 + 6 * s17 + s2 * (s17 - 1) * gamma - 8 * beta * s2);
K = (s2 / 8) * sqrt(gamma ^ 2 - s2 * (alpha + gamma));

K
gamma
beta
alpha