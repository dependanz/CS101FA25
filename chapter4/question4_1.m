% (a) Greater than or equal to ">="
5 >= 5.5

% (b) Less than "<"
34 < 34

% (c) Exclusive or; 
% if p and q are either 0 or 1, xor(p,q) = 1 if p != q 
xor( 17 - pi < 15, pi < 3 )

% (d) "true" is 1, "false" is 0.
true > false

% (e) Equality "=="
% if p = 0, ~p = 1;
% if p = 1, ~p = 0
% ~~p = p, so (~~p == p) = 1
~~(35 / 17) == (35 / 17)

% (f) A composition of logical operators
% in the order of operations, logical operators are last
(7 <= 8) == (3 / 2 == 1)

% (g) Logical AND
% p && q = 1, only if p = 1 and q = 1.
17.5 && (3.3 > 2.)