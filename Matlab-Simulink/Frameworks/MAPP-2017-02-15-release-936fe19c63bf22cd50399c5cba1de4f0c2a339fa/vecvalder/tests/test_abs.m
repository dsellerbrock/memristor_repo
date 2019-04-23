function [ok, funcname] = test_abs(n)

	if nargin < 1
		n = 10;
	end

	funcname = 'abs()';
	func = @abs;
	dfunc = @(oof) sign(oof);
	tol = 1e-13;

	xd = -1 + 2*rand(n,1);

	x = vecvalder(xd, speye(n));

	y = feval(func, x);

	yd = double(y);

	yval = yd(:,1);
	yderivs = diag(yd(:,2:end));

	err = norm(full(yderivs- feval(dfunc, xd)));

	if err < tol
		ok = 1;
		%fprintf(2, 'passed: vecvalder %s on size %d vector\n', funcname, n);
	else
		ok = 0;
		%fprintf(2, 'FAILED: vecvalder: %s on size %d vector\n', funcname);
	end
end
