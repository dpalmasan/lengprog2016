function [i, j] = punto_silla(M)
% Casos de Prueba
% [i, j] = ejercicio6(magic(4))
% [i, j] = ejercicio6([1, 3, 3, 4, 5, 1;5, 2, 7, 8, 1, 10; 20, 10, 30, 50, 80, 70; 13, 4, 11, 2, 4, 6])
% [i, j] = ejercicio6([3, 4, 5, 3;2, 3, 2, 2;1, 2, 0, 1])

% Inicializamos i y j
i = 0;
j = 0;

% Calculamos dimensiones de la matriz
[m, n] = size(M);

for r = 1:m
    % Buscamos la posicion del minimo de la fila r
    min_pos_c = 1;
    for c = 2:n
        if M(r, c) < M(r, min_pos_c)
            min_pos_c = c;
        end
    end
 
    % Utilizando la posicion encontrada, buscamos el maximo de dicha
    % columna
    max_pos_r = 1;
    for rr = 2:m
        if M(rr, min_pos_c) > M(max_pos_r, min_pos_c)
            max_pos_r = rr;
        end
    end

    % Si la fila en la que estabamos buscando el minimo, coincide donde
    % esta el maximo encontrado en la columna, entonces encontramos un
    % punto de silla y retornamos
    if r == max_pos_r
        i = max_pos_r;
        j = min_pos_c;
        return;
    end
    
end

end