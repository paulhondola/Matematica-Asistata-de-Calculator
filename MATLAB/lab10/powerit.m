function [lambda,u]=powerit(A,x,k)

     for j=1:k
        u=x / norm(x);
        x=A * u;
        lambda=u' * x;
     end

u = x / norm(x);
end

% A = [1 3; 2 2];
% x = [-5:5];
% k = 10;
% [lambda,u]=powerit(A, x, k);