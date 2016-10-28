clear all
clc

% Se hara sin inicializar vector, solo agregando elementos

% Inicializacion
k = 1;

% Vector de salida
x = [];

% Leer valores hasta que se ingrese CERO o algo menor que CERO
while true
    v = input('Ingrese un valor: ');
    if v <= 0
        break;
    else
        x(k) = v;
        k = k + 1;
    end
end

% Calcular largo del vector
n = length(x);

% Si el usuario ingreso algun numero mayor que 0, se procesa el vector
if n > 0
    fprintf('El vector ingresado es: ');
    disp(x)

    min = x(1);
    max = x(1);
    pos_min = 1;
    pos_max = 1;
    for i = 2:n
        if x(i) > max
            max = x(i);
            pos_max = i;
        end
        if x(i) < min
            min = x(i);
            pos_min = i;
        end
    end
    fprintf('El maximo es %d y se encuentra en la posicion %d.\n', max, pos_max)
    fprintf('El minimo es %d y se encuentra en la posicion %d.\n', min, pos_min)
else
    fprintf('Ud. No ingreso numero mayor que 0.\n')
end