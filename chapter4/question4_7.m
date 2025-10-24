day = input('Enter a day of the week: ', 's');
day = strtrim(lower(day)); % <- This uses the string functions lower and strtrim.

switch day
    case 'sunday'
        n = 1;
    case 'monday'
        n = 2;
    case 'tuesday'
        n = 3;
    case 'wednesday'
        n = 4;
    case 'thursday'
        n = 5;
    case 'friday'
        n = 6;
    case 'saturday'
        n = 7;
    otherwise
        fprintf('Illegal day name: "%s"\n', day);
        return
end

fprintf('Day number: %d\n', n);
