% Using a dictionary.
keys = ["George", "Sam", "Betty", "Charlie", "Suzie"];
values = [15, 5, 10, 5, 15];
values = values / sum(values);
dict = dictionary(keys, values);

% Pie Chart
piechart(dict.values, dict.keys);
title(sprintf("Sam contributed %.02f%% to the total", 100 * dict("George")))