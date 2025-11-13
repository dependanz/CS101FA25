% Get user input
n = input("Enter an integer to evaluate its factorial >> ");

if (n < 0)
    error("Factorial is not defined for negative integers.");
else
    f = 1;
    for i = 1:n
        f = f * i;
    end
    fprintf("The factorial of %d is %d.\n", n, f);
end