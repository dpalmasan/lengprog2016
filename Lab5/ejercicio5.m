clc

% Calculo inicial
k = 1;
sum = 1/9;
pi_est = sqrt(sum*16 + 8);

% Iterar hasta encontrar la precision deseada
while abs(pi - pi_est) > 1e-12;
    k = k + 1;
    sum = sum + 1/((2*k - 1)^2*(2*k + 1)^2);
    pi_est = sqrt(sum*16 + 8);
end
disp(pi_est);
disp(k)

sum = 0;
for k = 1:100
    sum = sum + 1/((2*k - 1)^2*(2*k + 1)^2);
end

pi_est = sqrt(sum*16 + 8);
disp(pi_est)
disp(abs(pi - pi_est))

