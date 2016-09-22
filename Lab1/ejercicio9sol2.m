clc

% Esta es una solucion mas sofisiticada
% Leer jugadas de jugadores (se asume que jugadores ingresan 0, 1 o 2
disp('Ingrese 0 - piedra, 1 - papel, 2 - tijera')
j1 = input('Jugador 1 Ingrese su jugada: ');
j2 = input('Jugador 2 Ingrese su jugada: ');

% Un algoritmo basado en la estructura del juego piedra papel o  tijera.
% Queda como tarea, para los curiosos, averiguar por que funciona. Tambien
% averiguar que hace mod (ello se puede hacer poniendo en consola help mod.
resultado = mod(j1 - j2 + 3, 3);

if resultado == 1
    disp('Jugador 1 gana')
elseif resultado == 2
    disp('Jugador 2 gana')
else
    disp('Empate')
end

