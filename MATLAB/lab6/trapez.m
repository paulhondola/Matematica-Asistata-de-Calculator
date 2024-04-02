function int = trapez(f, x0, x1)

y0 = f(x0);
y1 = f(x1);

h = x1 - x0;

int = h / 2 * (y0 + y1);