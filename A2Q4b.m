r = b - A * f;
boundOfRelativeError = cond(A, 1) * (norm(r, 1) / norm(b, 1));
fprintf('The upper bound of relative error is %15.15d\n', boundOfRelativeError);