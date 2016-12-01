clear all
close all
clc

% Generar conjunto de puntos equiespaciados
x = linspace(-3, 3, 350);

% Obs: Se utiliza el punto para hacer multiplicacion o potencia componente
% a componente, si no se pone MATLAB arrojara error de dimensiones
f = x.^2 - 5*x + 6;
g = 5*x.*sin(x);

plot(x, f, 'b', x, g, 'r'); grid on
xlabel('Eje x'); ylabel('Eje y')
title('Inserte un Titulo')
legend('f', 'g')