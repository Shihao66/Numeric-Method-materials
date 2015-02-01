R = 0.082054;
a = 3.592;
b = 0.04267;
T = 300;
p = [1, 10, 100];
fprintf('------------------------------------------------------\n');
fprintf('n   v0             result            relative-error\n');
for n = 1 : 3
	func = @(v) (p(i) + a/v^2)*(v - b) - R*T;
	v0 = R*T/p;
	v1 = v0 + b; %func(v1) is positive
	v2 = b / 2; %func(v2) is negative
	result = fzero(func, [v1 v2]); %use zero finder to compute the specific v
	r_error = (result - v0) / result;
	fprintf('%5d %5.10d %5.10d %5.10d\n', n, v0, result, r_error);
end
fprintf('------------------------------------------------------\n');
