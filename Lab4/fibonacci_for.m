% Asumiremos que el usuario ingresa un valor de n >= 0

n = input('Ingrese un valor de n: ');

% Si usuario ingresa 0 o 1 se muestran los casos base
if n == 0
    disp(0)
elseif n == 1
    disp(0)
    disp(1)
else
    disp(0)
    disp(1)
    % Para calcular cualquier elemento de la sucesion se requieren 
    % los 2 anteriores
    f0 = 0;
    f1 = 1;
    i = 2;
    
    % Se muestra hasta el n-esimo termino de la sucesion
    for i = 2:n
        fn = f0 + f1;
        f0 = f1;
        f1 = fn;
        disp(fn) 
    end
    
end