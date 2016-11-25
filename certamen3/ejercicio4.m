function [nc, nn] = ejercicio4(v)
% Entrada v: Un vector
% Salida nc: Cantidad de elementos que son ceros
% Salida nn: Cantidad de elementos que no son ceros
% Casos de prueba: 
% [ceros, noceros] = ejercicio4([0, 0, 0])
% [ceros, noceros] = ejercicio4([1, 6, 0])

n = length(v);
nc = 0;
nn = 0;
for k = 1:n
    if v(k) == 0
        nc = nc + 1;
    else
        nn = nn + 1;
    end
end

end