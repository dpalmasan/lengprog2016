clear all
clc

% Ingresar valor
n = input('Ingrese n: ');

tmp = n;
% Inicializar
k = 1;
prom = 0;

% Calcular numeros de la serie y agregar al vector
while n ~= 1
    v(k) = n;
    if (-1)^n > 0
        n = floor(n / 2);
    else
        n = 3*n + 1;
    end
    prom = v(k) + prom;
    k = k + 1;
end

v(k) = 1;
prom = (prom + 1) / k;

fprintf('Para n = %d los numeros de la serie son:\n', tmp)
for i = 1:k
    fprintf('%d ', v(i))
end

fprintf('\nEl promedio es: %.2f\n', prom)