%% Decibels
% Equation for the ratio of two power measurement given in Decibels (dB) is
% given by:
%       dB = 10 * log10(P / P_ref)
% where P is the power level being measured and P_ref is a reference power
% level.

%% (a) dBm, a special case where P_ref = 1 mW;
function dBm = dBmConvert(P)
    % Assume P is in Watts.
    dBm = 10 * log10(P);
end

%% (b) Plot of power in watts versus power in dBm w.r.t. 1-mW reference level:
P = logspace(-3, 3, 100); % Power levels from 0.001 W to 1000 W
dBm = dBmConvert(P);      % Convert power levels to dBm

figure;
plot(P, dBm);
xlabel('Power (W)');
ylabel('Power (dBm)');
title('Power in Watts vs Power in dBm');
grid on;