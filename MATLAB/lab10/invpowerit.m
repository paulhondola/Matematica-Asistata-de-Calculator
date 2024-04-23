function [lambda,u]=invpowerit(A,x, s, k)

As = A - s * eye(size(A));

     for j=1:k
        u=x / norm(x);
        x=As \ u;
        lambda=u' * x;
     end

     lambda = 1 / lambda + s;

u = x / norm(x);
end

% A = [1 3; 2 2];
% x = [-5:5];
% s = 3;
% k = 10;
% [lambda,u]=powerit(A, x, k);