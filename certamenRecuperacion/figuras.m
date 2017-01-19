clear; close; clc

% Triangulo
tx = [-1 1 0 -1];
ty = [-1 -1 1 -1];

% Cuadrado
sx = [-1 1 1 -1 -1];
sy  =[-1 -1 1 1 -1];

% Circulo
r = 1;
t = linspace(0, 2*pi);
cx = r*cos(t);
cy = r*sin(t);

% Equis
xx1 = [-1 1];
yy1 = [-1 1];
yy2 = [1 -1];

subplot(221)
plot(tx, ty, 'g')
axis([-2, 2, -2, 2])
title('Triangulo')
subplot(222)
plot(cx, cy, 'r')
axis([-2, 2, -2, 2])
title('Circulo')
subplot(223)
plot(sx, sy, 'm')
axis([-2, 2, -2, 2])
title('Cuadrado')
subplot(224)
plot(xx1, yy1, 'b', xx1, yy2, 'b')
axis([-2, 2, -2, 2])
title('Equis')