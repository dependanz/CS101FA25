function D = dist(u)
    D = sqrt(sum(u .* u));
end

function v = unit(u)
    % Gets the unit direction of vector u
    % i.e. v = u / |u|; 
    %      so that |v| = 1
    v = u / dist(u);
end

% Testing 2D case
u = [3, 4];
fprintf("Vector u = [%1.0f %1.0f]\n", v);
fprintf("|u| = %1.0f\n", dist(u));
v = unit(u);
fprintf("Unit vector v = [%1.0f %1.0f]\n", v);
fprintf("|v| = %1.0f\n", dist(v));