clc

% Inicializar tablero
tablero = zeros(9, 1);

% Variable utilizada para verificar quien gano (vale 0 si nadie ha ganado,
% 1 si gano el jugador 1, 2 si gano el jugador 2.
won = 0;

% Variable utilizada para saber de quien es el turno
turno_jugador = 1;

% Game loop (es donde se desarrolla el juego)
while won == 0
    clc
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Dibujar Tablero (NO MODIFICAR!!!)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    for i = 1:3
        for j = 1:3
            % Mapear de 2d a 1d
            idx = 3*(i - 1) + (j - 1) + 1;
            if tablero(idx) == 0
                fprintf('   ')
            elseif tablero(idx) == 1
                fprintf(' O ')
            else
                fprintf(' X ')
            end
            if j < 3
                fprintf('|')
            end
        end
        if i < 3
            fprintf('\n===========\n')
        else
            fprintf('\n')
        end
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % IMPLEMENTE AQUI LECTURA DE JUGADAS
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    if turno_jugador == 1
        valida = 0;
        
        while valida == 0
            jugada = input('J1: Ingrese posicion (1 - 9): ');
            if jugada < 1 || jugada > 9 || tablero(jugada) ~= 0
                fprintf('Jugada Invalida, intente nuevamente!\n');
            else
                valida = 1;
            end
        end
        tablero(jugada) = 1;
        turno_jugador = 2;
    else
        valida = 0;
        
        while valida == 0
            jugada = input('J2: Ingrese posicion (1 - 9): ');
            if jugada < 1 || jugada > 9 || tablero(jugada) ~= 0
                fprintf('Jugada Invalida, intente nuevamente!\n');
            else
                valida = 1;
            end
        end
        tablero(jugada) = 2;
        turno_jugador = 1;
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Implemente aqui condiciones de victoria
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % Chequear esquina superior izquierda
    if tablero(1) ~= 0
        if tablero(1) == tablero(2) && tablero(2) == tablero(3)
            won = tablero(1);
        end
        
        if tablero(1) == tablero(4) && tablero(4) == tablero(7)
            won = tablero(1);
        end
        
        if tablero(1) == tablero(5) && tablero(5) == tablero(9)
            won = tablero(1);
        end
    end
    
    % Chequear esquina superior derecha
    if tablero(3) ~= 0
        if tablero(3) == tablero(6) && tablero(6) == tablero(9)
            won = tablero(3);
        end
        
        if tablero(3) == tablero(5) && tablero(5) == tablero(7)
            won = tablero(3);
        end
    end
    
    % Chequear inferior
    if tablero(9) ~= 0
        if tablero(7) == tablero(8) && tablero(8) == tablero(9)
            won = tablero(9);
        end   
    end
    
    % Chequear cruz del centro
    if tablero(5) ~= 0
        if tablero(2) == tablero(5) && tablero(5) == tablero(8)
            won = tablero(5);
        end
        if tablero(4) == tablero(5) && tablero(5) == tablero(6)
            won = tablero(5);
        end
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Aqui verifique si el tablero esta lleno
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % Todas llenas
    ocupadas = 1;
    for k = 1:9
        if tablero(k) == 0
            ocupadas = 0;
            break;
        end
    end
    if ocupadas == 1
        break;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redibujar, con propositos de animacion (NO MODIFICAR!)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
for i = 1:3
    for j = 1:3
        idx = 3*(i - 1) + (j - 1) + 1;
        if tablero(idx) == 0
            fprintf('   ')
        elseif tablero(idx) == 1
            fprintf(' O ')
        else
            fprintf(' X ')
        end
        if j < 3
            fprintf('|')
        end
    end
    if i < 3
        fprintf('\n===========\n')
    else
        fprintf('\n')
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Muestre aqui el resultado del ganador
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if won ~= 0
    fprintf('Gano el jugador: %d\n', won);
else
    fprintf('Empate\n')
end