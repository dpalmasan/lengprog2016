clear all
close all
clc

% Entrada al programa
n = input('Ingrese n: ');

% El primer valor a sumar para el promedio sera el valor ingresado por
% usuario.
promedio = n;
k = 1;

while n ~= 1
    % Mostrar elemento de la serie
    disp(n)
    
    % Ver si numero es par
    if (-1)^n > 0
        n = n/2;
    else
        n = n*3 + 1;
    end
    
    % Acumular suma y conteo de elementos
    promedio = promedio + n;
    k = k + 1;
end
disp(1)

% Mostrar suma
disp(promedio)

% Calcular y mostrar promedio
promedio = promedio / k;
disp(promedio)