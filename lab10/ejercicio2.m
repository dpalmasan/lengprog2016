clear all
close all
clc

% Vertices del cuadrado y cierre
xc = [-1, 1, 1, -1, -1];
yc = [-1, -1, 1, 1, -1];

plot(xc, yc, 'o-r', 'linewidth', 2); grid on
axis([-2, 2, -2, 2])