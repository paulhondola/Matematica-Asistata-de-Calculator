function x = gauss_seidel(A, b, x0, iter)

x = x0;

D = diag(diag(A));
U = triu(A) - D;
L = tril(A) - D;

for k = 1 : iter

    x = inv(D + L) * (b - U * x);

end