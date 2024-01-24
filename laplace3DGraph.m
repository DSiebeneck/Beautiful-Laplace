% Code Adapted From 
% 
% Ali Albattat (2024). 
% 3D transfer function plot with s-plane 
% (https://www.mathworks.com/matlabcentral/fileexchange/20327-3d-transfer-function-plot-with-s-plane),
% MATLAB Central File Exchange. Retrieved January 5, 2024.

clear
close all

zlim manual

x1=-15:0.15:15;           % real axis
y1=-15:0.15:15;                % imaginary axis
[x,y]=meshgrid(x1,y1);  % generating mesh for x and y 
ss=x+y*1j;                 % generate complex plane (s-plane)

n=.5*ss+.5;                  % numerator of tarnsfer function (can be edited)
d=400*ss.^2+456*ss+32000;          % denominator of tarnsfer function (can be edited)
f=abs(n./d);   % treansfare function

surf(x,y,f, EdgeColor="none")

zlim([0 .002])
xlabel('real')
ylabel('imaginary')
title('Mass-Spring-Damper System in the Transformed Plane')
colormap parula
figure()
hold on 

contour(x,y,f)
plot(x1, 8.9*ones(1,length(x1)), '--r')
plot(-.56*ones(1,length(y1)), y1, '--r')

grid minor
colormap parula

xlabel('real')
ylabel('imaginary')
title('Mass-Spring-Damper System in the Transformed Plane')
