clear all
clc

% Valores que se intersectan
interseccion = [];
k = 1;

% Leer vectores
v = input('Ingrese primer vector: '); 
w = input('Ingrese segundo vector: ');

% Largo de los vectores
n1 = length(v);
n2 = length(w);

% Haremos solucion carretera pero simple de pensar
for i = 1:n1
    for j = 1:n2
        % Buscar elementos coincidentes
        if v(i) == w(j)
            n = length(interseccion);
            dentro = false;
            
            % Buscamos si el elemento que coincide ya esta en nuestro
            % vector interseccion
            for ii = 1:n
                if v(i) == interseccion(ii)
                    dentro = true;
                    break;
                end
            end
            
            % Si no esta, lo agregamos al nuevo vector
            if ~dentro
                interseccion(k) = v(i);
                k = k + 1;
            end
        end
    end
end

fprintf('Los elementos que tienen en comun son: '); disp(interseccion)