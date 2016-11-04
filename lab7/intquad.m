function A = intquad(n, m)
% Lab 7 - Ejercicio 4
% Genera una matriz de 2n x 2m, compuesta de cuatro submatrices de nxm

% Matriz del problema
A = [zeros(n, m), ones(n, m);2*ones(n, m), 3*ones(n, m)];

