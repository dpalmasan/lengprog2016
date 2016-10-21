clear all
close all
clc

n = 25000000;

% Sin inicializar (Mala forma de hacerlo)

tic
v = [];
for k = 1:n
    v(k) = k*k;
end
toc

% Inicializando (Forma correcta de hacerlo ;) )

tic
v = zeros(n, 1);
for k = 1:n
    v(k) = k*k;
end
toc

