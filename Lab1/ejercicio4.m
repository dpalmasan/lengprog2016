clc

% Este ejercicio se hara con 3 numeros solamente, para simplificar
a = input('Ingrese un numero: ');
b = input('Ingrese otro numero: ');
c = input('Ingrese otro numero: ');

disp('El mayor numero ingresado es:')
if a > b
    if a > c
        disp(a)
    else
        disp(c)
    end
else
    if b > c
        disp(b)
    else
        disp(c)
    end
end

% Notar que la logica es la misma, solo se debe cambiar el > por un <
disp('El menor numero ingresado es:')
if a < b
    if a < c
        disp(a)
    else
        disp(c)
    end
else
    if b < c
        disp(b)
    else
        disp(c)
    end
end
