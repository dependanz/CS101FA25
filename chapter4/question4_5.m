% funxy using (honestly terrible) nested if constructs:

function retVal = funxy(x,y)
    if (x >= 0)
        if (y >=0)
            retVal = x + y;
        else
            retVal = x + y ^ 2;
        end
    else
        if (y >= 0)
            retVal = x ^ 2 + y;
        else
            retVal = x ^ 2 + y ^ 2;
        end
    end
end

% [Optional] Surface plot of funxy (we use the functions meshgrid and
% arrayfun, look up their documentation)
[xGrid, yGrid] = meshgrid(-10:0.1:10, -10:0.1:10);
zValues = arrayfun(@(x, y) funxy(x, y), xGrid, yGrid);
surf(xGrid, yGrid, zValues);