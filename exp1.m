function[result] = exp1(x)
i = 0;
result = 0;
last = 1; %in order to make last not equal to result at first loop
while last ~= result
    last = result;
    result = result + x^i/factorial(i);
    i = i + 1;
end
