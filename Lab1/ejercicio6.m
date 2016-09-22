clc

% NOTA: Para este ejercicio asumiremos que MATLAB no puede representar
% numeros complejos, solo con fines didacticos, pues MATLAB puede resolver
% este problema de forma sencilla sin utilizar condiciones.
a = input('Ingrese a: ');
b = input('Ingrese b: ');
c = input('Ingrese c: ');

% Calculamos discriminante
D = b^2 - 4*a*c;

% Si hay soluciones reales
if D >= 0
    disp('Soluciones reales')
    x1 = (-b + sqrt(D))/(2*a);
    x2 = (-b - sqrt(D))/(2*a);
else
    % En caso de haber raices complejas, calculamos la parte real y la
    % parte imaginaria
    disp('Soluciones Complejas, se muestra parte real e imaginaria')
    x1 = -b/(2*a);
    x2 = sqrt(-D)/(2*a);
end

% Se muestran en pantalla los valores calculados
disp(x1);
disp(x2);
    