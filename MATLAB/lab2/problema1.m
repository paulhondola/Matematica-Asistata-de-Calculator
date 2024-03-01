%%  Folosiţi metoda bisecţiei pentru a localiza toate rădăcinile ecuaţiei 2x3 − 6x − 1 = 0. 
% Reprezentaţi grafic funcţia utilizând ezplot şi identificaţi trei intervale de lungime 1 care conţin o rădăcină. 
% Găsiţi apoi fiecare dintre cele trei rădăcini cu şase zecimale exacte.
 %        -1.641783237457275
  %       -0.168254375457764
  %       1.810038089752197

function root = problema1(f, a, b, TOL)

fa = f(a);
fb = f(b);

if sign(fa) * sign(fb) > 0
    error('Interval Invalid!');
end

while (b - a) / 2 > TOL
    
    c = (a  + b) / 2;
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