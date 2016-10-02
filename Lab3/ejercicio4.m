a = input('Ingrese valor para calcular raiz: ');

x0 = a;
x1 = x0 - (x0^2 - a)/(2*x0);

while abs(x1 - x0) > 1e-6
    x0 = x1;
    x1 = x0 - (x0^2 - a)/(2*x0);
end

disp(x1)