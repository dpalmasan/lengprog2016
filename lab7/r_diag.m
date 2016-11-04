function R = r_diag(n)
% Lab 7 - Ejercicio 5
% Crea una matriz identidad volteada de izquierda a derecha.

% Inicializar salida
R = zeros(n);

% Solucion con ciclo
% for i = 1:n
%  R(i, n - i + 1) = 1;
% end

% Sin usar ciclos (indexacion)
R(n:n-1:n*(n - 1)+1) = 1;