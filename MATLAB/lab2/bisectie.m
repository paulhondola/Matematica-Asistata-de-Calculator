function xc = bisectie(f, a, b, TOL)

fa = f(a);
fb = f(b);

while((b - a) / 2 > TOL)
    c = (a + b) / 2;
    fc = f(c);

    if(fc == 0)
        break;
    end

    if(sign(fa) * sign(fc) < 0)
            b = c;
            fb = fc;
    else
            a = c;
            fa = fc;
    end

end

xc = c;