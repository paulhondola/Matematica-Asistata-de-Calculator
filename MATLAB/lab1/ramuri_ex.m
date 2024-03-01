function y = ramuri_ex(x)

p1 = (x <= -1);

p2 = (x>-1 && x<=0);

p3 = (x > 0);

r1 = (x + 2);
r2 = (1);
r3 = cos(x);

y = p1 .* r1 + p2 .* r2 + p3 .* r3;