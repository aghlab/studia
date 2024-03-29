
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

figure(1)
subplot(4,1,1)
stem(f,m)
title('Magnitude')

subplot(4,1,2)
stem(f,abs(fft(signal(t))),'r')
title('Magnitude - Gotowa funkcja')

subplot(4,1,3)
stem(f,p*180/pi)
title('Phase')

Xo=fft(signal(t));
Xo(m<1e-4) = 0;
phs = angle(Xo);

subplot(4,1,4)
stem(f,phs/pi,'r')
title('Phase Gotowa')

figure(2)
