% Variables utilizadas para guardar puntajes de jugadores
ptje_j1 = 0;
ptje_j2 = 0;

% Utilizada para repetir o cancelar juegos
jugar_nuevamente = 1;

while jugar_nuevamente == 1
    % Codigo reciclado del lab 2
    disp('Ingrese 0 - piedra, 1 - papel, 2 - tijera')
    j1 = input('Jugador 1 Ingrese su jugada: ');
    j2 = input('Jugador 2 Ingrese su jugada: ');
    
    resultado = mod(j1 - j2 + 3, 3);
    
    if resultado == 1
        disp('Jugador 1 gana')
        ptje_j1 = ptje_j1 + 1;
    elseif resultado == 2
        disp('Jugador 2 gana')
        ptje_j2 = ptje_j2 + 1;
    else
        disp('Empate')
    end
    jugar_nuevamente = input('Jugar otra vez? (1 - si, 0 - no)');
end

disp('Jugador 1:')
disp(ptje_j1)
disp('Jugador 2:')
disp(ptje_j2)

if ptje_j1 > ptje_j2
    disp('Jugador 1 gana')
elseif ptje_j2 > ptje_j1
    disp('Jugador 2 gana')
else
    disp('Empate')
end