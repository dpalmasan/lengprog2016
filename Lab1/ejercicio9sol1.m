clc

% Esta es la solucion carretera del problema
PIEDRA = 0;
PAPEL = 1;
TIJERA = 2;

% Leer jugadas de jugadores (se asume que jugadores ingresan 0, 1 o 2
disp('Ingrese 0 - piedra, 1 - papel, 2 - tijera')
j1 = input('Jugador 1 Ingrese su jugada: ');
j2 = input('Jugador 2 Ingrese su jugada: ');

if j1 == PIEDRA
    if j2 == PIEDRA
        disp('Empate')
    elseif j2 == PAPEL
        disp('Jugador 2 Gana')
    else
        disp('Jugador 1 Gana')
    end
elseif j1 == PAPEL
    if j2 == PIEDRA
        disp('Jugador 1 Gana')
    elseif j2 == PAPEL
        disp('Empate')
    else
        disp('Jugador 2 Gana')
    end
else
    if j2 == PIEDRA
        disp('Jugador 2 Gana')
    elseif j2 == PAPEL
        disp('Jugador 1 Gana')
    else
        disp('Empate')
    end
end
