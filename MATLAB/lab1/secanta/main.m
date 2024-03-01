function f = main(x)

arr(1 : 10) = 0;

arr(1) = functie(0);
arr(2) = functie(1);

fprintf('%d -> %8.5f\n', 1, arr(1));
fprintf('%d -> %8.5f\n', 2, arr(2));

for i = 1 : 10
    
    arr(i + 2) = arr(i + 1) - ((functie(arr(i + 1)) * (arr(i + 1) - arr(i))) / (functie(arr(i + 1)) - functie(arr(i))));

    fprintf('%d -> %8.5f\n', i, arr(i + 2));

end