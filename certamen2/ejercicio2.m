clear all
clc

% Se hara sin inicializar vector de salida, sin embargo es facil modificar
% el codigo para la inicializacion ;)

v = input('Ingrese un vector: ');

prom = mean(v);

k = 1;
n = length(v);
for i = 1:n
    if v(i) <= prom
        w(k) = v(i);
        k = k + 1;
    end
end

disp(w)