% Lab6 Matlab Yang Zhang, Zhang Wen & Yuan-Ti Ho 
% Initialize
clc;
clear all;
% Set up var
tit = 'v.csv';
vsound = importdata(tit,',',21);
x = vsound.data(:,2);
t = vsound.data(:,1);
dt = t(2)-t(1);
% Get Var
[Xmag,Xphase,df,frq]  = baf_fft(x,dt);
% Plot
figure(1);
subplot(3,1,1);
plot(t,x);
xlabel('time (s)');
title(tit);
dBmV = 20*log(sqrt(2)*Xmag/0.001);
subplot(3,1,2);
plot(frq,dBmV);
xlim([0 2500]);
ylim([-100 100]);
xlabel('frequency(Hz)');
ylabel('|X(\omega)| (dBmV)');
subplot(3,1,3);
plot(frq,Xphase);
xlim([0 2500]);
xlabel('frequency(Hz)');
ylabel('Phase');
figure(2);
subplot(2,1,1);
plot(t,x);
xlabel('time(s)');
ylabel('x(t)');
title(tit);
subplot(2,1,2);
spectrogram(x,[1:2048],[],4096,1/dt,'yaxis');


