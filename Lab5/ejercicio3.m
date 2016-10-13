% Productos
manzanas = 40;
manzanas_p = 150;
pera = 8;
pera_p = 200;
melon = 10;
melon_p = 950;
platano = 20;
platano_p = 100;
manzana_v = 51;
manzana_v_p = 170;

opc = 1;

total_boleta = 0;
while opc ~= 0
    clc
    fprintf('------------------------------\n');
    fprintf('Tienda de Frutas\n');
    fprintf('------------------------------\n\n\n');
    
    fprintf('1. \tManzana\t\t\t\t$%3d \t\t%3d\n', manzanas_p, manzanas);
    fprintf('2. \tPera\t\t\t\t$%3d \t\t%3d\n', pera_p, pera);
    fprintf('3. \tMelon\t\t\t\t$%3d \t\t%3d\n', melon_p, melon);
    fprintf('4. \tPlatano\t\t\t\t$%3d \t\t%3d\n', platano_p, platano);
    fprintf('5. \tManzana Verde\t\t$%3d \t\t%3d\n', manzana_v_p, manzana_v);
    fprintf('0. \tSalir\n\n');
    
    opc = input('Ingrese una opcion: ');
    if opc ~= 0
        cantidad = input('Ingrese cantidad: ');
        if opc == 1
            if cantidad > manzanas
                fprintf('No hay esa cantidad de manzanas!\n');
                pause(2);
            else
                check = input('Esta seguro? (0. Si / 1. No): ');
                if check == 0
                    total_boleta = total_boleta + cantidad*manzanas_p;
                    manzanas = manzanas - cantidad;
                end
            end
        elseif opc == 2
            if cantidad > pera
                fprintf('No hay esa cantidad de peras!\n');
                pause(2);
            else
                check = input('Esta seguro? (0. Si / 1. No)');
                if check == 0
                    total_boleta = total_boleta + cantidad*pera_p;
                    pera = pera - cantidad;
                end
            end
        elseif opc == 3
            if cantidad > melon
                fprintf('No hay esa cantidad de melones!\n');
                pause(2);
            else
                check = input('Esta seguro? (0. Si / 1. No): ');
                if check == 0
                    total_boleta = total_boleta + cantidad*melon_p;
                    melon = melon - cantidad;
                end
            end
        elseif opc == 4
            if cantidad > platano
                fprintf('No hay esa cantidad de platanos!\n');
                pause(2);
            else
                check = input('Esta seguro? (0. Si / 1. No): ');
                if check == 0
                    total_boleta = total_boleta + cantidad*platano_p;
                    platano = platano - cantidad;
                end
            end
        else
            if cantidad > manzana_v
                fprintf('No hay esa cantidad de manzanas verdes!\n');
                pause(2);
            else
                check = input('Esta seguro? (0. Si / 1. No): ');
                if check == 0
                    total_boleta = total_boleta + cantidad*manzana_v_p;
                    manzana_v = manzana_v - cantidad;
                end
            end
        end
    end
        
end

if total_boleta > 0
    fprintf('El total de su boleta es: $%d\n', total_boleta);
else
    fprintf('Ud. no ha comprado nada.\n');
end