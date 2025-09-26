function D = dist(x1,y1,x2,y2)
    D = sqrt((x1 - x2) ^ 2 + (y1 - y2) ^ 2);
end

distance = dist(-3,2,3,-6);

figure;
scatter([-3, 3], [2, -6], 'filled');
xlabel('X-axis');
ylabel('Y-axis');
xlim([-10,10]);
ylim([-10,10]);
title(['Distance between [-3;2] and [3;-6]: ', num2str(distance)]);
grid on;
hold on;
text(-3, 2, '  (-3, 2)', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(3, -6, '  (3, -6)', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');
hold off;