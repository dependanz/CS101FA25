function f = f(x)
    f = x .^ 4 - 3 * x .^ 3 + 10 * x .^ 2 - x - 2;
end

N = 500;
x = -6:(12/(N-1)):6;
y = f(x);

plot(x,y,'k-',LineWidth=2);
grid on;
title("Plot of $f(x) = x ^ 4 - 3 x ^ 3 + 10 x ^ 2 - x - 2$",'Interpreter','latex')
xlabel('x-axis');
ylabel('f(x)');