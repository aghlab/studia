%% someSinuous: function description

function someSinuous(dTime,n)

time = 0 : dTime : 1; %% 1s 

someSinous = sin(2*pi*time*n);

plot(time,someSinous)

end