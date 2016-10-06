clear all
clc

% Esta solucion asume que solo se ingresaran numeros positivos

% Inicializar
max = 0;
pos = 1;
k = 1;

% Ingresar primer valor de n
n = input('Ingrese un valor: ');

% Iterar hasta que se ingrese un 0 o un numero negativo
while n > 0
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