clear 
close all

val = .3;
map = linspace(.01,.5, 1000);

for i = 1:length(map)
    test(i) = exp(20*(val-map(i))/(val-map(i)))-1/(val-map(i));
end 

plot(map,test)
title('Exponential Function Integral', 'Color','k')
xlabel('u')
ylabel('F(u)')

prettygraph(gca)