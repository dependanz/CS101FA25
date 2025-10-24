% Prompt user for package weight
weight = input('Enter package weight in pounds: ');

if weight <= 0
    fprintf('Invalid weight. Please enter a positive value.\n');
    question4_4;
elseif weight > 100
    fprintf('Package not accepted (over 100 lb).\n');
else
    base_cost = 15.00; % For the first 2 pounds.
    
    % Compute excess per-pound charge after the first 2 pounds.
    excess = 0;
    if weight > 2
        excess = 5.00 * ceil(weight - 2);
    end
    
    % Account for packages >70 lbs
    surcharge = 0;
    if weight > 70
        surcharge = 15.00;
    end

    total = base_cost + excess + surcharge;
    fprintf('Mailing cost: $%.2f\n', total);
end
