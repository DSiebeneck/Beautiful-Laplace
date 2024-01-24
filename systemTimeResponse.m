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

plot(time, X)

xlabel('Time (s)')
ylabel('Height (m)')
title('Mass-Spring-Damper System Response')