% Polynomials! Question 4.9

% Polynomial has six roots: -6, -2, 1 + i*sqrt(2), 1 - i*sqrt(2) and 6.
% What are the coefficients of the polynomial?

% poly(R) - takes in an array of polynomial roots (R), and converts them to
% coefficients of a polynomial of order-length(R)

poly_roots = [-6, -2, 1 + 1i*sqrt(2), 1 - 1i*sqrt(2), 6];
coefficients = poly(poly_roots);

coefficients
