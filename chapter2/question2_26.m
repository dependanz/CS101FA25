%% Energy stored in a spring
% F = k * x;
%   k : spring constant

% Potential energy in the compressed spring:
%       PE = 0.5 * k * x^2

F = [20 30 25 20];
K = [150 200 250 300];

% Calculate Potential Energy of these springs:
x = F ./ K;
PE = 0.5 * K .* (x .^ 2)