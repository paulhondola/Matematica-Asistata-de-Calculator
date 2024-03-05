function [RES, sol] = gauss(A, b)

n = length(A);

for j = 1 : (n-1)

    if A(j, j) == 0
        error('Zero pivot!')
    end
    
    for i = (j + 1) : n

        for k = j : n

            A(i,  k) = A(i, k) - (A(i, j) / A(j, j) * A(j, k));

        end

        b(i) = b(i) - (A(i, j) / A(j, j)) * b(j);

    end

end




for i = n : -1 : 1
 
    for j = (i + 1) : n

           b(i) = b(i) - (A(i, j) * sol(j));

    end

    sol(i) = b(i) / A(i, i);

end

RES = A;