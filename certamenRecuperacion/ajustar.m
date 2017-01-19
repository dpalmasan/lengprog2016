function [c, d] = ajustar(a, b)

% Se asumiran vectores fila
n1 = length(a);
n2 = length(b);

c = a;
d = b;
if n1 < n2
    c = [zeros(1, n2 - n1), a];
else
    d = [zeros(1, n1 - n2), b];
end
end