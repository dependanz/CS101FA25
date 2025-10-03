x = 0:10/99:10;
y = exp(-0.5 * x) .* sin(2 * x);

%
hold on;
bar(x,y)
plot(x,y,'r','LineWidth',2)
title("Bar plot")
xlabel("X-Axis")
ylabel("Y-Axis")
legend(["DecayingSine"])
grid on;