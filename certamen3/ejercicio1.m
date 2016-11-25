clear all
close all
clc

% Se asume que el usuario ingresa como vector
v = input('Ingrese un vector: ');

n = length(v);

min = v(1);
max = v(1);
min_pos = 1;
max_pos = 1;

for i = 2:n
    if v(i) < min
        min = v(i);
        min_pos = i;
    end
    if v(i) > max
        max = v(i);
        max_pos = i;
    end
end

% Asumiendo vector de enteros...
fprintf('El minimo es %d, y se encuentra en %d\n', min, min_pos)
fprintf('El maximo es %d, y se encuentra en %d.\n', max, max_pos)