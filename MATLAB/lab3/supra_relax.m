function x = supra_relax(A, b, x0, omega, iter)

x = x0;

D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;

for k = 1 : iter

    x = inv(omega * L + D) * ((1 - omega) * D * x - omega * U * x) + omega * inv(D + omega * L) * b;

end