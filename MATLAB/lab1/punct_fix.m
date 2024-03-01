function f = punct_fix(x)

arr(1:10) = 0;

arr(1)= x;
fprintf('%d -> %f\n', 1, arr(1));

for i = 2:10
    
    arr(i) = (1 - arr(i - 1)).^(1/3);
    fprintf('%d -> %f\n', i, arr(i));

end