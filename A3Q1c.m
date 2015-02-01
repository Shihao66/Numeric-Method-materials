fprintf('k               x              relative_error          residual\n');
fprintf('------------------------------------------------------\n');
x_sol = [-1; 2];
for k = 1: 10
    r = 10^((-2)*k);
    L1 = [1, 0; 1/r, 1];
    U1 = [r, 1; 0, 1-1/r];
    b = [2-r; 1];
    y = L1 \ b;
    x_hat = U1 \ y;
    A = [r, 1; 1, 1];
    
    r0 = b - A * x_hat;
    z = L1 \ r0;
    e = U1 \ z;
    x_improved = x_hat + e;
    rError = norm(x_sol - x_improved, Inf) / norm(x_sol, Inf);
    residual = b - A * x_improved;
    fprintf('%1.0d %15.5d %6.3d %15.3d %15.3d\n', k, x_hat, rError, residual);
end
fprintf('-------------------------------------------------------\n');