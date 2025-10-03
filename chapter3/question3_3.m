% The functions from question 3.1
x = linspace(0,10,100);
y1 = exp(-0.5 * x) .* sin(2 * x);
y2 = exp(-0.5 * x) .* cos(2 * x);

% Log-linear plot
semilogx(x,y1,'r-','LineWidth',1);
hold on;
semilogy(x,y2,'b-','LineWidth',1);
title("Log-Linear Plots")
xlabel("X-Axis (log scale)")
ylabel("y(x)")