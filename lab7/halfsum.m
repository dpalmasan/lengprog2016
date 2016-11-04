function v = halfsum(A)
% Lab 7 - Ejercicio 7

% Calcular dimensiones de la matriz
[m, n] = size(A);

% Inicializar acumulador de la suma.
v = 0;

% Sumar elementos bajo la triangular derecha
for i = 1:m
    for j = i:n
        v = v + A(m - i + 1, j);
    end
end

end