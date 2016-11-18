function B = ejercicio4(A, i, j, bool)
% Obs: Esta funcion no chequea que i o j sean mayores que 0, o que si se
% cambia una fila, i y j sean menores que la cantidad de filas, y lo mismo
% con la cantidad de columnas. Queda para el estudioso, ver como abordar
% tales casos.

% Inicializamos salida B
B = A;

% Si bool es verdadero
if bool
    % Cambiamos filas
    tmp = B(i, :);
    B(i, :) = B(j, :);
    B(j, :) = tmp;
else
    % Cambiamos columnas
    tmp = B(:, i);
    B(:, i) = B(:, j);
    B(:, j) = tmp;
end
end