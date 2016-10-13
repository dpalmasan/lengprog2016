clc

for x = -4:4
y = 1;
sum = x;
n = 1;

while y + sum ~= y
    y = y + sum;
    n = n + 1;
    sum = x*sum/n;
end

fprintf('x = %3d \t e^x = %9.6f\n', x, y);
end