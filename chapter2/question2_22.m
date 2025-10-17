% Newton's (linear) second law -> F = ma
% Rotational analogue -> tau = I * alpha
%   tau   : net torque
%   I     : moment of inertia
%   alpha : angular acceleration

tau = 20; % [N-m]
I   = 15; % [kg-m^2]

alpha = tau / I

%% Torque
% If F in F = ma is the "push/pull" that changes linear momentum, tau in
% tau = I * alpha is the "twist" that changes angular momentum.

%% "Moment" of inertia
% Mass m is the quantity of matter for a physical body. It is also the 
% quantity of linear resistance (i.e. the more mass, the harder it is to
% move it in a straight line)

% Mass is the integral of density over a volume. [For simple bodies density 
% is usually constant, but for complicated materials, density may vary (in
% space and/or time)]

% The rotational analogue is inertia, which is the quantity of rotational
% resistance (i.e. the more inertia, the harder it is to rotate).

% The "moment of inertia" is the integral of the straight line distance of 
% a particle of mass to a rotation axis.
%       - it's called the "moment" of inertia because the notion of a
%       "k-th order moment" for some function f(x) is the integral of 
%       (f(x) ^ k) over the domain of x.

%% Angular Acceleration
% a in F = ma is rate of change of linear velocity
% alpha in tau = I * alpha is rate of change of angular velocity