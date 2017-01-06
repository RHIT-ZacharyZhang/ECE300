%Yang Zhang ECE300 Lab Practical

%Initial setup
clc;
clear;
%Plot x(t)
a = 0;
b = 10;
x = @(t) 2000*t .*(0<=t & t<1) + ...
    2 .*(1<=t & t<5) +...
    -2000*(t-6) .*(5<=t & t<6)+...
    0 .*(6<=t & t<10);
M = 5000;
order = 5;
t = linspace(a, b, M);
figure(1);
plot(t,x(t)); grid;
xlabel('t');
ylabel('x(t)');
title('ECE300 lab practical problem 3(a)-x(t)plot');

% Find Fourier Series Coefficients
T0 = b-a;
w0 = 2*pi/T0;
k= -order:order;
ck=1/M*exp(-1i*w0*k'*t)*x(t) .';
ck = ck';
w = w0*k;

% Plot ck
figure(2);
subplot(2,1,1);
stem(w*10^(-3),abs(ck));
title('Magnitude');
xlabel('\omega');
ylabel('|X[k]|');
%
subplot(2,1,2);
stem(w*10^(-3),angle(ck));
title('Angle');
xlabel('\omega');
ylabel('\angle X[k]');
