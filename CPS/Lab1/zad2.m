
% Wykorzystujac twierdzenie Shannona, 
% zasymuluj rekonstrukcje sygnalu sinusoidalnego.

N = 100;
f = 2; %[Hz]
Fp = 100; %[Hz]
n = 0:1:Fp-1; %100 próbek
dts = 1/Fp; %[s]

t = 0:dts:1-dts;
y = sin(2*pi*f*n*dts);

xx = 0;

for i = 0:1:Fp-1
    
   temp = sin(2*pi*f*i*dts) * sinc(pi*(t-i*dts)/dts);
   xx = xx + temp;
   
end

figure(1)
subplot(2,1,1)
plot(t,y,'-r'); hold on; 
stem(t,xx); hold off; % NIEBIESKI - REKONSTRUCJA!
subplot(2,1,2)
stem(t,xx)
