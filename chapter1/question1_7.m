x = 2;
y = -1;

% (a)
a = (2 * x ^ 3) ^ (1/4)

% (b)
b = (2 * y ^ 3) ^ (1/4)

%% Complex Numbers
% Why is b = "0.8409 + 0.8409i" ?

% Within the real numbers, the definition of sqrt(-1) does not exist.
% Therefore there is an extension of the reals to something called the
% Complex number system by defining the special symbol i = sqrt(-1)

% In MATLAB, this is actually enforced, check that i^2 is -1 :
i ^ 2

% In the complex number system, every "number" has a real component and an
% imaginary component. Both are represented by real numbers, but the latter
% is multiplied by i.

% In our case, real(b) = 0.8409, and imag(b) = 0.8409. (This is a case where
% the real component equals the imaginary component)
real(b)
imag(b)

% With y = -1;
% b = (2 * y ^ 3) ^ (1/4)
%   = (2 ^ (1/4)) * y ^ (3/4)
%   = (2 ^ (1/4)) * (y ^ (1/2)) ^ (3/2)
%   = (2 ^ (1/4)) * sqrt(y) ^ (3/2)
%   = (2 ^ (1/4)) * sqrt(-1) ^ (3/2)
%   = (2 ^ (1/4)) * i ^ (3/2)
% So it makes sense that b has an imaginary component.

%% Further
% (2 ^ (1/4)) is a real, let's examine y ^ (3/4) where y = -1

% Let's define x = y ^ (3 / 4).
% For this negative number raised to fractional power, we solve 
% for x in x ^ (4/3) + 1 = 0 to get y ^ (3/4). This means we potentially
% have multiple solutions for x.

% To account for this, MATLAB automatically returns the complex root with 
% the smallest positive angle in the complex plane.