
fprintf('k               x              relative_error\n');
fprintf('------------------------------------------------------\n');
x_sol = [-1; 2];
for k = 1: 10
    r = 10^((-2)*k);
    P2 = [0, 1; 1, 0];
    L2 = [1, 0; r, 1];
    U2 = [1, 1; 0, 1-r];
    b = [2-r; 1];
    
    b_curly = P2 * b;
    y = L2 \ b_curly;
    x = U2 \ y;
    rError = norm(x_sol - x, Inf) / norm(x_sol, Inf);
    fprintf('%2.1d %15.5d %6.3d %15.3d\n', k, x, rError);
end
fprintf('-------------------------------------------------------\n');