fprintf(' x             exp2            relativeError\n');
for x = -25:25
    ex = exp2(x);
    relative = (exp2(x)-exp(x))/exp(x);
    fprintf('%2.3d %15.3d %26.15d\n', x, ex, relative);
end
