function [q, r] = qr_fact(A)
n = length(A);

for j = 1 : n

    y = A(:,  j);
    
    for i = 1 : (j - 1)

           r(i, j) = q(:, i)' * A(:, j);
           y = y - r(i, j) * q(:, i)

    end

    r(j, j) = norm(y);
    q(:, j) = y / r(j, j);

end
