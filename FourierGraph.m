clear
close all

t = 10;
dt = 1e-3;
time = 0:dt:t;

X = zeros(1,length(time));
X(1) = .5; %meters 
Y = zeros(1,length(time));
F = zeros(1,length(time));

m = 500; %kilos
b = 456; % N/(m/s)
k = 32e3; % N/m

for i = 1:length(time)-1
    X(i+1) = Y(i)*dt+X(i);
    Y(i+1) = (F(i)-b*Y(i)-k*X(i))/m*dt+Y(i);
end 

freq = 1/dt;
fo = fft(X.*exp(-.57*time));
fo2 = fo(1:freq/t/2);
sample = 2*pi*freq/t*time(1:freq/t/2);

plot(sample, fo2, LineWidth=3)
xlabel('Frequency (rad/s)')
title('Fourier Transform of Mass-Spring-Damper Response')