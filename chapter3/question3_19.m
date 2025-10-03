% (V_o / V_i) the ratio of output voltage and input voltage for a simple
% high-pass RC filter (capacitor in series with signal, resistor parallel
% to load), is given by:
%       (i * 2 * pi * f * R * C) / (1 + (i * 2 * pi * f * R * C))
% This is a complex valued function of frequency f, also known as the
% frequency response of the filter.

% The amplitude and phase responses are obtained from the frequency 
% response by computing the magnitude and phases of the complex outputs.
% We can plot these by taking a grid of frequencies.

% We'll make a uniformly sampled grid from 0 to (2/(2 * pi * R * C)), which
% is twice the cutoff frequency of a simple RC circuit.

R = 16 * 1000; % 16 kilo-Ohms
C = 1e-6;      % 1 micro-Farad
f_c = (1/(2 * pi * R * C));
N = 500;
f = linspace(0, 2 * f_c, N);

% Frequency Response (in MATLAB, j and i evaluate to the same imaginary unit)
A = (j * 2 * pi * f * R * C);
H = A ./ (1 + A);

% Amplitude Response
H_amp = abs(H);

% Phase Response
H_phase = angle(H);

% Plot
tiledlayout(2,1);
nexttile;
plot(f, H_amp,'r-',LineWidth=1);
xlabel('Frequency (Hz)');
ylabel('Amplitude Response');
title('Amplitude Response of High-Pass RC Filter');
grid on;
nexttile;
plot(f, H_phase,'b-',LineWidth=1);
xlabel('Frequency (Hz)');
ylabel('Phase Response (rad)');
title('Phase Response of High-Pass RC Filter');
grid on;

% Note that the resulting amplitude response plot shows a large attenuation
% at lower frequencies and increases as frequency increases. This shows 
% that this RC configuration gives us a high-pass filter.