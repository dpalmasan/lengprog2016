clear all
close all
clc

% Solucion, ejercicio 3 del certamen utilizando ciclo for.
n = input('Ingrese n: ');

p = 3;
s = 0;

for k = 1:n
    % Mostrar elemento de la serie
    disp(s)
    
    % Sumar valor de p
    s = s + p;
    
    % Cambiar valor de p para mantener la serie.
    if p == 3
        p = 2;
    elseif p == 2
        p = -1;
    else
        p = 3;
    end
end