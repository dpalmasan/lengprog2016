clc

% Una baraja de 52 cartas enumeradas de 1 al 52
baraja = 1:52;

fprintf('-----------------------------\n')
fprintf('Mazo Ordenado\n')
fprintf('-----------------------------\n')
% Imprimir mazo sin barajar
for i = 1:52
    fprintf('%2d ', baraja(i))
end
fprintf('\n');

% Algoritmo para barajar cartas
n = length(baraja);
for k = n:-1:1
    az = randi(k, 1);
    
    tmp = baraja(az);
    baraja(az) = baraja(k);
    baraja(k) = tmp;
end

fprintf('-----------------------------\n')
fprintf('Mazo Barajado\n')
fprintf('-----------------------------\n')
% Imprimir mazo barajado
for i = 1:52
    fprintf('%2d ', baraja(i))
end
fprintf('\n');