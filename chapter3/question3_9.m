% Let's plot them all in the same figure.
x = 0:0.1:4;
y = exp(-x) .* sin(x);

% Tiled layout allows for an easy traversal of subplots
% When you call "nexttile;" the iterator for subplots will increase by
% column. When it reaches the number of columns, it will go to the next
% row.
tiledlayout(4,2);

% Linear plot (note the use of "nexttile" to start on the first subplot)
nexttile;
plot(x, y);
xlabel('x');
ylabel('y');
title('Plot of y = exp(-x) * sin(x)');
grid on;

% Log-linear plot
nexttile;
semilogy(x, y);
xlabel('x');
ylabel('log(y)');
title('Log-Linear Plot of y = exp(-x) * sin(x)');
grid on;

% Stem plot (nexttile then starts on the next row, first column)
nexttile;
stem(x, y);
xlabel('x');
ylabel('y');
title('Stem Plot of y = exp(-x) * sin(x)');
grid on;

% Stair plot
nexttile;
stairs(x, y);
xlabel('x');
ylabel('y');
title('Stair Plot of y = exp(-x) * sin(x)');
grid on;

% Bar plot
nexttile;
bar(x, y);
xlabel('x');
ylabel('y');
title('Bar Plot of y = exp(-x) * sin(x)');
grid on;

% Horizontal bar plot
nexttile;
barh(x, y);
xlabel('y');
ylabel('x');
title('Horizontal Bar Plot of y = exp(-x) * sin(x)');
grid on;

% Compass plot (In this case, x is the angle, y is the radius)
nexttile;
compassplot(x,y);
title('Compass Plot of y = exp(-x) * sin(x)');
grid on;

% For question 3.10, it doesn't make sense to plot y on a linear-log plot
% or log-log plot because the x axis doesn't change exponentially.