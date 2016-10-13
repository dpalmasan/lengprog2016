clc

n = input('Ingrese un numero para calcular su factorial: ');

if n < 0
    disp('El numero debe ser positivo')
else
    fact = 1;
    for k = 2:n
        fact = fact*k;
    end
    fprintf('Su factorial es %d.\n', fact);
end