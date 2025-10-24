% Income Tax (Australia 2009) + 1.5[%] Medicare levy
income = input('Enter taxable income (AUD): ');

if income < 0
    error('Income must be nonnegative.');
end

% Income tax by bracket (progressive)
if income <= 6000
    tax = 0;
elseif income <= 34000
    tax = 0.15 * (income - 6000);
elseif income <= 80000
    tax = 4200 + 0.30 * (income - 34000);
elseif income <= 180000
    tax = 18000 + 0.40 * (income - 80000);
else
    tax = 58000 + 0.45 * (income - 180000);
end

% 1.5[%] Medicare levy charge
levy = 0.015 * income;

total_tax = tax + levy;

fprintf('Income tax:     AU$%0.2f\n', tax);
fprintf('Medicare levy:  AU$%0.2f\n', levy);
fprintf('Total payable:  AU$%0.2f\n', total_tax);
