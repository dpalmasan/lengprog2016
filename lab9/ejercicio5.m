function val = ejercicio5(M, v)

[m, n] = size(M);

% Suponemos que el primer elemento es el mas cercano
val = M(1, 1);
min_dist = abs(v - M(1, 1));
for i = 1:m
    for j = 1:n
        % Calculamos distancia con elemento i, j
        dist = abs(v - M(i, j));
        
        % Si la distancia es menor que la menor que habiamos calculado, la
        % reemplazamos y guardamos el valor mas cercano
        if dist < min_dist
            min_dist = dist;
            val = M(i, j);
        end
    end
end
end