clear all
clc

% Esta solucion termina unicamente si el usuario ingresa un 0. Acepta
% numeros negativos.

% Ingresar primer valor de n
n = input('Ingrese un valor: ');

% Inicializar
max = n;
pos = 1;
k = 1;

% Iterar hasta que se ingrese un 0
while n ~= 0
    % Si se encuentra un maximo mayor que el actual se reemplaza y tambien
    % se guarda su posicion
    if n > max
        max = n;
        pos = k;
    end
    
    % Se actualiza el valor de k
    k = k + 1;
    n = input('Ingrese un valor: ');
end

% Mostrar maximo y su posicion
disp(max)
disp(pos)