fprintf(' x             exp1            relativeError\n');
for x = -25:25
    ex = exp1(x);
    relative = (exp1(x)-exp(x))/exp(x);
    fprintf('%2.3d %15.3d %26.15d\n', x, ex, relative);
end
