
dt = 1/100;
T = 10 - dt;

N = (T + dt) / dt;
n = 0:N-1;
df = 1/(N*dt);

t = 0:dt:T;
signal = @(t) sin(2*pi*15*t) + sin(2*pi*40*t);
xx = sin(2*pi*15*t) + sin(2*pi*40*t);

X = fft(xx);

y = zeros (1,N);
xdft = zeros (1,N);

for k = 0:N-1
    for n = 0:N-1
        Wn = exp(-(2*pi*k*n*1j)/N);
        X1(k+1, n+1) = Wn;
    end
end

Xk = X1*signal(t)';

m = abs(Xk);

Xk(m<1e-4) = 0;
p=unwrap(angle(Xk));

f = (0:length(y)-1)*100/length(y);

subplot(2,1,1)
plot(f,m)
title('Magnitude')

subplot(2,1,2)
plot(f,p*180/pi)
title('Phase')