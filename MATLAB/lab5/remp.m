function [x, norma2, remp_x] = remp(A, b)
%Ax = b
% A' * A * x = A' * b

x = (A' * A) \ (A' * b);

sol = b - A * x;

norma2 = norm(sol);

remp_x = norma2 / sqrt(length(norma2));