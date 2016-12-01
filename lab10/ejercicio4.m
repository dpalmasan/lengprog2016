clear all
close all
clc

% Vertices del cuadrado y cierre
xc = [-1, 1, 1, -1, -1];
yc = [-1, -1, 1, 1, -1];

figure(1)
plot(xc, yc, 'o-r', 'linewidth', 2); grid on
axis([-2, 2, -2, 2])

% Vertices del cuadrado y cierre
xt = [-1, 1, 0.8, -1];
yt = [-1, -1, 1, -1];

figure(2)
plot(xt, yt, 'o-g', 'linewidth', 2); grid on
axis([-2, 2, -2, 2])

figure(3)
plot(xc, yc, 's-r', 'linewidth', 2); grid on; hold on
plot(xt, yt, 'v-g', 'linewidth', 2)
axis([-2, 2, -2, 2])
legend('Cuadrado', 'Triangulo')