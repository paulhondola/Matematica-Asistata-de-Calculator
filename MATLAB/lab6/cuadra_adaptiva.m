function int = cuadra_adaptiva(f, a, b, tol)

mijloc = (a + b) / 2;

S1 = (f(a) + f(b)) * (b - a) / 2;
S2 = (f(a) - f(mijloc)) * (mijloc - a) / 2 + (f(mijloc) + f(b)) * (b - mijloc) / 2;

if abs(S1 - S2) < tol
    int = S2;
else
    
    int = cuadra_adaptiva(f, a, mijloc, tol / 2) + cuadra_adaptiva(f, mijloc, cuadra_adaptiva, tol / 2);

end