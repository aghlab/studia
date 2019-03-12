%% Zad 2

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

% figure(1)
% subplot(2,1,1)
% plot(t,y,'-r'); hold on; 
% stem(t,xx); hold off; % NIEBIESKI - REKONSTRUCJA!
% subplot(2,1,2)
% stem(t,xx)

%% Zad 3

% definicje
N = 100;
n2 = 0:1:N-1;
t2 = dts * n2;

% widmo
X = fft(xx);

% 1st approach
df = 1 / (N*dts);
f = df * n2;
figure(2)
subplot(2,1,1);
plot(f,abs(X));
subplot(2,1,2);
plot(f(1:N/2+1),abs(X(1:N/2+1) / N/2));

% 2nd approach
figure(3)
f_axis = linspace(-N/2,N/2-1,N);
plot(f_axis,abs(fftshift(X)));