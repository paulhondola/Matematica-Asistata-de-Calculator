%% 3. Aplicaţi 10 paşi ai iteraţiei de punct fix pentru a determina soluţia ecuaţiei 
% x5 +x−1 = 0,
% cu valoarea iniţială 0.8. 0.755250803461252

function root = problema3(f, init, iter)

x = init;

for i = 1: iter
    fprintf('%d -> %f\n', i, x);
    x = f(x);
end

root = x;