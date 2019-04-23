function [ok, funcname] = test_vecvalder_sqrt(n, m, tol)
%function [ok, funcname] = test_vecvalder_sqrt(n, m, tol)
%
%run tests on vecvalder/sqrt; compare with handcoded expectations.
%
%Both arguments are optional:
%   n: size of vecvalder vector to test (defaults to 10 if unspecified)
%   m: number of indep vars for derivatives (defaults to n+1 if unspecified)
%   tol: absolute tolerance for error check (defaults to 1e-15 if unspecified)
%
%Return values:
%   ok: 1 if everything passes, 0 otherwise.
%   funcname: always set to 'sqrt()'
%
%This function tests:
%   sqrt(vecvalder_n_by_m)
%
%It uses vecvalder(), val() and jac(), which get tested as well.
%
%Author: JR, 2014/06/18

	if nargin < 1
		n = 10;
	end
	if nargin < 2
		m = n+1;
	end
	if nargin < 3
		tol = 1e-15;
	end

	funcname = 'sqrt()';
    ok = 1;

    % test sqrt(vecvalder_n_by_m)
    oof = rand(n,1); oof2 = rand(n, m);
    u = vecvalder(oof, oof2);
    h = sqrt(u);
    hv = val(h); hJ = jac(h);
    % if h(u) = sqrt(u), dh_dx = 0.5/sqrt(u)*du_dx
    expected_hv = sqrt(oof);
    expected_hJ = 0.5*(1./expected_hv*ones(1,m)).*oof2;
    ok = ok && (max(abs(hv-expected_hv)) <= tol); 
    if ~(1==ok) 
        fprintf(2, 'vv2 sqrt: avg val error = %g', full(max(abs(hv-expected_hv))));
        return; 
    end
    ok = ok && (max(max(abs(hJ-expected_hJ))) <= tol); 
    if ~(1==ok) 
        fprintf(2, 'vv2 sqrt: avg jac error = %g', ...
                                    full(max(max(abs(hJ-expected_hJ)))) );
        return; 
    end
end
