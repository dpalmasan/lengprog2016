function idx = ejercicio2(M, V)

% Se extrae la cantidad de filas
m = size(M, 1);

% Inicializamos asumiendo que la primera secuencia sera la mejor
idx = 1;
min_diff = ejercicio1(M(1, :), V);

% Para el resto de las filas
for k = 2:m
    % Si encontramos una secuencia mejor, nos quedamos con dicho indice
    diff = ejercicio1(M(k, :), V);
    if diff < min_diff
        idx = k;
        min_diff = diff;
    end
end

end