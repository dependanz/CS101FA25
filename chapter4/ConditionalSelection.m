% Get a random 32 x 32 rgb image
A = randi(255, [32,32,3]);

% Plot that image in the left subplot
subplot(1,2,1);
imshow(A / 255.0);

% A complicated selection case:
%   Select numbers divisible by 2 and less than 200, 
%   and set them to 0
condition = (mod(A,2) == 0 & A < 200);
A(condition) = 0;

% Plot modified image in right subplot
subplot(1,2,2);
imshow(A / 255.0);