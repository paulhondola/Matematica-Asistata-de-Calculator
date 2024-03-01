function xc = iteratie(f, init, iter)

x = init;

fprintf('%d -> %f\n', 1, x);
for i = 1 : iter
    x = f(x);
    fprintf('%d -> %f\n', i, x);
end

xc = x;