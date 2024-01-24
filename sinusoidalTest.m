clear 
close all

val = 3;
map = linspace(.1,10, 1000);
t = 1000;

for i = 1:length(map)
    test(i) = (val*sin(val*t)*cos(map(i)*t)-map(i)*cos(val*t)*sin(map(i)*t))/(val^2-map(i)^2);
end 

plot(map,test)
title('Sinusoidal Function Integral', 'Color','k')
xlabel('k')
ylabel('F(k)')

prettygraph(gca)
