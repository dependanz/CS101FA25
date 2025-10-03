function f = f(x)
    a = x .^ 2 - 6 * x + 5;
    b = x - 3;
    f = a ./ b;
end

N = 500;
x = -2:(10/(N-1)):8;
y = f(x);

figure;
plot(x,y,LineWidth=3)
hold on;
plot([3,3],[-100,100],'r--',LineWidth=1.0);
ylim([-10,10])
grid on;
xlabel('x');
ylabel('f(x)');
title('Plot of the function f(x)');
text(3.1,1,"$\leftarrow$ Asymptote at $x=3$",Interpreter="latex")