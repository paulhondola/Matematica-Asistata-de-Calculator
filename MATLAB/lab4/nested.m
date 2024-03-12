function y = nested(d, c, x, b)

y = c(d + 1);

for i = d:-1:1
    y = y .* (x-b(i)) + c(i);
end