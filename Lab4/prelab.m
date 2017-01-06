w = 2*pi;
kl = 1:100;
hk = kl;
hk(:) = 1;

t = -3:1/100:3;
y = t;
y(:) = 0;
for k = kl
    y = y + hk(k).*exp(1i*k*w.*t) + hk(k).*exp(-1i*k*w.*t);
end
plot(t, y);