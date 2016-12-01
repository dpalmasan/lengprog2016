clear all
close all
clc

% Vertices del cuadrado y cierre
xt = [-1, 1, 0.8, -1];
yt = [-1, -1, 1, -1];

plot(xt, yt, 'o-g', 'linewidth', 2); grid on
axis([-2, 2, -2, 2])