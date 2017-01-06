%Yang Zhang ECE-300 Prelab 1
%Sunday, September 04, 2016
clc; clear;
f = linspace(0 , 4000, 100);
s = j .* 2 .* pi .* f;
Hs = (2.38 * (10^21)) ./ ((s.^5)+ (61 * 10^3 .* s.^4)+ (1.86* 10^9 .* s.^3) +(35.1 * 10^12 .*s.^2) + (409 * 10^15 .*s) + 2.38 * 10^21);
deeg = angle(Hs);
deg = (deeg .* 180)/pi;
fmeas=[100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 3100 3200 3300 3400 3500 3600 3700 3800 3900 4000];
IL = -20 .* log10(abs(Hs));
%Plot Insertion Loss Graph
subplot(2,1,1);
plot(f,IL,'-');
legend('predicted');
title('Insertion Loss Graph');
xlabel('frequency');
ylabel('dB');
%Plot Degree versus Frequency
grid on;
subplot(2,1,2);
plot(f , deg, '--');
title('Degree versus Frequency');
xlabel('frequency');
ylabel('degree');