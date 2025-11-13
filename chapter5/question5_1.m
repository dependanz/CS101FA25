%% Using loops and branches

y = [];
for t = -9:0.5:9
    if t >= 0
        y = [y (-3 * t ^ 2 - 4)];
    else
        y = [y (3 * t ^ 2 - 4)];
    end
end

plot(y, LineWidth=2.0);