function Q = indices_pares(M)
% Lab 7 - Ejercicio 2
% Retorna todos los elementos en posiciones pares
% de M, es decir (2, 2), (2, 4), ...

% Forma dificil (CARRETERA CON CICLOS)
% [m, n] = size(M);
% 
% i2 = 1;
% for i1 = 2:2:m
%   j2 = 1;
%   for j1 = 2:2:n
%     Q(i2, j2) = M(i1, j1);
%     j2 = j2 + 1;
%   end
%   i2 = i2 + 1;
% end

% Forma Facil (INDEXAR)
Q = M(2:2:end, 2:2:end);

