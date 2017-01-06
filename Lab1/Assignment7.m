%MATLAB Review
%YANG ZHANG
%Sunday, September 04, 2016
%%
%Assignment 7
clear;
clc;
t = linspace(-2 , 20);
x1 = 20 * cos(2*pi*5000*t + 67/180*pi);
x2 = 8 * cos(2*pi*5000*t - 75/180*pi);
x3 = x1 + x2;
subplot(3,1,1);
plot(t,x1);
grid();
xlabel('t');
ylabel('x1');
title('x1 vs. t');

subplot(3,1,2);
plot(t,x2);
grid();
xlabel('t');
ylabel('x2');
title('x2 vs. t');

subplot(3,1,3);
plot(t,x3);
grid();
xlabel('t');
ylabel('x3');
title('x3 vs. t');