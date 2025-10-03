N = 500;
t = 0:(4/(N-1)):4;
y = (1 + 0.25 * i) * t - 2.0;

magnitude = abs(y);
phase     = angle(y);

figure;
subplot(2,1,1);
plot(t, magnitude,'b',LineWidth=1);
title('Magnitude of y');
xlabel('Time (s)');
ylabel('Magnitude');

subplot(2,1,2);
plot(t,phase,'r',LineWidth=1);
title('Phase of y');
xlabel('Time (s)');
ylabel('Phase (radians)');