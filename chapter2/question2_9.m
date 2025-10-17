%% (a)
t = 2;
omega = 120 * pi;
a = exp(-2 * t) * cos(omega * t)

%% (b)
b = exp(-2 * t) * (cos(omega * t) + i * sin(omega * t))

%% (c)
c = exp(-2 * t + i * omega * t)

%% Why are these all the same?

% Euler's formula: exp(i * x) = cos(x) + i * sin(x)

% (a) exp(-2*t) * cos(omega * t)
% (b) exp(-2 * t) * (cos(omega * t) + i * sin(omega * t)) 
%       = exp(-2 * t) * exp(i * omega * t)   | by Euler's formula
%       = exp(-2 *t + i * omega * t)
%       = (c)

% And sin(omega * t) = sin(120 * pi * 2) = 0
%       (since 120 * pi * 2 is divisible by pi)
% so (a) = (b) = (c)

