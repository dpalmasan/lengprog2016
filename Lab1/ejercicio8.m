clc

m = input('Ingrese su masa en [kg]: ');
h = input('Ingrese su altura en [m]: ');

IMC = m / h^2;

if IMC > 25
    disp('Ud. esta en sobrepeso')
elseif IMC < 18
    disp('Ud. esta desnutrido')
else
    disp('Ud. esta en condiciones normales')
end