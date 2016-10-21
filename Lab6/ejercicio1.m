clc

% Cantidad de elementos definida
n = 10;

% Inicializamos vector
vector = zeros(10, 1);

for k = 1:n
    fprintf('Ingrese elemento %d: ', k);
    vector(k) = input('');
end

mayores = 0;
for k = 1:n
    if vector(k) > 10
        mayores = mayores + 1;
    end
end

fprintf('Hay %d elementos mayores que 10.\n', mayores);