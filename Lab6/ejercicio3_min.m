clc

% Cantidad de elementos definida
n = 10;

% Inicializamos vector
vector = zeros(10, 1);

for k = 1:n
    fprintf('Ingrese elemento %d: ', k);
    vector(k) = input('');
end

fprintf('Su vector ingresado es: ');
for k = 1:n
    fprintf('%d ', vector(k));
end
fprintf('\n');

for i = 1:n
    min = i;    
    % Buscamos la posicion del menor elemento
    for j = i+1:n
        if vector(j) < vector(min)
            min = j;
        end
    end
    % Cambiamos elementos
    tmp = vector(i);
    vector(i) = vector(min);
    vector(min) = tmp;
end

fprintf('Su vector ordenado es: ');
for k = 1:n
    fprintf('%d ', vector(k));
end
fprintf('\n');