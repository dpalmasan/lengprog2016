function v = ejercicio5(M)
% Casos de prueba:
% ejercicio5([1, 6, 0; 0, 0, 0;4, 0, 5])
% ejercicio5(magic(5))
[m, n] = size(M);

T = 0;
for i = 1:m
    T = T + ejercicio4(M(i, :));
end

v = T >= m*n/2;

end