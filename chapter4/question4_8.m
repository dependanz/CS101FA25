choice = input('Type out an elective out of the following choices (English, History, Astronomy, Literature): ', 's');
choice = strtrim(lower(choice));   % normalize case and spaces

switch choice
    case 'english'
        fprintf('You enrolled in English.\n');
    case 'history'
        fprintf('You enrolled in History.\n');
    case 'astronomy'
        fprintf('You enrolled in Astronomy.\n');
    case 'literature'
        fprintf('You enrolled in Literature.\n');
    otherwise
        fprintf('Invalid choice. Please enter English, History, Astronomy, or Literature.\n');
        question4_8;
end
