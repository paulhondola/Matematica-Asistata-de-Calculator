function rez = trapez_compus(f, a, b, m)

% seteaza functia
% integral(f, x0, x1) - capetele integralei

% m -> PANELURI (intervale)
% a, b -> interval

rez = 0;

h = (b - a) / m;

rez = y(1) + y(m);

for i = 2 : m - 1

    y(i) = f(a + (i  - 1) * h);

    rez = rez + 2 * y(i);

    end

end

rez = (h / 3) * rez;
