c1 + c2 * t = y

A' * A * c = A' * b

c = (A' * A) \ (A' * b)

rasp = c(1,:) + c(2,:) .* A(:,2)

err = b - rasp

remp = norm(err) / sqrt(length(b))