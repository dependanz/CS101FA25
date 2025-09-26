% The angle between two vectors u and v in 
% n-dimensional (Euclidean) space is given by
% acos(dot(u,v) / norm(u) * norm(v))

% The dot(u,v) is the scalar-valued vector dot-product, 
% defined as the sum of the element-wise multiplication
% of u and v.
u = [1.0, 0.0, 0.0];
v = [0.0, 0.0, 1.0];

dot_uv = sum(u .* v)
% Or, dot_uv = dot(u,v), since dot is a command in matlab

% To compute the angle between u and v:
theta = acos(dot_uv / (norm(u) * norm(v)));

% Two vectors are deemed "orthogonal" if their dot
% product <u,v> == 0.0
% Note that we initialized u and v to be orthogonal.
% Intuitively, we expect theta to be close to pi/2 radians,
% since (in a vector space) orthogonal vectors are perpendicular.
fprintf( ...
    "Is theta close to pi/2? -> %s\n", ...
    mat2str(abs(theta - pi / 2) <= 1e-9) ...
);