clc

% Crear mazo con cartas del 1 al 10
baraja = 1:10;

% Baraja mazo
n = length(baraja);
for k = n:-1:1
    az = randi(k, 1);
    
    tmp = baraja(az);
    baraja(az) = baraja(k);
    baraja(k) = tmp;
end

% Dibujar Cartas (Solo con propositos de estetica, no es necesario)
for k = 1:10
    fprintf('------- ');
end
fprintf('\n')
for k = 1:10
    fprintf('|     | ');
end
fprintf('\n')
for k = 1:10
    fprintf('|  ?  | ');
end
fprintf('\n')
for k = 1:10
    fprintf('|     | ');
end
fprintf('\n')
for k = 1:10
    fprintf('------- ');
end
fprintf('\n')

% Pedir al usuario que escoja una carta
jugador = input('Escoja una carta (1 - 10): ');

% Animacion de la computadora "pensando" (no es necesario, pero es
% entretenido ;)
fprintf('Computadora esta pensando su carta');
pause(0.5);

for k = 1:10
    fprintf('.')
    pause(0.5)
end

% Jugada de la computadora
computadora = randi(10, 1);

% Mostrar resultados (Nuevamente, una cosa estetica)
fprintf('\n\n----------------------------------------------\n')
fprintf('Ud obtuvo: %d\nComputadora Obtuvo: %d\n', ...
    baraja(jugador), baraja(computadora));
fprintf('----------------------------------------------\n')

if baraja(jugador) > baraja(computadora)
    fprintf('GANASTE!!\n');
elseif baraja(jugador) < baraja(computadora)
    fprintf('Perdiste...\n');
else
    fprintf('empate...\n');
end

