%% Complex Numbers

% A complex number has a real and imaginary unit
%   z = x + i * y; If y is not 0, then z is a complex number.

% Reminder, in MATLAB i = sqrt(-1) [also j, because engineers and mathematicians love
% to disagree]
i
j

%% Question a
(3 - 4 * i) * (-4 + 3 * i)

% Complex Multiplication 
%   (x_1 + y_1 * i) * (x_2 + y_2 * i)
%       = [(x_1 * x_2 - y_1 * y_2) + i * (x_1 * y_2 + y_1 * x_2)]

%% Question b
acos(1.2)

% The range of cosine is [-1,1], so acos(1.2) does not have a "real-valued"
% solution. 

% We can extend the definition of cosine to complex numbers:
%       cos(z) = 0.5 * (exp(iz) + exp(-iz))
% [And from there, acos(r) = -i * log(r + i * sqrt(1 - r^2)), where log = ln]