% returneaza vector cu aproximari
% pt a afla erorile
% f = @(x) sin(x) - cos(x)
% syms y
% fsym  = sin(y) - cos(y)
% derivsym = matlabFunction(diff(fsym)
% eroare = pb1(f, 0, 12) - derivsym(0)

function y = dif3pct(f, x, n)

for i = 1 : n

    h = 10^(-i);

    y(i) = (f(x + h)- f(x - h)) / (2 * h);

end