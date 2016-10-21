clc

% Cantidad de elementos definida
n = 10;

% Inicializamos vector
vector = zeros(10, 1);

for k = 1:n
    fprintf('Ingrese elemento %d: ', k);
    vector(k) = input('');
end

v = input('Ingrese un valor: ');

encontrado = 0;
for k = 1:n
    if vector(k) == v
        encontrado = 1;
        break;
    end
end

if encontrado == 1
    fprintf('El valor %d se encuentra en el vector.\n', v)
else
    fprintf('No se encontraron coincidencias.\n');
end