clear all
close all
clc

x = linspace(-3,3,500);
y = exp(-x.^2);
z = 2*exp(-x.^2);
plot(x, y, '-', x, z, '--')
title('Campana de Gauss')
xlabel('Eje de Abscisas'); ylabel('Eje de Ordenadas')
h = legend('\fontsize{14}{0}$e^{-x^2}$', '\fontsize{14}{0}$2e^{-x^2}$');
set(h, 'interpreter', 'latex')
