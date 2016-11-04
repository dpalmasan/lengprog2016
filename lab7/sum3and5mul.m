function suma = sum3and5mul(n)
% Lab 7 - Ejercicio 6
% Dado n, retorna la suma de todos los multiplos de 3 y 5 desde 3 hasta n.

% Se hara por partes el problema, solo para que quede claro.

% Lista de multiplos de 3
mul3 = 3:3:n;

% Lista de multiplos de 5
mul5 = 5:5:n;

% Multiplos de 3 y 5 sin que se repitan
mul3and5 = unique([mul3, mul5]);
suma = sum(mul3and5);