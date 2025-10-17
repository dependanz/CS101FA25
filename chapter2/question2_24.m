%% Power in a resistor
% V = I * R
%   V : voltage     [V]
%   I : current     [A]
%   R : resistance  [Ohms]

% Power
%   P = I * V

V_range = linspace(1,200,100);
R = 1000;
I = V_range / R;
P = I .* V_range; % Calculate power in watts

% Convert power to dBW
P_dBW = 10 * log10(P);

%% First subplot in watts
figure;
subplot(2,1,1);
plot(V_range, P, 'b-', 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Power (W)');
title('Power in Watts');
grid on;

%% Second subplot in dBW
subplot(2,1,2);
plot(V_range, P_dBW, 'r-', 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Power (dBW)');
title('Power in dBW');
grid on;