clear all
clc

% Pedir al usuario que ingrese palabras (entre apostrofes), si se requiere
% leer como string, entonces poner input(''. 's') como dice la
% documentacion ;)
w = input('Ingrese palabra: ');

n = length(w);

vocales = 0;
for k = 1:n
    % Testear si es vocal minuscula
    es_vocal = w(k) == 'a' || w(k) == 'e' || w(k) == 'i'  ...
        || w(k) == 'o' || w(k) == 'u';
    
    % Testear si es vocal mayuscula
    es_vocal_m = w(k) == 'A' || w(k) == 'E' || w(k) == 'I'  ...
        || w(k) == 'O' || w(k) == 'U';
    
    if es_vocal || es_vocal_m
        vocales = vocales + 1;
    end
end

% Imprimir en consola vocales y palabra
fprintf('Ud. Ingreso %s, y tiene %d vocales.\n', w, vocales)