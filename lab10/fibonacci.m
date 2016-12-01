function y = fibonacci(n)
% INSERTE LOGICA DE LA FUNCION

N = length(n);
y = zeros(N, 1);

for k = 1:N
    
    if n(k) == 0
        fn = 0;
    elseif n(k) == 1
        fn = 1;
    else
        f0 = 0;
        f1 = 1;
        for i = 2:n(k)
            fn = f0 + f1;
            f0 = f1;
            f1= fn;
        end
    end
    y(k) = fn;
end
end