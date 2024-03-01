function root = newton(f, df, init, iter)

x = init;

for i = 1 : iter

       x = x - f(x) / (df(x));

end

root = x;