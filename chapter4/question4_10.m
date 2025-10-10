% More Polynomials! Question 4.10
% y(x) = x^6 - x^5 - 6x^4 + 14x^3 - 12x^2

% Task: Plot the resulting function and compare observed roots to
% calculated roots. Plot the location of the roots on a complex plane.

function retVal = f(x)
    retVal = x .^ 6 - x .^ 5 - 6 * x .^ 4 + 14 * x .^ 3 - 12 * x .^ 2;
end

x = linspace(-10,10,1000);
y = f(x);

figure;
hold on;
plot(x,y,'b-',LineWidth=2);
plot(x,0 * y,'k--',LineWidth=1);
ylim([-1,1])

% Even with ylim[-1,1], it may be 
% hard to eyeball what those x values are.

% Calculate the roots of the polynomial
rootsPoly = roots([1 -1 -6 14 -12 0 0]);

scatter(real(rootsPoly), real(f(rootsPoly)), 'r', LineWidth=3)
legend show;
hold off;