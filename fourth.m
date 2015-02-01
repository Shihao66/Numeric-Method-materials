x_0 = 2.1;
prev_error = abs(x_0-2);
i = 1;
fprintf(' i              error               rate of convergence \n');
fprintf('------------------------------------------------------------\n');
while((i < 10) && (prev_error > 1e-12))
    x_0 = ((x_0)^2-2)/(2*x_0-3);
    error = abs(x_0-2);
    convergence = error/prev_error;
    prev_error = error;
    fprintf('%5d, %5.10d, %5.10d\n',i,error, convergence);
    i = i + 1;
end