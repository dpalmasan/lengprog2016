% Asumiremos que el usuario ingresa un valor de n >= 0

n = input('Ingrese un valor de n: ');

% Si usuario ingresa 0 o 1 se muestran los casos base
if n == 0
    disp(0)
elseif n == 1
    disp(1)
else
    % Para calcular cualquier elemento de la sucesion se requieren los 2 anteriores
    f0 = 0;
    f1 = 1;
    i = 2;
    while i <= n
        fn = f0 + f1;
        f0 = f1;
        f1 = fn;
        i = i + 1;
    end
    disp(fn) 
end