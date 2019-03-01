
dTime = 0.0001;
time = 0 : dTime : 1;

sinuous = @(time, n) sin(time*n*2*pi);

oneSin = sinuous(time, 1);
twoSin = sinuous(time, 2);
threeSin = sinuous(time, 3);

subplot(3, 1, 1)
plot(time, oneSin)
subplot(3, 1, 2)
plot(time, twoSin)
subplot(3, 1, 3)
plot(time, threeSin)