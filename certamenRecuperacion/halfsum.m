function s = halfsum(A)

s = 0;

[m, n] = size(A);
for i = 1:m
    for j = i:n
        s = s + A(m - i + 1, j);
    end
end
end