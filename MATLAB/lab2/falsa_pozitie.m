function root = falsa_pozitie(f, a, b, TOL)

fa = f(a);
fb = f(b);

while (b - a) / 2 > TOL
    
    c = (b * f(a) - a * f(b)) / (f(a) - f(b));
    fc = f(c);

    if fc == 0
            break;
    end
    
    if sign(fa) * sign(fc) < 0
        b = c;
        fb = fc;
    else
        a = c;
        fa = fc;
    end

end

root = c;