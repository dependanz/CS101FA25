% Random values of a and b
a = 5 * rand() + 5;
b = 5 * rand() + 5;

% Perimeter h
h = (a - b) / (a + b);
h = h ^ 2;

% Approximate circumference
C = pi * (a + b) * (1 + ((3 * h) / (10 + sqrt(4 - 3 * h))))