close all;
clc;
clear all;
k = 100; mu = 1e-6; n =1e-9;
omega_0 = 2*pi;
T_0 = 2*pi/omega_0;
t = linspace(-5*T_0, 5*T_0, 10000);
x=0;
for kf = 0:100
    x = x+(1/T_0).*cos(omega_0.*kf.*t);
end;
x= 1/T_0 + x;
figure();
plot(t,x);
title('ECE300 Prelab4 delta');
xlabel(sprintf('t sec, T_{0} = %d sec',T_0));
ylabel('x(t)');