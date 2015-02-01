
fprintf('k               x              relative_error\n');
fprintf('------------------------------------------------------\n');
x_sol = [-1; 2];
for k = 1: 10
    r = 10^((-2)*k);
    L1 = [1, 0; 1/r, 1];
    U1 = [r, 1; 0, 1-1/r];
    b = [2-r; 1];
    y = L1\b;
    x = U1\y;
    rError = norm(x_sol - x, Inf) / norm(x_sol, Inf);
    fprintf('%2.1d %15.5d %6.3d %15.3d\n', k, x, rError);
end
fprintf('-------------------------------------------------------\n');