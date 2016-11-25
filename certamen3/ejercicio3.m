function w = ejercicio3(v)
% Algunas pruebas posibles:
% ejercicio3(ejercicio2(8))
% ejercicio3(ejercicio2(5))
% ejercicio3([1, 2, 3, 4, 5])

k = 1;
n = length(v);

for i = 1:n
    if (-1)^v(i) > 0
        w(k) = v(i);
        k = k + 1;
    end
end
end