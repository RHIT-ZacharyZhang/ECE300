%MATLAB Review
%YANG ZHANG
%Sunday, September 04, 2016
%%
%Assignment 6
x = -1.5:0.5:1.5;
y = [-9 4 -1 0 1 -4 9];	
z= x +j*y
plot(z) 	% complex values can be plotted
subplot(3,1,1), plot(z)
xlabel('real');
ylabel('imaginary');
title('plot1')
subplot(3,1,2), stem(abs(z))
xlabel('order');
ylabel('absolute number');
title('plot2');
subplot(3,1,3), stem(angle(z))
xlabel('order');
ylabel('angle');
title('plot3');