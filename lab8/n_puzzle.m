function n_puzzle(varargin)
% El juego del puzzle de las n-piezas. Las instrucciones estan dadas en la
% web de la ayudantia www.udec.cl/~dipalma. La idea del problema es repasar
% programacion en MATLAB e implementar este entretenido juego.
%
% Uso n_puzzle() o n_puzzle(n) o n_puzzle(n, sol)
% 
% Por defecto n = 3, pero puede ampliarse hasta 9, n debe ser un numero.
% sol es una entrada extra que utiliza un archivo con la solucion para
% instancias del puzzle con n = 3 y 4 y sirve para testear el juego.
% Se pide completar codigo marcado por TODO

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chequear errores en la entrada, NO TOCAR! No es relevante saber esto,
% solo usar con fines de aprender un poco mas de MATLAB
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global puzzle;
global n;

% Chequear que se llama al programa con la cantidad correcta de entradas
if nargin > 2
    error('Cantidad de argumentos incorrecta')
end

% Por defecto n es 3
n = 3;

% Si se ingresa un argumento, entonces se dara a n el valor de dicho
% argumento
if nargin >= 1
    input = varargin{1};
    if ~isscalar(input) || ~es_entero(input)
        error('La entrada debe ser un entero!')
    end
    
    n = varargin{1};
    if n < 3 || n > 9
        error('Entrada debe estar entre 0 y 9!')
    end    
end

% Si se ingresa un archivo con la solucion del puzzle
if nargin == 2
    k = 1;
    if exist(varargin{2}, 'file') ~= 2
        error('Archivo no encontrado!')
    end
    sol = load(varargin{2});
    steps = length(sol);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FIN CHEQUEO DE ERRORES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Inicializa el puzzle como una matriz de NxN
puzzle = zeros(n);

% Deja al puzzle en el estado inicial definido
initialize();

% Ciclo del juego (se realiza hasta que se gane)
while ~won()
    clc
    draw()
    if nargin == 2
        if ~move(sol(k)) || k > steps
            error('Utilizo un archivo erroneo');
        end
        k = k + 1;
    else
        % Leer entrada de usuario
        x = leer_input();

        % Mostrar mensaje en caso de que la movida sea ilegal
        if ~move(x)
            disp('Movida ilegal!')
        end
    end
    
    % Para propositos de animacion
    pause(0.5);
    
end

clc
draw()
disp('Felicidades por ganar!')
end

function v = es_entero(n)
% Retorna true si v es entero, false si no lo es
if ~isscalar(n)
    v = false; return;
end
v = rem(n, 1) == 0;
end

function n = leer_input()
% Lee entero por teclado. Se asegura de que el usuario ingrese
% especificamente un entero.

done = false;
while ~done
    try
        input_string = input('Ingrese tile a mover: ', 's');
        n = eval(input_string);
        if es_entero(n)
            done = true;
        else
            disp('Debe ingresar un numero entero!')
        end
    catch exception
        if strcmp(exception.identifier, 'MATLAB.UndefinedFunction') == 0
            disp('Debe ingresar un numero entero!')
        end
    end
end
end

function draw()
% Dibuja el puzzle en consola.

global n
global puzzle

% Generar linea separadora
line = repmat('=', 1, 3*n + 1);
fprintf('%s\n', line)
for i = 1:n
    fprintf('|');
    for j = 1:n
        if puzzle(i, j) ~= 0
            fprintf('%2d|', puzzle(i, j));
        else
            fprintf('%2c|', '_')
        end
    end
    fprintf('\n%s\n', line)
end
end

function initialize()
% Inicializa puzzle, en orden descendente. Si n es par, las ultimas dos
% celdas deberian intercambiarse
global n
global puzzle

max = n*n - 1;

for i = 1:n
    for j = 1:n
        puzzle(i, j) = max;
        max = max - 1;
    end
end

if mod(n, 2) == 0
    tmp = puzzle(n, n - 2);
    puzzle(n, n - 2) = puzzle(n, n - 1);
    puzzle(n, n - 1) = tmp;
end
end

function v = move(tile)
% Mueve un numero si este tiene adyacente el espacio libre. Retorna true si
% es posible mover el cuadrado, y false en caso de ser una movida ilegal

global puzzle;
global n;

% Se inicializa la posicion del tile deseado en 0, asi, si no se encuentra,
% significa que el jugador ingreso un numero "ilegal"
xpos = 0;
ypos = 0;

% Buscamos posicion del tile
for i = 1:n
    for j = 1:n
        if puzzle(i, j) == tile
            xpos = i;
            ypos = j;
        end
    end
end

% Verificamos si podemos hacer el movimiento
moved = false;
if xpos ~= 0 && tile ~= 0
    % Probar si se puede mover a la derecha
    if xpos > 1
        if puzzle(xpos - 1, ypos) == 0
            tmp = puzzle(xpos - 1, ypos);
            puzzle(xpos - 1, ypos) = puzzle(xpos, ypos);
            puzzle(xpos, ypos) = tmp;
            moved = true;
        end
    end
    
    % Probar si se puede mover a la izquierda
    if xpos < n
        if puzzle(xpos + 1, ypos) == 0
            tmp = puzzle(xpos + 1, ypos);
            puzzle(xpos + 1, ypos) = puzzle(xpos, ypos);
            puzzle(xpos, ypos) = tmp;
            moved = true;
        end
    end
    
    % Probar si se puede mover hacia arriba
    if ypos > 1
        if puzzle(xpos, ypos - 1) == 0
            tmp = puzzle(xpos, ypos - 1);
            puzzle(xpos, ypos - 1) = puzzle(xpos, ypos);
            puzzle(xpos, ypos) = tmp;
            moved = true;
        end
    end
    
    % Probar si se puede mover hacia abajo
    if ypos < n
        if puzzle(xpos, ypos + 1) == 0
            tmp = puzzle(xpos, ypos + 1);
            puzzle(xpos, ypos + 1) = puzzle(xpos, ypos);
            puzzle(xpos, ypos) = tmp;
            moved = true;
        end
    end
end

% moved sera true si se realizo el movimiento, false en caso contrario
v = moved;

end

function v = won()
% Retorna verdadero si el tablero esta en la configuracion objetivo, falso
% en caso contrario
global puzzle
global n

% La salida se inicializa como true
v = true;

% Variables usadas para poder contar en orden todos los tiles
start = 1;
max = n*n - 1;

% Recorremos la matriz
for i = 1:n
    for j = 1:n
        % Esta condicion extra es para contar la ultima casilla (que es 0)
        if start > max
            start = 0;
        end
        
        % Si encontramos un tile que no este ordenado, retornamos false
        if puzzle(i, j) ~= start
            v = false;
        end
        start = start + 1;
    end
end
end