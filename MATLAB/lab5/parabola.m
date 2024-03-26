function [c, remp] = dreapta(x0, y0)

A(:, 1) = ones(length(x0), 1);

A(:, 2) = x0;

A(:, 3) = x0 .^ 2;

b = y0;

c = (A' * A) \ (A' * b);

sol = c(1,:) + c(2,:) .* A(:,2) + c(3, :) .* A(:, 3);

err = b - sol;

remp = norm(err) / sqrt(length(err));