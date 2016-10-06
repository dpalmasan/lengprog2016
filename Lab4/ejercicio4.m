clear all
close all
clc

% Ingresar n que es la entrada
n = input('Ingrese un valor: ');

% Inicializar contador de elementos y acumulador de la suma
k = 1;
s = 0;

% Sumar mientras no se supere el numero ingresado
while s + k <= n
    s = s + k;
    k = k + 1;
end

% Cuando termina el ciclo termina con un valor mas contado, restandole 1 se
% corrige.
k = k - 1;

% Mostrar salidas
disp(s)
disp(k)