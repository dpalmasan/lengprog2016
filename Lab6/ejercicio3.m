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
    for j = (i+1):n
        if vector(j) < vector(i)
            tmp = vector(i);
            vector(i) = vector(j);
            vector(j) = tmp;
        end
    end
end

fprintf('Su vector ordenado es: ');
for k = 1:n
    fprintf('%d ', vector(k));
end
fprintf('\n');