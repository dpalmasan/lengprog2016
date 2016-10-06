clear all
close all
clc


% Variable de entrada (n indicara el numero de elementos)
n = input('Ingrese n: ');

% Inicializacion, k se utilizara como contador de iteraciones, p sera una
% variable arbitraria que se utilizara para mantener la suma. s se
% utilizara para mantener los numeros la serie
k = 0; 
p = 3;
s = 0;

while k < n
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
    
    % Aumentar numero de iteraciones.
    k = k + 1;
end