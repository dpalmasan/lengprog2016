function s = suma_perimetral(A)
% Lab 7 - Ejercicio 3
% Dada una matriz A, suma los elementos en el perimetro de A.

% Extraer fila 1 y ultima fila y sumarlas (vectorialmente)
filas = A(1, :) + A(end, :);

% Extraer columna 1 y ultima columna sin el primer ni ultimo elemento
colum = A(2:end-1, 1) + A(2:end-1, end);

% Suma perimetral (sumar elementos de vectores usando sum)
s = sum(filas) + sum(colum);