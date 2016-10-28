clear all
clc

% Nuevamente resolveremos el problema sin inicializacion
n = input('Ingrese n: ');

% Inicializacion
elemento = 0;
p = 3;
i = 1;
j = 1;
for k = 1:n
    v(i) = elemento;
    
    % Crear vector con impares
    if (-1)^elemento < 0
        w(j) = elemento;
        j = j + 1;
    end
    elemento = elemento + p;
    if p == 3
        p = 2;
    elseif p == 2
        p = -1;
    else
        p = 3;
    end
    i = i + 1;
end

fprintf('Su vector de %d elementos es:\n', n)
disp(v)
fprintf('Los elementos impares son: \n');
disp(w)
