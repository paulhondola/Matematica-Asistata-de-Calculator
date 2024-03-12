function c = newtondd(x, y, n)

for j = 1 : n

    v(j, 1) = y(j);

end

for i  = 2 : n
    for j = 1 : (n + 1 - i)
        v(j, i) = (v(j + 1, i - 1) - v(j, i - 1)) / (x(j + i - 1) - x(j));
    end
end

for i = 1 : n
    c(i) = v(1, i);
end 

% y = nested(2, c, x, x0)
% c - rez
% x - 0:0.01:4
% x0
% plot(x0. y0, 'o', x, y)

f = @(x) exp(x^2)

f =

  function_handle with value:

    @(x)exp(x^2)

f(1)

ans =

   2.718281828459045

ans2 = nested(3, c, f(0.82), x2)

ans2 =

   0.418249036358753

f(0.82)

ans =

   1.958933122914215

c = newtondd(x2, y2, 5)

c =

   1.433329000000000   1.989870000000001   3.258899999999984   3.680666666666721   4.000416666666682

nest = nested(4, c, 0.82, x2)

nest =

   1.958909774400000

final = f(0.82) - nest

final =

     2.334851421470496e-05
