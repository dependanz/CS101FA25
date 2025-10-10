% Question 4.6
function retVal = f(x)
    if (x >= 1)
        error("Input must be less than 1");
    else
        retVal = log(1 / (1-x));
    end
end

% Test
y = f(0);
y = f(0.5);

% You can "catch" errors as they happen, and define what happens during the
% error, using try and catch keywords.
try
    y = f(1);
catch ME
    disp(ME.message);
end