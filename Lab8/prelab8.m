% 6th order Chebychev Type I with f(-3Db) =250Hz and 2dB ripple in the passband:
clc;
clear;
f=logspace(0,4,1000);
w=2*pi*f;
fc=250;
wc=2*pi*fc;

[Nbu1,Dbu1]=cheby1(6,2,250,'low','s');
Nbu1 = Nbu1 * 10^ (2/20);
HwBu1=freqs(Nbu1,Dbu1,w);
 
figure(1)
subplot(2,2,1), semilogx(f,abs(HwBu1),'LineWidth',2)
axis([1 1e4 0 1.3]);grid on;xlabel('frequency (Hz)');ylabel('|H| (V/V)')
title('Magnitude of H(\omega) in V/V and dB')
subplot(2,2,3), semilogx(f,20*log10(abs(HwBu1)),'LineWidth',2)
axis([1 1e4 -50 5]);grid on;xlabel('frequency (Hz)');ylabel('|H| (dB)')
subplot(2,2,2), semilogx(f,180*unwrap(angle(HwBu1))/pi,'LineWidth',2)
axis([1 1e4 -100 0]);grid on;xlabel('frequency (Hz)');ylabel('\theta_H (deg)')
title('Phase in deg and Time Delay in sec of H(\omega)')
subplot(2,2,4), semilogx(f,unwrap(angle(HwBu1))./w,'LineWidth',2)
axis([1 1e4 -1e-3 0]);grid on;xlabel('frequency (Hz)');ylabel('delay (s)')
 
figure(2)
sys=tf(Nbu1,Dbu1);
impulse(sys);
