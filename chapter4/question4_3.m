% Well run this and tell me if this code is (semantically speaking)
% correct.

temp = 200;
fprintf("Me: My current bodily temperature is %f, is that normal doctor?\n", temp);

if temp < 97.5
    disp("Doc: Temperature below normal");
elseif temp > 97.5
    disp("Doc: Temperature normal");
elseif temp > 99.5
    disp("Doc: Temperature slightly high");
elseif temp > 103.0
    disp("Doc: Temperature dangerously high");
end

fprintf("\nMe: ...huh?\n")