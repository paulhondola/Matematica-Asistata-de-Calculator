function rez = simpson(f, a, b, m)

% seteaza functia
% integral(f, x0, x1) - capetele integralei

% m -> PANELURI (intervale)
% a, b -> interval

rez = 0;

h = (b - a) / m;

rez = y(1) + y(2 * m);

for i = 2 : m - 1

    y(2 * i - 1) = f(a + (i  - 1) * h);

    y(2 * i) = f(a + (i - 1) * h);

    rez = rez + 4 * y(2 * i + 1);

    rez = rez + 2 * y(2 * i);

    end

end

rez = (h / 3) * rez;
