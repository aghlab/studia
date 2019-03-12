function zad1()

% Narysuj na jednym diagramie wykresy trzech przebiegów
% sinusoidalnych o czestotliwo?sciach 5, 40, 65 Hz. 
% Probkownie ma czestotliwosc 60 Hz.

clear figure

f1 = 5;
f2 = 40;
f3 = 65;

fp = 60;
n = 0:1:fp-1;
dts = 1 / fp;
time = 0:1/fp:1;
time(end) = [];
t = 0:0.001:1;

y1 = sin(2*pi*f1*n*dts);
y2 = sin(2*pi*f2*n*dts);
y3 = sin(2*pi*f3*n*dts);

yy1 = sin(2*pi*f1*t);
yy2 = sin(2*pi*f2*t);
yy3 = sin(2*pi*f3*t);

subplot(3,1,1)
plot(time,y1,'o--r'); hold on;
plot(t,yy1,'b');

subplot(3,1,2)
plot(time,y2,'o--r'); hold on;
plot(t,yy2,'b');

subplot(3,1,3)
plot(time,y3,'o--r'); hold on;
plot(t,yy3,'b');

%       DRUGA WERSJA - JESZCZE LEPSZA!
%  %%Time specifications:
%    Fs = 8000;                   % samples per second
%    dt = 1/Fs;                   % seconds per sample
%    StopTime = 0.25;             % seconds
%    t = (0:dt:StopTime-dt)';     % seconds
%    %%Sine wave:
%    Fc = 60;                     % hertz
%    x = cos(2*pi*Fc*t);
%    % Plot the signal versus time:
%    figure;
%    plot(t,x);
%    xlabel('time (in seconds)');
%    title('Signal versus Time');
%    zoom xon;