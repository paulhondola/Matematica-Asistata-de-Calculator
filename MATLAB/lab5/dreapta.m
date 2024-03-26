% c1 + c2 * t = y

% A' * A * c = A' * b

% c = (A' * A) \ (A' * b)

% rasp = c(1,:) + c(2,:) .* A(:,2)

% err = b - rasp

% remp = norm(err) / sqrt(length(b))

function [c, remp] = dreapta(x0, y0)

A(:, 1) = ones(length(x0), 1);

A(:, 2) = x0;

b = y0;

c = (A' * A) \ (A' * b);

sol = c(1,:) + c(2,:) .* A(:,2);

err = b - sol;

remp = norm(err) / sqrt(length(err));