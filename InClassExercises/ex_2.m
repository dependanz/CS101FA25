% Question 1
fprintf("Question 1:\n")
fprintf("It's 3. The reason is in memory, MATLAB's default storage mode for 2d arrays is by their columns (column-major order)\n")
fprintf("\tFor higher order arrays (or tensors) the convention is right-most-index-major-order\n")
fprintf("\tFor example, if A is a 3 x 4 x 5 3rd-order array, indexing A(15) at 15, you'd count A(1,1,1), A(1,1,2), ..., A(1,1,5), then continue counting at A(1,2,1), ..., A(1,2,5), A(1,3,1), ..., A(1,3,5).\n")
fprintf("\n\tIn MATLAB you can go from subscript indices to linear indices (and vice versa) with the command sub2ind (and ind2sub)\n")
fprintf("\tIf you want an equation, say A is a d_n x d_{n-1} x ... x d_{1} n-th order array, and you subscript index as A(i_n, i_{n_1}, ..., i_{1}), where i_k can be i_k = 1,2,...,d_k, the linear index is A((i_{1} - 1) + d_1 * (i_{2} - 1) + d_1 * d_2 * (i_{3} - 1) ... + d_1 * ... * d_{n-1} * (i_{n} - 1))\n")

% Question 2
theta = pi / 4;
R_z = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];

fprintf("Question 2:\n")
R_z

% Question 3
W = 0.2 * rand(10,784) - 0.1;
x = 255.0 * rand(784, 1);
z = W * x;
fprintf("Question 3:\n");
fprintf("\tsize(W) = %d x %d\n", size(W));
fprintf("\t[min(W), max(W)] = [%f, %f]\n", min(W,[],'all'), max(W,[],'all'));
fprintf("\tsize(x) = %d x %d\n", size(x));
fprintf("\t[min(x), max(x)] = [%f, %f]\n", min(x,[],'all'), max(x,[],'all'));
fprintf("\tsize(z) = %d x %d\n", size(z));
fprintf("\t[min(z), max(z)] = [%f, %f]\n", min(z,[],'all'), max(x,[],'all'));

% bar(0:1:9, z);