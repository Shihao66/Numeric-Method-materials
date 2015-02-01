relativeError = 0;
n = 0;
H = 0;
x = 0;
x_hat = 0;
while relativeError < 1
    n = n + 1;
    H = hilb(n);
    x = ones(n, 1);
    b = H * x;
    x_hat = H \ b;
    relativeError = norm(x - x_hat, Inf) / norm(x, Inf);
    fprintf('%2.3d %26.15d\n', n, relativeError);
end