clc

% Tema estetico (se saca al ojo)
fprintf('\t');
for i = 1:12
    fprintf('%3d ', i),
end

% Se saca al ojo
fprintf('\n\t-----------------------------------------------');

for i = 1:12
    fprintf('\n%3d|', i)
    for j = 1:12
        fprintf('%3d ', i*j);
    end
end
fprintf('\n')