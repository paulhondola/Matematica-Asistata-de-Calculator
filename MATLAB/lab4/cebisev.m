function x = cebisev(a, b, n)

for i = 1 : n
    x(i) = (b + a) / 2 + (b - a) / 2 * cos((2 * i - 1) * pi / 2 / n);
end