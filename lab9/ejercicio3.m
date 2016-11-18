function max_sec = ejercicio3(v)

% Largo de la maxima secuencia de unos
max_sec = 0;

% Contador de secuencias
sec = 0;

% Largo del vector
n = length(v);

% Para cada indice de 1 a n
for i = 1:n
    % Si encontramos un 1, aumentamos el valor de unos contados
    if v(i) == 1
        sec = sec + 1;
        % Si contamos mas unos de los que teniamos como maximo,
        % reemplazamos el valor del largo de la maxima secuencia
        if sec > max_sec
            max_sec = sec;
        end
    else
        % Si encontramos un 0, reiniciamos el conteo
        sec = 0;
    end
end

end