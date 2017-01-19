function C = dif_conj(A, B)
% Calcula la diferencia de conjuntos A - B. Por ejemplo, si se llama a la
% funcion dif_conj([3, 6, 2, 1, 5, 5], [2, 4, 6]), retorna [1, 3, 5].

% Se asume A y B vectores, se calculan los largos.
n1 = length(A);
n2 = length(B);

% Inicializacion
C = zeros(n1 + n2);
k = 1;

for i = 1:n1
    notInB = true;
    % Para cada elemento de A, se chequea si esta o no en B
    for j = 1:n2
        if B(j) == A(i)
            notInB = false;
        end
    end
    
    % Si el elemento de A, no estaba en B, entonces se agrega a C
    if notInB
        C(k) = A(i);
        k = k + 1;
    end
end

% Se retorna C, sin elementos repetidos y ordenado en forma ascendente
C = unique(sort(C(1:(k-1))));

end