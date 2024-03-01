function root = secanta(f, x0, x1, iter, TOL)

x = x1;

for i = 1 : iter
    if (f(x0) - f(x1)) >TOL
    x = x1 - (f(x1) * (x1 - x0)) / (f(x0) - f(x1));
    x0 = x1;
    x1 = x;
    end
end

root = x;