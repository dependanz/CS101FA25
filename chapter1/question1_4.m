%% Expression (a)
a = ((1 / 5 ^ 2) + (3/2) * pi - 1) ^ (-3)

%% Expression (b)
b = 2 * pi - sqrt(pi)

%% Expression (c)
% c = 1 + 1 / 2 + 1 / 2 ^ 2 + 1 / 3 ^ 3 + 1 / 2 ^ 4

% or

bases = [2 2 2 3 2];
exponents = 0:1:4;
c = sum(1 ./ (bases .^ exponents))