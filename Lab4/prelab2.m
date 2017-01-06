clear;
RC = 0.0016;
f = exp(log(10): 0.001 :log(20e3));
w = f*2*pi;

Hjw = (1 + 1i*w*RC)./(1i*w*RC);

subplot(2,1,1);
semilogx(f,20*log(abs(Hjw)));
xlabel('Frequency');
ylabel('|H(jw)| in dB');

subplot(2,1,2);
semilogx(f,unwrap(angle(Hjw)));
xlabel('Frequency');
ylabel('<H(jw) in dB');
