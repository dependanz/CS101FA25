dx = 0.1;
x = -2 * pi:dx:2 * pi;

f_1 = sin(x);
f_2 = cos(2 * x);
f_3 = f_1 - f_2;

figure;
hold on;
plot(x, f_1, 'b-', 'DisplayName', 'sin(x)');
plot(x, f_2, 'r--', 'DisplayName', 'cos(2x)');
plot(x, f_3, 'k:', 'DisplayName', 'f_1 - f_2')
title("Question 2.21")
xlabel("x - axis");
ylabel("amplitude");
grid("on");
legend show;
