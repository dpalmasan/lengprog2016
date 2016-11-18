function diff = ejercicio1(s1, s2)

% Inicializamos conteo de cantidad de elementos diferentes
diff = 0;

% Para cada elemento del vector (se asume que los dos son del mismo largo)
n = length(s1);
for k = 1:n
    % Si hay un elemento diferente se agrega 1 al contador
    if s1(k) ~= s2(k)
        diff = diff + 1;
    end
end
end