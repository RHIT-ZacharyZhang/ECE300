%%ECE 300 Fall YangZhang PreLab4
clc;
clear;
k = 100; 
u = 1e-6; 
num =1e-9;
R = 16*k;
C1 = 100*num;
C2 = 1*u;

Tau1 = R*C1;
Tau2 = R*C2;
 
frequency = linspace(1,20*k,1000);
omega = 2*pi*frequency;
H1 = -1./(1+Tau1*1i.*omega);
H2 = -1./(1+Tau2*1i.*omega);

H1db = 10.*log10(abs(H1).^2);
H2db = 10.*log10(abs(H2).^2);

subplot(2,1,1);
semilogx(frequency, H1db,'b-',frequency,H2db,'r--');
legend(sprintf('RC = 0.00016',Tau1),sprintf('RC = 0.0016',Tau2));
title('Magnitude');
xlabel(sprintf('frequnecy Hz'));
ylabel('|H(j*\omega)|db  dB');
 
subplot(2,1,2);
semilogx(frequency,unwrap(angle(H1)),'b-',frequency,unwrap(angle(H2)),'r--');
legend(sprintf('RC = 0.00016',Tau1),sprintf('RC = 0.0016',Tau2));
title('Angle');
xlabel(sprintf('frequnecy Hz '));
ylabel('\angle(H(j*\omega))');
