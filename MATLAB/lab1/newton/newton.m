function main = newton(x)

arr(1 : 10) = 0;

arr(1) = x;
fprintf('%d -> %8.5f\n', 1, arr(1));
for i = 1 : 10
    
    f = functie1(arr(i));
    fd = functie1_deriv(arr(i));

    arr(i + 1) = arr(i) - (f / fd);

    fprintf('%d -> %8.5f\n', i, arr(i + 1));
end
