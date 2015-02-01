function[result] = exp2(x)
i = 0;
result = exp1(x);
if x < 0
    result = 1 / (exp1(-x));
end

