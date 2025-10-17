function distance = cartDist3D(x1,y1,z1,x2,y2,z2)
    distance = sqrt((x1-x2) ^ 2 + (y1-y2) ^ 2 + (z1-z2) ^ 2);
end

% Or better yet
function distance = cartDist(x,y)
    distance = sqrt(sum((x-y) .^ 2));
end

% Test
point1 = [-3, 2, 5];
point2 = [3, -6, -5];
distance = cartDist(point1, point2);
disp(['The distance between the points is: ', num2str(distance)]);