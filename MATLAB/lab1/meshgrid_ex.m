[x, y] = meshgrid(-1:0.1:1, -2:0.1:2);

z = sin(x.^2 + y.^2);

surf(x, y, z)