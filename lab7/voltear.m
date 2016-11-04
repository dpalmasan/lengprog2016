function w = voltear(v)
% Lab 7 - Ejercicio 1
% Funcion que voltea un vector (fila)

% FORMA 1 (Usando ciclos)
% n = length(v);
%
% for i = n:-1:1
%   w(n - i + 1) = v(i);
% end

% Forma 2 (Indexando)
w = v(end:-1:1);