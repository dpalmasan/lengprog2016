clear all
close all
clc

theta = linspace(0, 2*pi, 200);

% Radio
r = 3;

% Coordenadas polares
x = r*cos(theta);
y = r*sin(theta);

plot(x, y, '--m'); grid on
axis equal