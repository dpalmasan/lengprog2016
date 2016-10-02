C = input('Ingrese posicion del campanil: ');

% Se asumira que el usuario ingresara al menos 1 edificio
E = input('Ingrese Edificio: ');

% El primer valor ingresado sera el minimo ahora, 
% pues es el unico valor ingresado hasta ahora
dmin = abs(C - E);
Emin = E;

E = input('Ingrese Edificio: ');
while E ~= 0
    d = abs(C - E);
    if d < dmin
        dmin = d;
        Emin = E;
    end
    E = input('Ingrese Edificio: ');
end

disp('El edificio mas cercano se encuentra en:')
disp(Emin)