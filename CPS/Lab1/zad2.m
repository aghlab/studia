

% Wykorzystujac twierdzenie Shannona, 
% zasymuluj rekonstrukcje sygnalu sinusoidalnego.

f = 2; %[Hz]
Fp = 100; %[Hz]
n = 0:1:Fp-1; %100 próbek
dts = 1/Fp; %[s]

t = 0:dts:1-dts;
y = sin(2*pi*f*n*dts);

xx = 0;

for i = 0:1:Fp-1plot(t,xx,'b-o')
    
   temp = sin(2*pi*f*i*dts) * sinc(pi*(t-i*dts)/dts);
   xx = xx + temp;
   
end


subplot(2,1,1)
plot(t,y,'o--r'); hold on; % NIEBIESKI - REKONSTRUCJA!
plot(t,xx,'b-o'); hold off;
subplot(2,1,2)
plot(t,xx,'b-o'); hold off;